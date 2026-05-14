PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Section"]
        2 GETTABLEKS                       R1 R1 K1 ["subcategory"]
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["OnClickSeeAllSubcategories"]
        8 GETTABLEKS                       R3 R1 K3 ["children"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["CategoryName"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["SortName"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K6 ["OnClickSeeAllAssets"]
       21 GETTABLEKS                       R3 R0 K0 ["Section"]
       23 GETTABLEKS                       R3 R3 K7 ["name"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K4 ["CategoryName"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K5 ["SortName"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClickSubcategory"]
        3 GETTABLEKS                       R2 R0 K1 ["name"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["CategoryName"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["SortName"]
       12 GETTABLEKS                       R6 R0 K4 ["queryParams"]
       14 CALL                             R1 5 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["FREE_AUDIO"]
       12 GETTABLEKS                       R4 R1 K3 ["InitialPageSize"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R5 0 4
       22 GETTABLEKS                       R6 R1 K5 ["OnClickSeeAllSubcategories"]
       24 GETTABLEKS                       R7 R1 K6 ["OnClickSeeAllAssets"]
       26 GETTABLEKS                       R8 R1 K7 ["CategoryName"]
       28 GETTABLEKS                       R9 R1 K8 ["SortName"]
       30 SETLIST                          R5 R6 4 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R6 0 2
       40 GETTABLEKS                       R7 R1 K7 ["CategoryName"]
       42 GETTABLEKS                       R8 R1 K8 ["SortName"]
       44 SETLIST                          R6 R7 2 [1]
       46 CALL                             R4 2 1
       47 JUMPIFNOT                        R2 ; [+44]
       48 LENGTH                           R5 R2
       49 LOADN                            R6 0
       50 JUMPIFNOTLT                      R6 R5 ; [+41]
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R5 R5 K9 ["createElement"]
       55 GETUPVAL                         R6 5
       56 DUPTABLE                         R7 K15 [{"Sections", "PageSize", "OnSeeAllActivated", "OnSwimlaneTileActivated", "AssetLogicWrapperProps"}]
       57 SETTABLEKS                       R2 R7 K10 ["Sections"]
       59 GETTABLEKS                       R8 R1 K3 ["InitialPageSize"]
       61 SETTABLEKS                       R8 R7 K11 ["PageSize"]
       63 SETTABLEKS                       R3 R7 K12 ["OnSeeAllActivated"]
       65 SETTABLEKS                       R4 R7 K13 ["OnSwimlaneTileActivated"]
       67 DUPTABLE                         R8 K21 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
       68 GETTABLEKS                       R9 R1 K16 ["CanInsertAsset"]
       70 SETTABLEKS                       R9 R8 K16 ["CanInsertAsset"]
       72 GETTABLEKS                       R9 R1 K17 ["LogAssetImpression"]
       74 SETTABLEKS                       R9 R8 K17 ["LogAssetImpression"]
       76 GETTABLEKS                       R9 R1 K18 ["OnAssetPreviewButtonClicked"]
       78 SETTABLEKS                       R9 R8 K18 ["OnAssetPreviewButtonClicked"]
       80 GETTABLEKS                       R9 R1 K19 ["TryInsert"]
       82 SETTABLEKS                       R9 R8 K19 ["TryInsert"]
       84 GETTABLEKS                       R9 R1 K20 ["TryOpenAssetConfig"]
       86 SETTABLEKS                       R9 R8 K20 ["TryOpenAssetConfig"]
       88 SETTABLEKS                       R8 R7 K14 ["AssetLogicWrapperProps"]
       90 CALL                             R5 2 -1
       91 RETURN                           R5 -1
       92 LOADNIL                          R5
       93 RETURN                           R5 1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Audio"]
       36 GETTABLEKS                       R5 R5 K13 ["AudioView"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Types"]
       45 GETTABLEKS                       R6 R6 K15 ["Category"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Hooks"]
       54 GETTABLEKS                       R7 R7 K17 ["useCategorySections"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K14 ["Types"]
       63 GETTABLEKS                       R8 R8 K18 ["HomeTypes"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R9 K14 ["Types"]
       72 GETTABLEKS                       R9 R9 K19 ["AudioTypes"]
       74 CALL                             R8 1 1
       75 DUPTABLE                         R9 K21 [{"InitialPageSize"}]
       76 LOADN                            R10 10
       77 SETTABLEKS                       R10 R9 K20 ["InitialPageSize"]
       79 DUPCLOSURE                       R10 K22 [PROTO_2]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R4
       86 RETURN                           R10 1
