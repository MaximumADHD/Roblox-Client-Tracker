PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+27]
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETUPVAL                         R7 0
        9 CALL                             R7 0 1
       10 JUMPIFNOT                        R7 ; [+12]
       11 GETTABLEKS                       R9 R6 K2 ["id"]
       13 JUMPIF                           R9 ; [+2]
       14 GETTABLEKS                       R9 R6 K3 ["assetId"]
       16 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       18 MOVE                             R8 R1
       19 GETIMPORT                        R7 K6 [table.insert]
       21 CALL                             R7 2 0
       22 JUMP                             ; [+5]
       23 LENGTH                           R8 R1
       24 ADDK                             R7 R8 K7 [1]
       25 GETTABLEKS                       R8 R6 K2 ["id"]
       27 SETTABLE                         R8 R1 R7
       28 FORGLOOP                         R2 2 ; [-21]
       30 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+15]
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 LENGTH                           R8 R1
        9 ADDK                             R7 R8 K2 [1]
       10 GETTABLEKS                       R8 R6 K3 ["id"]
       12 JUMPIF                           R8 ; [+2]
       13 GETTABLEKS                       R8 R6 K4 ["assetId"]
       15 SETTABLE                         R8 R1 R7
       16 FORGLOOP                         R2 2 ; [-9]
       18 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+17]
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 LOADNIL                          R7
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K2 ["fromItemDetailsRequest"]
       12 MOVE                             R9 R6
       13 CALL                             R8 1 1
       14 MOVE                             R7 R8
       15 LENGTH                           R9 R1
       16 ADDK                             R8 R9 K3 [1]
       17 SETTABLE                         R7 R1 R8
       18 FORGLOOP                         R2 2 ; [-11]
       20 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R4 0 0
        2 JUMPIFNOT                        R0 ; [+20]
        3 GETIMPORT                        R5 K1 [pairs]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 3
        7 FORGPREP_NEXT                    R5
        8 LOADNIL                          R10
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R11 R12 K2 ["fromCreationsDetails"]
       12 MOVE                             R12 R9
       13 MOVE                             R13 R1
       14 MOVE                             R14 R2
       15 MOVE                             R15 R3
       16 CALL                             R11 4 1
       17 MOVE                             R10 R11
       18 LENGTH                           R12 R4
       19 ADDK                             R11 R12 K3 [1]
       20 SETTABLE                         R10 R4 R11
       21 FORGLOOP                         R5 2 ; [-14]
       23 RETURN                           R4 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+22]
        1 LENGTH                           R1 R0
        2 LOADN                            R2 0
        3 JUMPIFNOTLT                      R2 R1 ; [+19]
        5 GETTABLEN                        R1 R0 1
        6 GETTABLEKS                       R3 R1 K0 ["Creator"]
        8 GETTABLEKS                       R2 R3 K1 ["Id"]
       10 GETTABLEKS                       R4 R1 K0 ["Creator"]
       12 GETTABLEKS                       R3 R4 K2 ["Name"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K3 ["backendToClient"]
       17 GETTABLEKS                       R6 R1 K0 ["Creator"]
       19 GETTABLEKS                       R5 R6 K4 ["Type"]
       21 CALL                             R4 1 -1
       22 RETURN                           R2 -1
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R6 0
        1 DUPTABLE                         R7 K3 [{"Id", "Name", "Type"}]
        2 SETTABLEKS                       R1 R7 K0 ["Id"]
        4 SETTABLEKS                       R2 R7 K1 ["Name"]
        6 SETTABLEKS                       R3 R7 K2 ["Type"]
        8 CALL                             R6 1 -1
        9 NAMECALL                         R4 R0 K4 ["dispatch"]
       11 CALL                             R4 -1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["isPageInfoStale"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R0
        5 CALL                             R4 2 1
        6 JUMPIFNOT                        R4 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 GETUPVAL                         R7 2
       12 MOVE                             R8 R4
       13 LOADNIL                          R9
       14 MOVE                             R10 R3
       15 CALL                             R7 3 -1
       16 NAMECALL                         R5 R0 K1 ["dispatch"]
       18 CALL                             R5 -1 0
       19 GETUPVAL                         R7 3
       20 LOADN                            R8 0
       21 CALL                             R7 1 -1
       22 NAMECALL                         R5 R0 K1 ["dispatch"]
       24 CALL                             R5 -1 0
       25 GETUPVAL                         R7 4
       26 LOADB                            R8 0
       27 CALL                             R7 1 -1
       28 NAMECALL                         R5 R0 K1 ["dispatch"]
       30 CALL                             R5 -1 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["isPageInfoStale"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R0
        5 CALL                             R6 2 1
        6 JUMPIFNOT                        R6 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K1 ["getEngineAssetTypeForPageInfoCategory"]
       11 MOVE                             R7 R1
       12 CALL                             R6 1 1
       13 GETUPVAL                         R7 1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R6
       16 MOVE                             R10 R3
       17 MOVE                             R11 R5
       18 CALL                             R7 4 1
       19 GETUPVAL                         R10 2
       20 MOVE                             R11 R7
       21 LOADNIL                          R12
       22 MOVE                             R13 R4
       23 CALL                             R10 3 -1
       24 NAMECALL                         R8 R0 K2 ["dispatch"]
       26 CALL                             R8 -1 0
       27 GETUPVAL                         R10 3
       28 LOADN                            R11 0
       29 CALL                             R10 1 -1
       30 NAMECALL                         R8 R0 K2 ["dispatch"]
       32 CALL                             R8 -1 0
       33 GETUPVAL                         R10 4
       34 LOADB                            R11 0
       35 CALL                             R10 1 -1
       36 NAMECALL                         R8 R0 K2 ["dispatch"]
       38 CALL                             R8 -1 0
       39 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["shouldDebugWarnings"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+5]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETIMPORT                        R3 K2 [warn]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 0
       10 GETUPVAL                         R5 1
       11 NEWTABLE                         R6 0 0
       13 LOADNIL                          R7
       14 MOVE                             R8 R2
       15 CALL                             R5 3 -1
       16 NAMECALL                         R3 R0 K3 ["dispatch"]
       18 CALL                             R3 -1 0
       19 GETUPVAL                         R5 2
       20 LOADB                            R6 0
       21 CALL                             R5 1 -1
       22 NAMECALL                         R3 R0 K3 ["dispatch"]
       24 CALL                             R3 -1 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isPageInfoStale"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R0
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K1 ["dispatch"]
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R3 4
       17 LOADB                            R4 0
       18 CALL                             R3 1 -1
       19 NAMECALL                         R1 R1 K1 ["dispatch"]
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K1 ["getState"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R2 R3 K2 ["pageInfo"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["categoryName"]
       11 GETTABLEKS                       R4 R2 K3 ["categoryName"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K4 ["isPageInfoStale"]
       16 GETUPVAL                         R7 1
       17 GETUPVAL                         R8 0
       18 CALL                             R6 2 1
       19 NOT                              R5 R6
       20 JUMPIFNOT                        R5 ; [+73]
       21 JUMPIFNOT                        R1 ; [+65]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R10 R1 K5 ["Results"]
       25 JUMPIFNOT                        R10 ; [+23]
       26 LENGTH                           R11 R10
       27 LOADN                            R12 0
       28 JUMPIFNOTLT                      R12 R11 ; [+20]
       30 GETTABLEN                        R11 R10 1
       31 GETTABLEKS                       R12 R11 K6 ["Creator"]
       33 GETTABLEKS                       R7 R12 K7 ["Id"]
       35 GETTABLEKS                       R12 R11 K6 ["Creator"]
       37 GETTABLEKS                       R8 R12 K8 ["Name"]
       39 GETUPVAL                         R13 3
       40 GETTABLEKS                       R12 R13 K9 ["backendToClient"]
       42 GETTABLEKS                       R14 R11 K6 ["Creator"]
       44 GETTABLEKS                       R13 R14 K10 ["Type"]
       46 CALL                             R12 1 1
       47 MOVE                             R9 R12
       48 JUMP                             ; [+3]
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 LOADNIL                          R9
       52 GETUPVAL                         R12 4
       53 DUPTABLE                         R13 K11 [{"Id", "Name", "Type"}]
       54 SETTABLEKS                       R7 R13 K7 ["Id"]
       56 SETTABLEKS                       R8 R13 K8 ["Name"]
       58 SETTABLEKS                       R9 R13 K10 ["Type"]
       60 CALL                             R12 1 -1
       61 NAMECALL                         R10 R6 K12 ["dispatch"]
       63 CALL                             R10 -1 0
       64 GETTABLEKS                       R6 R1 K5 ["Results"]
       66 JUMPIF                           R6 ; [+2]
       67 NEWTABLE                         R6 0 0
       69 GETUPVAL                         R7 0
       70 GETUPVAL                         R9 5
       71 MOVE                             R10 R6
       72 GETTABLEKS                       R11 R1 K13 ["TotalResults"]
       74 CALL                             R9 2 -1
       75 NAMECALL                         R7 R7 K12 ["dispatch"]
       77 CALL                             R7 -1 0
       78 GETUPVAL                         R7 0
       79 GETUPVAL                         R9 6
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R10 R11 K14 ["targetPage"]
       83 CALL                             R9 1 -1
       84 NAMECALL                         R7 R7 K12 ["dispatch"]
       86 CALL                             R7 -1 0
       87 GETUPVAL                         R6 0
       88 GETUPVAL                         R8 7
       89 LOADB                            R9 0
       90 CALL                             R8 1 -1
       91 NAMECALL                         R6 R6 K12 ["dispatch"]
       93 CALL                             R6 -1 0
       94 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        6 GETTABLEKS                       R2 R3 K1 ["data"]
        8 CALL                             R1 1 1
        9 MOVE                             R2 R0
       10 RETURN                           R1 2

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["getAssetGroupCreations"]
        5 CALL                             R1 3 1
        6 DUPCLOSURE                       R3 K1 [PROTO_11]
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K2 ["andThen"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        6 GETTABLEKS                       R2 R3 K1 ["data"]
        8 CALL                             R1 1 1
        9 MOVE                             R2 R0
       10 RETURN                           R1 2

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["getAssetCreations"]
        5 CALL                             R1 3 1
        6 DUPCLOSURE                       R3 K1 [PROTO_13]
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K2 ["andThen"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R2 K1 ["data"]
        4 JUMPIFNOT                        R1 ; [+11]
        5 LENGTH                           R2 R1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+8]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R1
       13 GETUPVAL                         R6 3
       14 CALL                             R2 4 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 4
       17 GETUPVAL                         R3 1
       18 LOADK                            R4 K2 ["getItemDetailsAssetIds() did not return any asset details"]
       19 GETUPVAL                         R5 3
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNameFromResult"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R7 4
       10 DUPTABLE                         R8 K4 [{"Id", "Name", "Type"}]
       11 SETTABLEKS                       R3 R8 K1 ["Id"]
       13 SETTABLEKS                       R1 R8 K2 ["Name"]
       15 SETTABLEKS                       R4 R8 K3 ["Type"]
       17 CALL                             R7 1 -1
       18 NAMECALL                         R5 R2 K5 ["dispatch"]
       20 CALL                             R5 -1 0
       21 GETUPVAL                         R2 5
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R4 6
       24 GETUPVAL                         R5 7
       25 MOVE                             R6 R1
       26 GETUPVAL                         R7 8
       27 GETUPVAL                         R8 1
       28 CALL                             R2 6 0
       29 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+64]
        3 LENGTH                           R2 R1
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+61]
        7 LOADB                            R2 0
        8 GETTABLEN                        R4 R1 1
        9 GETTABLEKS                       R3 R4 K1 ["creatorTargetId"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["getCreatorTypeValueFromName"]
       14 GETTABLEN                        R6 R1 1
       15 GETTABLEKS                       R5 R6 K3 ["creatorType"]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K4 ["isCached"]
       21 GETUPVAL                         R6 1
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 CALL                             R5 3 1
       25 NOT                              R2 R5
       26 JUMPIFNOT                        R2 ; [+20]
       27 GETUPVAL                         R5 2
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R5 K5 ["getCreatorInfo"]
       32 CALL                             R5 3 1
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U6
       43 GETUPVAL                         R8 7
       44 NAMECALL                         R5 R5 K6 ["andThen"]
       46 CALL                             R5 3 0
       47 JUMPIF                           R2 ; [+24]
       48 GETUPVAL                         R8 1
       49 NAMECALL                         R8 R8 K7 ["getState"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R7 R8 K8 ["assets"]
       54 GETTABLEKS                       R6 R7 K9 ["cachedCreatorInfo"]
       56 GETTABLEKS                       R5 R6 K10 ["Name"]
       58 GETUPVAL                         R6 4
       59 GETUPVAL                         R7 1
       60 GETUPVAL                         R8 5
       61 MOVE                             R9 R1
       62 MOVE                             R10 R5
       63 GETUPVAL                         R11 6
       64 MOVE                             R12 R4
       65 CALL                             R6 6 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R2 8
       68 GETUPVAL                         R3 1
       69 LOADK                            R4 K11 ["getAssetCreationDetails() did not return any asset details"]
       70 GETUPVAL                         R5 6
       71 CALL                             R2 3 0
       72 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createCursor"]
        3 GETTABLEKS                       R3 R1 K1 ["responseBody"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R0 ; [+42]
        7 LENGTH                           R3 R0
        8 LOADN                            R4 0
        9 JUMPIFNOTLT                      R4 R3 ; [+39]
       11 GETUPVAL                         R3 1
       12 JUMPIFNOT                        R3 ; [+16]
       13 GETUPVAL                         R3 2
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K2 ["getItemDetailsAssetIds"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U6
       24 GETUPVAL                         R6 7
       25 NAMECALL                         R3 R3 K3 ["andThen"]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 2
       30 MOVE                             R5 R0
       31 NAMECALL                         R3 R3 K4 ["getAssetCreationDetails"]
       33 CALL                             R3 2 1
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          UPVAL U10
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U6
       44 GETUPVAL                         R6 7
       45 NAMECALL                         R3 R3 K3 ["andThen"]
       47 CALL                             R3 3 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R3 6
       50 GETUPVAL                         R4 4
       51 LOADNIL                          R5
       52 MOVE                             R6 R2
       53 CALL                             R3 3 0
       54 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNameFromResult"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R7 4
       10 DUPTABLE                         R8 K4 [{"Id", "Name", "Type"}]
       11 SETTABLEKS                       R3 R8 K1 ["Id"]
       13 SETTABLEKS                       R1 R8 K2 ["Name"]
       15 SETTABLEKS                       R4 R8 K3 ["Type"]
       17 CALL                             R7 1 -1
       18 NAMECALL                         R5 R2 K5 ["dispatch"]
       20 CALL                             R5 -1 0
       21 GETUPVAL                         R2 5
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R4 6
       24 GETUPVAL                         R5 7
       25 MOVE                             R6 R1
       26 GETUPVAL                         R7 8
       27 GETUPVAL                         R8 1
       28 CALL                             R2 6 0
       29 RETURN                           R0 0

PROTO_20:
        0 JUMPIFNOT                        R0 ; [+264]
        1 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        3 JUMPIFNOT                        R1 ; [+261]
        4 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        6 GETTABLEKS                       R1 R2 K1 ["items"]
        8 JUMPIFNOT                        R1 ; [+256]
        9 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       11 GETTABLEKS                       R2 R3 K1 ["items"]
       13 LENGTH                           R1 R2
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R1 ; [+249]
       17 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       19 GETTABLEKS                       R1 R2 K1 ["items"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K2 ["createCursor"]
       24 DUPTABLE                         R3 K4 [{"nextPageCursor"}]
       25 GETTABLEKS                       R5 R0 K0 ["responseBody"]
       27 GETTABLEKS                       R4 R5 K5 ["nextCursor"]
       29 SETTABLEKS                       R4 R3 K3 ["nextPageCursor"]
       31 CALL                             R2 1 1
       32 LOADB                            R3 0
       33 GETTABLEN                        R7 R1 1
       34 GETTABLEKS                       R6 R7 K6 ["creator"]
       36 GETTABLEKS                       R5 R6 K7 ["KindCase"]
       38 JUMPIFEQKN                       R5 K8 [1] ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 NEWTABLE                         R5 0 0
       44 GETIMPORT                        R6 K10 [pairs]
       46 MOVE                             R7 R1
       47 CALL                             R6 1 3
       48 FORGPREP_NEXT                    R6
       49 GETTABLEKS                       R11 R10 K11 ["id"]
       51 JUMPIFNOT                        R11 ; [+57]
       52 GETTABLEKS                       R11 R10 K12 ["marketplaceItemDetails"]
       54 JUMPIFNOT                        R11 ; [+54]
       55 GETTABLEKS                       R12 R10 K12 ["marketplaceItemDetails"]
       57 GETTABLEKS                       R11 R12 K13 ["assetDetails"]
       59 JUMPIFNOT                        R11 ; [+49]
       60 GETTABLEKS                       R13 R10 K12 ["marketplaceItemDetails"]
       62 GETTABLEKS                       R12 R13 K13 ["assetDetails"]
       64 GETTABLEKS                       R11 R12 K14 ["assetType"]
       66 JUMPIFNOT                        R11 ; [+42]
       67 GETTABLEKS                       R11 R10 K15 ["createdTime"]
       69 JUMPIFNOT                        R11 ; [+39]
       70 GETTABLEKS                       R12 R10 K6 ["creator"]
       72 JUMPIFNOT                        R12 ; [+13]
       73 JUMPIFNOT                        R4 ; [+12]
       74 GETTABLEKS                       R13 R10 K6 ["creator"]
       76 GETTABLEKS                       R12 R13 K16 ["User"]
       78 JUMPIFNOT                        R12 ; [+7]
       79 GETTABLEKS                       R14 R10 K6 ["creator"]
       81 GETTABLEKS                       R13 R14 K16 ["User"]
       83 GETTABLEKS                       R12 R13 K17 ["UserId"]
       85 JUMPIF                           R12 ; [+12]
       86 GETTABLEKS                       R12 R10 K6 ["creator"]
       88 GETTABLEKS                       R11 R12 K18 ["Group"]
       90 JUMPIFNOT                        R11 ; [+18]
       91 GETTABLEKS                       R13 R10 K6 ["creator"]
       93 GETTABLEKS                       R12 R13 K18 ["Group"]
       95 GETTABLEKS                       R11 R12 K19 ["GroupId"]
       97 JUMPIFNOT                        R11 ; [+11]
       98 GETTABLEKS                       R11 R10 K20 ["description"]
      100 JUMPIFNOT                        R11 ; [+8]
      101 GETTABLEKS                       R11 R10 K21 ["name"]
      103 JUMPIFNOT                        R11 ; [+5]
      104 GETTABLEKS                       R11 R10 K22 ["moderationStatus"]
      106 JUMPIFNOT                        R11 ; [+2]
      107 GETTABLEKS                       R11 R10 K23 ["saleStatus"]
      109 JUMPIFNOT                        R11 ; [+75]
      110 DUPTABLE                         R14 K30 [{"assetId", "assetType", "created", "creatorTargetId", "creatorType", "description", "name", "status", "updated"}]
      111 GETTABLEKS                       R16 R10 K11 ["id"]
      113 FASTCALL1                        TONUMBER R16 ; [+2]
      114 GETIMPORT                        R15 K32 [tonumber]
      116 CALL                             R15 1 1
      117 SETTABLEKS                       R15 R14 K24 ["assetId"]
      119 GETTABLEKS                       R17 R10 K12 ["marketplaceItemDetails"]
      121 GETTABLEKS                       R16 R17 K13 ["assetDetails"]
      123 GETTABLEKS                       R15 R16 K14 ["assetType"]
      125 SETTABLEKS                       R15 R14 K14 ["assetType"]
      127 GETTABLEKS                       R15 R10 K15 ["createdTime"]
      129 SETTABLEKS                       R15 R14 K25 ["created"]
      131 JUMPIFNOT                        R4 ; [+7]
      132 GETTABLEKS                       R17 R10 K6 ["creator"]
      134 GETTABLEKS                       R16 R17 K16 ["User"]
      136 GETTABLEKS                       R15 R16 K17 ["UserId"]
      138 JUMP                             ; [+6]
      139 GETTABLEKS                       R17 R10 K6 ["creator"]
      141 GETTABLEKS                       R16 R17 K18 ["Group"]
      143 GETTABLEKS                       R15 R16 K19 ["GroupId"]
      145 SETTABLEKS                       R15 R14 K26 ["creatorTargetId"]
      147 JUMPIFNOT                        R4 ; [+2]
      148 LOADK                            R15 K16 ["User"]
      149 JUMP                             ; [+1]
      150 LOADK                            R15 K18 ["Group"]
      151 SETTABLEKS                       R15 R14 K27 ["creatorType"]
      153 GETTABLEKS                       R15 R10 K20 ["description"]
      155 SETTABLEKS                       R15 R14 K20 ["description"]
      157 GETTABLEKS                       R15 R10 K21 ["name"]
      159 SETTABLEKS                       R15 R14 K21 ["name"]
      161 GETUPVAL                         R16 1
      162 GETTABLEKS                       R15 R16 K33 ["getStatus"]
      164 GETTABLEKS                       R16 R10 K22 ["moderationStatus"]
      166 GETTABLEKS                       R17 R10 K23 ["saleStatus"]
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K28 ["status"]
      171 GETTABLEKS                       R15 R10 K34 ["updatedTime"]
      173 JUMPIF                           R15 ; [+2]
      174 GETTABLEKS                       R15 R10 K15 ["createdTime"]
      176 SETTABLEKS                       R15 R14 K29 ["updated"]
      178 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      180 MOVE                             R13 R5
      181 GETIMPORT                        R12 K37 [table.insert]
      183 CALL                             R12 2 0
      184 JUMP                             ; [+5]
      185 GETIMPORT                        R12 K39 [warn]
      187 LOADK                            R13 K40 ["Item does not have all required fields"]
      188 MOVE                             R14 R10
      189 CALL                             R12 2 0
      190 FORGLOOP                         R6 2 ; [-142]
      192 JUMPIFNOT                        R4 ; [+8]
      193 GETTABLEN                        R9 R1 1
      194 GETTABLEKS                       R8 R9 K6 ["creator"]
      196 GETTABLEKS                       R7 R8 K16 ["User"]
      198 GETTABLEKS                       R6 R7 K17 ["UserId"]
      200 JUMPIF                           R6 ; [+7]
      201 GETTABLEN                        R9 R1 1
      202 GETTABLEKS                       R8 R9 K6 ["creator"]
      204 GETTABLEKS                       R7 R8 K18 ["Group"]
      206 GETTABLEKS                       R6 R7 K19 ["GroupId"]
      208 GETUPVAL                         R8 2
      209 GETTABLEKS                       R7 R8 K41 ["getCreatorTypeValueFromName"]
      211 JUMPIFNOT                        R4 ; [+2]
      212 LOADK                            R8 K16 ["User"]
      213 JUMP                             ; [+1]
      214 LOADK                            R8 K18 ["Group"]
      215 CALL                             R7 1 1
      216 GETUPVAL                         R9 2
      217 GETTABLEKS                       R8 R9 K42 ["isCached"]
      219 GETUPVAL                         R9 3
      220 MOVE                             R10 R6
      221 MOVE                             R11 R7
      222 CALL                             R8 3 1
      223 NOT                              R3 R8
      224 JUMPIFNOT                        R3 ; [+21]
      225 GETUPVAL                         R8 4
      226 MOVE                             R10 R6
      227 MOVE                             R11 R7
      228 NAMECALL                         R8 R8 K43 ["getCreatorInfo"]
      230 CALL                             R8 3 1
      231 NEWCLOSURE                       R10 P0
      232 CAPTURE                          UPVAL U2
      233 CAPTURE                          VAL R7
      234 CAPTURE                          UPVAL U3
      235 CAPTURE                          VAL R6
      236 CAPTURE                          UPVAL U5
      237 CAPTURE                          UPVAL U6
      238 CAPTURE                          UPVAL U7
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R2
      241 GETUPVAL                         R11 8
      242 NAMECALL                         R8 R8 K44 ["andThen"]
      244 CALL                             R8 3 0
      245 RETURN                           R0 0
      246 GETUPVAL                         R11 3
      247 NAMECALL                         R11 R11 K45 ["getState"]
      249 CALL                             R11 1 1
      250 GETTABLEKS                       R10 R11 K46 ["assets"]
      252 GETTABLEKS                       R9 R10 K47 ["cachedCreatorInfo"]
      254 GETTABLEKS                       R8 R9 K48 ["Name"]
      256 GETUPVAL                         R9 6
      257 GETUPVAL                         R10 3
      258 GETUPVAL                         R11 7
      259 MOVE                             R12 R5
      260 MOVE                             R13 R8
      261 MOVE                             R14 R2
      262 MOVE                             R15 R7
      263 CALL                             R9 6 0
      264 RETURN                           R0 0
      265 GETUPVAL                         R1 9
      266 GETUPVAL                         R2 3
      267 LOADK                            R3 K49 ["getItemsByCreator() did not return any asset details"]
      268 CALL                             R1 2 0
      269 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["creator"]
        9 JUMPIFNOT                        R1 ; [+9]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["creator"]
       13 GETTABLEKS                       R2 R3 K2 ["Id"]
       15 JUMPIFEQKN                       R2 K3 [-1] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K4 ["getTabForCategoryName"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["categoryName"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K6 ["CREATIONS"]
       29 JUMPIFEQ                         R3 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R3 R4 K7 ["categoryIsGroupAsset"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R4 R5 K5 ["categoryName"]
       39 CALL                             R3 1 1
       40 JUMPIFNOT                        R3 ; [+11]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K8 ["categoryIsAvatarAssetByCategoryName"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R5 R6 K5 ["categoryName"]
       47 CALL                             R4 1 1
       48 NOT                              R3 R4
       49 JUMPIF                           R3 ; [+2]
       50 GETUPVAL                         R3 3
       51 CALL                             R3 0 1
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U0
       58 NEWCLOSURE                       R5 P1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          UPVAL U0
       67 NEWCLOSURE                       R6 P2
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U11
       71 NEWCLOSURE                       R7 P3
       72 CAPTURE                          UPVAL U10
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U12
       75 JUMPIFNOT                        R1 ; [+30]
       76 DUPTABLE                         R8 K11 [{"Results", "TotalResults"}]
       77 NEWTABLE                         R9 0 0
       79 SETTABLEKS                       R9 R8 K9 ["Results"]
       81 LOADN                            R9 0
       82 SETTABLEKS                       R9 R8 K10 ["TotalResults"]
       84 GETUPVAL                         R11 8
       85 GETTABLEKS                       R12 R8 K9 ["Results"]
       87 GETTABLEKS                       R13 R8 K10 ["TotalResults"]
       89 CALL                             R11 2 -1
       90 NAMECALL                         R9 R0 K0 ["dispatch"]
       92 CALL                             R9 -1 0
       93 GETUPVAL                         R11 9
       94 LOADN                            R12 0
       95 CALL                             R11 1 -1
       96 NAMECALL                         R9 R0 K0 ["dispatch"]
       98 CALL                             R9 -1 0
       99 GETUPVAL                         R11 0
      100 LOADB                            R12 0
      101 CALL                             R11 1 -1
      102 NAMECALL                         R9 R0 K0 ["dispatch"]
      104 CALL                             R9 -1 0
      105 RETURN                           R0 0
      106 JUMPIFNOT                        R2 ; [+150]
      107 NAMECALL                         R10 R0 K12 ["getState"]
      109 CALL                             R10 1 1
      110 GETTABLEKS                       R9 R10 K13 ["assets"]
      112 GETTABLEKS                       R8 R9 K14 ["currentCursor"]
      114 GETUPVAL                         R10 13
      115 GETTABLEKS                       R9 R10 K15 ["isNextPageAvailable"]
      117 MOVE                             R10 R8
      118 CALL                             R9 1 1
      119 JUMPIFNOT                        R9 ; [+191]
      120 JUMPIFNOT                        R3 ; [+2]
      121 MOVE                             R9 R6
      122 JUMP                             ; [+1]
      123 MOVE                             R9 R7
      124 GETUPVAL                         R12 2
      125 GETTABLEKS                       R11 R12 K16 ["getCategoryByName"]
      127 GETUPVAL                         R13 1
      128 GETTABLEKS                       R12 R13 K5 ["categoryName"]
      130 CALL                             R11 1 1
      131 JUMPIFNOT                        R11 ; [+10]
      132 GETUPVAL                         R12 2
      133 GETTABLEKS                       R11 R12 K16 ["getCategoryByName"]
      135 GETUPVAL                         R13 1
      136 GETTABLEKS                       R12 R13 K5 ["categoryName"]
      138 CALL                             R11 1 1
      139 GETTABLEKS                       R10 R11 K17 ["assetType"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R10
      143 LOADB                            R11 0
      144 GETUPVAL                         R12 14
      145 CALL                             R12 0 1
      146 JUMPIFNOT                        R12 ; [+9]
      147 GETUPVAL                         R14 2
      148 GETTABLEKS                       R13 R14 K18 ["ToolboxMarketplaceAssetTypes"]
      150 GETTABLE                         R12 R13 R10
      151 JUMPIFNOTEQKNIL                  R12 ; [+2]
      153 LOADB                            R11 0 +1
      154 LOADB                            R11 1
      155 JUMP                             ; [+17]
      156 LOADB                            R12 0
      157 GETUPVAL                         R15 2
      158 GETTABLEKS                       R14 R15 K19 ["AssetType"]
      160 GETTABLEKS                       R13 R14 K20 ["ANIMATION"]
      162 JUMPIFEQ                         R10 R13 ; [+9]
      164 GETUPVAL                         R15 2
      165 GETTABLEKS                       R14 R15 K18 ["ToolboxMarketplaceAssetTypes"]
      167 GETTABLE                         R13 R14 R10
      168 JUMPIFNOTEQKNIL                  R13 ; [+2]
      170 LOADB                            R12 0 +1
      171 LOADB                            R12 1
      172 MOVE                             R11 R12
      173 JUMPIF                           R11 ; [+3]
      174 GETUPVAL                         R12 15
      175 CALL                             R12 0 1
      176 JUMPIF                           R12 ; [+25]
      177 MOVE                             R12 R9
      178 GETUPVAL                         R14 13
      179 GETTABLEKS                       R13 R14 K21 ["getNextPageCursor"]
      181 MOVE                             R14 R8
      182 CALL                             R13 1 -1
      183 CALL                             R12 -1 1
      184 NEWCLOSURE                       R14 P4
      185 CAPTURE                          UPVAL U13
      186 CAPTURE                          REF R11
      187 CAPTURE                          UPVAL U10
      188 CAPTURE                          UPVAL U16
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U1
      191 CAPTURE                          UPVAL U17
      192 CAPTURE                          VAL R4
      193 CAPTURE                          UPVAL U6
      194 CAPTURE                          UPVAL U7
      195 CAPTURE                          UPVAL U18
      196 MOVE                             R15 R4
      197 NAMECALL                         R12 R12 K22 ["andThen"]
      199 CALL                             R12 3 -1
      200 CLOSEUPVALS                      R11
      201 RETURN                           R12 -1
      202 GETUPVAL                         R13 4
      203 GETTABLEKS                       R12 R13 K23 ["getEngineAssetTypeForPageInfoCategory"]
      205 GETUPVAL                         R13 1
      206 CALL                             R12 1 1
      207 JUMPIFNOTEQKNIL                  R12 ; [+7]
      209 GETIMPORT                        R13 K25 [warn]
      211 LOADK                            R14 K26 ["Failed to get asset type for page info category"]
      212 CALL                             R13 1 -1
      213 CLOSEUPVALS                      R11
      214 RETURN                           R13 -1
      215 GETUPVAL                         R13 10
      216 LOADNIL                          R15
      217 GETTABLEKS                       R16 R12 K27 ["Value"]
      219 GETUPVAL                         R18 13
      220 GETTABLEKS                       R17 R18 K21 ["getNextPageCursor"]
      222 MOVE                             R18 R8
      223 CALL                             R17 1 1
      224 GETUPVAL                         R19 19
      225 GETTABLEKS                       R18 R19 K28 ["GET_ITEMS_BY_CREATOR_PAGE_SIZE_LIMIT"]
      227 JUMPIFNOT                        R3 ; [+6]
      228 GETUPVAL                         R20 4
      229 GETTABLEKS                       R19 R20 K29 ["getGroupIdForPageInfo"]
      231 GETUPVAL                         R20 1
      232 CALL                             R19 1 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R19
      235 NAMECALL                         R13 R13 K30 ["getItemsByCreator"]
      237 CALL                             R13 6 1
      238 NEWCLOSURE                       R15 P5
      239 CAPTURE                          UPVAL U13
      240 CAPTURE                          UPVAL U20
      241 CAPTURE                          UPVAL U6
      242 CAPTURE                          VAL R0
      243 CAPTURE                          UPVAL U10
      244 CAPTURE                          UPVAL U7
      245 CAPTURE                          UPVAL U18
      246 CAPTURE                          UPVAL U1
      247 CAPTURE                          VAL R4
      248 CAPTURE                          UPVAL U17
      249 MOVE                             R16 R4
      250 NAMECALL                         R13 R13 K22 ["andThen"]
      252 CALL                             R13 3 -1
      253 CLOSEUPVALS                      R11
      254 RETURN                           R13 -1
      255 CLOSEUPVALS                      R11
      256 RETURN                           R0 0
      257 LOADB                            R8 0
      258 GETUPVAL                         R10 2
      259 GETTABLEKS                       R9 R10 K31 ["categoryIsAudio"]
      261 GETUPVAL                         R11 1
      262 GETTABLEKS                       R10 R11 K5 ["categoryName"]
      264 CALL                             R9 1 1
      265 GETUPVAL                         R11 2
      266 GETTABLEKS                       R10 R11 K32 ["categoryIsVideo"]
      268 GETUPVAL                         R12 1
      269 GETTABLEKS                       R11 R12 K5 ["categoryName"]
      271 CALL                             R10 1 1
      272 GETUPVAL                         R12 4
      273 GETTABLEKS                       R11 R12 K33 ["isDeveloperCategory"]
      275 GETUPVAL                         R12 1
      276 CALL                             R11 1 1
      277 JUMPIF                           R11 ; [+9]
      278 GETUPVAL                         R12 4
      279 GETTABLEKS                       R11 R12 K34 ["isPackagesCategory"]
      281 GETUPVAL                         R12 1
      282 CALL                             R11 1 1
      283 JUMPIF                           R11 ; [+3]
      284 JUMPIF                           R9 ; [+2]
      285 JUMPIF                           R10 ; [+1]
      286 JUMP                             ; [+1]
      287 LOADB                            R8 1
      288 JUMPIFNOT                        R8 ; [+11]
      289 GETUPVAL                         R11 10
      290 GETUPVAL                         R13 1
      291 NAMECALL                         R11 R11 K35 ["getDevelopAsset"]
      293 CALL                             R11 2 1
      294 MOVE                             R13 R5
      295 MOVE                             R14 R4
      296 NAMECALL                         R11 R11 K22 ["andThen"]
      298 CALL                             R11 3 -1
      299 RETURN                           R11 -1
      300 GETUPVAL                         R11 10
      301 GETUPVAL                         R13 1
      302 NAMECALL                         R11 R11 K36 ["getAssets"]
      304 CALL                             R11 2 1
      305 MOVE                             R13 R5
      306 MOVE                             R14 R4
      307 NAMECALL                         R11 R11 K22 ["andThen"]
      309 CALL                             R11 3 -1
      310 RETURN                           R11 -1
      311 RETURN                           R0 0

PROTO_22:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          UPVAL U18
       22 RETURN                           R2 1

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
       17 GETTABLEKS                       R3 R1 K7 ["GetAssets"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["NetworkError"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K9 ["SetLoading"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K10 ["SetCachedCreatorInfo"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K11 ["SetCurrentPage"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K3 ["Src"]
       44 GETTABLEKS                       R9 R10 K12 ["Types"]
       46 GETTABLEKS                       R8 R9 K13 ["Category"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R9 R0 K3 ["Src"]
       51 GETTABLEKS                       R8 R9 K14 ["Util"]
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R8 K15 ["CreatorInfoHelper"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R8 K16 ["PageInfoHelper"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R8 K17 ["PagedRequestCursor"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R8 K18 ["DebugFlags"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R8 K19 ["Constants"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R8 K20 ["AssetUtil"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R18 R0 K3 ["Src"]
       87 GETTABLEKS                       R17 R18 K21 ["Models"]
       89 GETTABLEKS                       R16 R17 K22 ["AssetInfo"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R20 R0 K3 ["Src"]
       96 GETTABLEKS                       R19 R20 K14 ["Util"]
       98 GETTABLEKS                       R18 R19 K23 ["SharedFlags"]
      100 GETTABLEKS                       R17 R18 K24 ["getFFlagToolboxFixGroupCreatedAvatarAssetRequest"]
      102 CALL                             R16 1 1
      103 GETIMPORT                        R17 K6 [require]
      105 GETTABLEKS                       R21 R0 K3 ["Src"]
      107 GETTABLEKS                       R20 R21 K14 ["Util"]
      109 GETTABLEKS                       R19 R20 K23 ["SharedFlags"]
      111 GETTABLEKS                       R18 R19 K24 ["getFFlagToolboxFixGroupCreatedAvatarAssetRequest"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R21 R0 K3 ["Src"]
      118 GETTABLEKS                       R20 R21 K25 ["Flags"]
      120 GETTABLEKS                       R19 R20 K26 ["getFFlagRemoveGetAssetDetails"]
      122 CALL                             R18 1 1
      123 DUPCLOSURE                       R19 K27 [PROTO_0]
      124 CAPTURE                          VAL R16
      125 DUPCLOSURE                       R20 K28 [PROTO_1]
      126 DUPCLOSURE                       R21 K29 [PROTO_2]
      127 CAPTURE                          VAL R15
      128 DUPCLOSURE                       R22 K30 [PROTO_3]
      129 CAPTURE                          VAL R15
      130 DUPCLOSURE                       R23 K31 [PROTO_4]
      131 CAPTURE                          VAL R9
      132 DUPCLOSURE                       R24 K32 [PROTO_5]
      133 CAPTURE                          VAL R5
      134 DUPCLOSURE                       R25 K33 [PROTO_6]
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R4
      140 DUPCLOSURE                       R26 K34 [PROTO_7]
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R4
      146 DUPCLOSURE                       R27 K35 [PROTO_8]
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R4
      150 DUPCLOSURE                       R28 K36 [PROTO_22]
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R27
      167 CAPTURE                          VAL R26
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R14
      170 RETURN                           R28 1
