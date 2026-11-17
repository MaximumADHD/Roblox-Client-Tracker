PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["nextPageCursor"]
        4 SETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        7 GETTABLEKS                       R1 R1 K2 ["data"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R6 R5 K3 ["id"]
       14 JUMPIFNOT                        R6 ; [+17]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R7 R5 K3 ["id"]
       18 DUPTABLE                         R8 K5 [{"searchResultSource"}]
       19 GETTABLEKS                       R9 R5 K4 ["searchResultSource"]
       21 SETTABLEKS                       R9 R8 K4 ["searchResultSource"]
       23 SETTABLE                         R8 R6 R7
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R8 R5 K3 ["id"]
       27 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       29 GETIMPORT                        R6 K8 [table.insert]
       31 CALL                             R6 2 0
       32 FORGLOOP                         R1 2 ; [-21]
       34 GETUPVAL                         R1 3
       35 GETUPVAL                         R3 2
       36 NAMECALL                         R1 R1 K9 ["getItemDetailsAssetIds"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["data"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K2 ["fromItemDetailsRequest"]
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 GETTABLEKS                       R7 R5 K3 ["Asset"]
       14 JUMPIFNOT                        R7 ; [+17]
       15 GETTABLEKS                       R7 R5 K3 ["Asset"]
       17 GETTABLEKS                       R7 R7 K4 ["id"]
       19 JUMPIFNOT                        R7 ; [+12]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K5 ["AddContextToItemDetails"]
       23 MOVE                             R8 R6
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R11 R5 K3 ["Asset"]
       27 GETTABLEKS                       R11 R11 K4 ["id"]
       29 GETTABLE                         R9 R10 R11
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 GETTABLEKS                       R7 R6 K3 ["Asset"]
       34 JUMPIFNOT                        R7 ; [+6]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R8 R6 K3 ["Asset"]
       38 GETTABLEKS                       R8 R8 K6 ["Id"]
       40 SETTABLE                         R6 R7 R8
       41 FORGLOOP                         R1 2 ; [-35]
       43 DUPTABLE                         R1 K10 [{"assetIds", "assetMap", "nextPageCursor"}]
       44 GETUPVAL                         R2 3
       45 SETTABLEKS                       R2 R1 K7 ["assetIds"]
       47 GETUPVAL                         R2 2
       48 SETTABLEKS                       R2 R1 K8 ["assetMap"]
       50 GETUPVAL                         R2 4
       51 SETTABLEKS                       R2 R1 K9 ["nextPageCursor"]
       53 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R5 0 0
        4 NEWTABLE                         R6 0 0
        6 LOADNIL                          R7
        7 GETUPVAL                         R10 0
        8 GETTABLEKS                       R10 R10 K0 ["Dictionary"]
       10 GETTABLEKS                       R10 R10 K1 ["join"]
       12 DUPTABLE                         R11 K5 [{"categoryName", "sectionName", "ownerId"}]
       13 SETTABLEKS                       R1 R11 K2 ["categoryName"]
       15 SETTABLEKS                       R2 R11 K3 ["sectionName"]
       17 GETUPVAL                         R12 1
       18 CALL                             R12 0 1
       19 SETTABLEKS                       R12 R11 K4 ["ownerId"]
       21 JUMPIFNOT                        R3 ; [+23]
       22 DUPTABLE                         R12 K11 [{"limit", "includeOnlyVerifiedCreators", "cursor", "assetsInCameraVicinity", "assetsInCameraViewport"}]
       23 GETTABLEKS                       R13 R3 K12 ["pageSize"]
       25 SETTABLEKS                       R13 R12 K6 ["limit"]
       27 GETTABLEKS                       R14 R3 K13 ["includeUnverifiedCreators"]
       29 NOT                              R13 R14
       30 SETTABLEKS                       R13 R12 K7 ["includeOnlyVerifiedCreators"]
       32 GETTABLEKS                       R13 R3 K14 ["nextPageCursor"]
       34 SETTABLEKS                       R13 R12 K8 ["cursor"]
       36 GETTABLEKS                       R13 R3 K9 ["assetsInCameraVicinity"]
       38 SETTABLEKS                       R13 R12 K9 ["assetsInCameraVicinity"]
       40 GETTABLEKS                       R13 R3 K10 ["assetsInCameraViewport"]
       42 SETTABLEKS                       R13 R12 K10 ["assetsInCameraViewport"]
       44 JUMP                             ; [+2]
       45 NEWTABLE                         R12 0 0
       47 CALL                             R10 2 -1
       48 NAMECALL                         R8 R0 K15 ["getToolboxItems"]
       50 CALL                             R8 -1 1
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          REF R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R8 R8 K16 ["andThen"]
       58 CALL                             R8 2 1
       59 NEWCLOSURE                       R10 P1
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          REF R7
       65 NAMECALL                         R8 R8 K16 ["andThen"]
       67 CALL                             R8 2 -1
       68 CLOSEUPVALS                      R7
       69 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["LuauPolyfill"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["getUserId"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Models"]
       36 GETTABLEKS                       R5 R5 K13 ["AssetInfo"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_2]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1
