PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["CreatorContextAsset"]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["asset"]
        5 GETTABLEKS                       R2 R2 K2 ["assetId"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onAssetSelected"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["asset"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R0 K3 ["asset"]
       17 GETTABLEKS                       R5 R5 K4 ["assetId"]
       19 SETLIST                          R4 R5 1 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R5 0 2
       29 GETTABLEKS                       R6 R0 K3 ["asset"]
       31 GETTABLEKS                       R7 R0 K6 ["onAssetSelected"]
       33 SETLIST                          R5 R6 2 [1]
       35 CALL                             R3 2 1
       36 GETTABLEKS                       R4 R1 K7 ["layout"]
       38 JUMPIFNOTEQKS                    R4 K8 ["List"] ; [+20]
       40 GETUPVAL                         R4 3
       41 GETUPVAL                         R5 4
       42 DUPTABLE                         R6 K13 [{"displayName", "lastUpdated", "thumbnailUri", "onActivated"}]
       43 GETTABLEKS                       R7 R0 K3 ["asset"]
       45 GETTABLEKS                       R7 R7 K9 ["displayName"]
       47 SETTABLEKS                       R7 R6 K9 ["displayName"]
       49 GETTABLEKS                       R7 R0 K10 ["lastUpdated"]
       51 SETTABLEKS                       R7 R6 K10 ["lastUpdated"]
       53 SETTABLEKS                       R2 R6 K11 ["thumbnailUri"]
       55 SETTABLEKS                       R3 R6 K12 ["onActivated"]
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1
       59 GETUPVAL                         R4 3
       60 GETUPVAL                         R5 5
       61 DUPTABLE                         R6 K13 [{"displayName", "lastUpdated", "thumbnailUri", "onActivated"}]
       62 GETTABLEKS                       R7 R0 K3 ["asset"]
       64 GETTABLEKS                       R7 R7 K9 ["displayName"]
       66 SETTABLEKS                       R7 R6 K9 ["displayName"]
       68 GETTABLEKS                       R7 R0 K10 ["lastUpdated"]
       70 SETTABLEKS                       R7 R6 K10 ["lastUpdated"]
       72 SETTABLEKS                       R2 R6 K11 ["thumbnailUri"]
       74 SETTABLEKS                       R3 R6 K12 ["onActivated"]
       76 CALL                             R4 2 -1
       77 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R4 R4 K8 ["GridItem"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Contexts"]
       26 GETTABLEKS                       R5 R5 K10 ["LayoutContext"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETIMPORT                        R6 K1 [script]
       33 GETTABLEKS                       R6 R6 K11 ["ListItem"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K7 [require]
       38 GETTABLEKS                       R7 R2 K12 ["React"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K7 [require]
       43 GETTABLEKS                       R8 R1 K13 ["Types"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R9 R1 K14 ["Util"]
       50 GETTABLEKS                       R9 R9 K15 ["getAssetThumbnailUri"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R6 K16 ["createElement"]
       55 DUPCLOSURE                       R10 K17 [PROTO_2]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 RETURN                           R10 1
