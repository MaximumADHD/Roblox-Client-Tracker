PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 GETUPVAL                         R5 0
        7 DUPTABLE                         R6 K3 [{"assetIds", "assetIdSet", "objectTypeToAssets"}]
        8 SETTABLEKS                       R2 R6 K0 ["assetIds"]
       10 SETTABLEKS                       R3 R6 K1 ["assetIdSet"]
       12 SETTABLEKS                       R4 R6 K2 ["objectTypeToAssets"]
       14 SETTABLE                         R6 R5 R0
       15 MOVE                             R5 R1
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 GETTABLEKS                       R11 R9 K4 ["assetId"]
       21 GETTABLE                         R10 R3 R11
       22 JUMPIF                           R10 ; [+12]
       23 GETTABLEKS                       R10 R9 K4 ["assetId"]
       25 LOADB                            R11 1
       26 SETTABLE                         R11 R3 R10
       27 GETTABLEKS                       R12 R9 K4 ["assetId"]
       29 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       31 MOVE                             R11 R2
       32 GETIMPORT                        R10 K7 [table.insert]
       34 CALL                             R10 2 0
       35 GETTABLEKS                       R10 R9 K8 ["objectTypes"]
       37 JUMPIFNOT                        R10 ; [+44]
       38 GETTABLEKS                       R10 R9 K8 ["objectTypes"]
       40 LOADNIL                          R11
       41 LOADNIL                          R12
       42 FORGPREP                         R10
       43 NAMECALL                         R15 R14 K9 ["lower"]
       45 CALL                             R15 1 1
       46 GETTABLE                         R16 R4 R15
       47 JUMPIF                           R16 ; [+11]
       48 DUPTABLE                         R17 K10 [{"assetIds", "assetIdSet"}]
       49 NEWTABLE                         R18 0 0
       51 SETTABLEKS                       R18 R17 K0 ["assetIds"]
       53 NEWTABLE                         R18 0 0
       55 SETTABLEKS                       R18 R17 K1 ["assetIdSet"]
       57 MOVE                             R16 R17
       58 SETTABLE                         R16 R4 R15
       59 GETTABLEKS                       R18 R16 K1 ["assetIdSet"]
       61 GETTABLEKS                       R19 R9 K4 ["assetId"]
       63 GETTABLE                         R17 R18 R19
       64 JUMPIF                           R17 ; [+15]
       65 GETTABLEKS                       R17 R16 K1 ["assetIdSet"]
       67 GETTABLEKS                       R18 R9 K4 ["assetId"]
       69 LOADB                            R19 1
       70 SETTABLE                         R19 R17 R18
       71 GETTABLEKS                       R18 R16 K0 ["assetIds"]
       73 GETTABLEKS                       R19 R9 K4 ["assetId"]
       75 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       77 GETIMPORT                        R17 K7 [table.insert]
       79 CALL                             R17 2 0
       80 FORGLOOP                         R10 2 ; [-38]
       82 FORGLOOP                         R5 2 ; [-64]
       84 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R2 0 0
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K2 [table.clone]
        8 GETTABLEKS                       R3 R1 K3 ["assetIds"]
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+3]
        3 NEWTABLE                         R3 0 0
        5 RETURN                           R3 1
        6 NAMECALL                         R3 R1 K0 ["lower"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R5 R2 K1 ["objectTypeToAssets"]
       11 GETTABLE                         R4 R5 R3
       12 JUMPIF                           R4 ; [+3]
       13 NEWTABLE                         R5 0 0
       15 RETURN                           R5 1
       16 GETIMPORT                        R5 K4 [table.clone]
       18 GETTABLEKS                       R6 R4 K5 ["assetIds"]
       20 CALL                             R5 1 -1
       21 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+3]
        3 NEWTABLE                         R3 0 0
        5 RETURN                           R3 1
        6 NEWTABLE                         R3 0 0
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R1
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 NAMECALL                         R10 R9 K0 ["lower"]
       16 CALL                             R10 1 1
       17 GETTABLEKS                       R12 R2 K1 ["objectTypeToAssets"]
       19 GETTABLE                         R11 R12 R10
       20 JUMPIFNOT                        R11 ; [+18]
       21 GETTABLEKS                       R12 R11 K2 ["assetIds"]
       23 LOADNIL                          R13
       24 LOADNIL                          R14
       25 FORGPREP                         R12
       26 GETTABLE                         R17 R4 R16
       27 JUMPIF                           R17 ; [+9]
       28 LOADB                            R17 1
       29 SETTABLE                         R17 R4 R16
       30 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
       32 MOVE                             R18 R3
       33 MOVE                             R19 R16
       34 GETIMPORT                        R17 K5 [table.insert]
       36 CALL                             R17 2 0
       37 FORGLOOP                         R12 2 ; [-12]
       39 FORGLOOP                         R5 2 ; [-26]
       41 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["CreatorStore"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["CreatorStoreTypes"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 0
       16 DUPCLOSURE                       R4 K7 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 SETTABLEKS                       R4 R0 K8 ["setFromAssets"]
       20 DUPCLOSURE                       R4 K9 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R4 R0 K10 ["getAssetIdsForSearchId"]
       24 DUPCLOSURE                       R4 K11 [PROTO_2]
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R0 K12 ["getAssetIdsForObjectType"]
       28 DUPCLOSURE                       R4 K13 [PROTO_3]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R0 K14 ["getAssetIdsForObjectTypes"]
       32 RETURN                           R0 1
