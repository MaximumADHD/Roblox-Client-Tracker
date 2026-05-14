PROTO_0:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 4
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createMockSwimlane"]
        5 LOADK                            R2 K1 ["Categories"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["MOCK_CATEGORIES"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["createMockContextualRecommendations"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["createMockList"]
       17 LOADK                            R4 K5 ["Trending"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["createMockList"]
       22 LOADK                            R5 K6 ["Essentials"]
       23 CALL                             R4 1 -1
       24 SETLIST                          R0 R1 -1 [1]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K7 ["createElement"]
       29 GETUPVAL                         R2 2
       30 NEWTABLE                         R3 0 0
       32 DUPTABLE                         R4 K9 [{"AudioView"}]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K7 ["createElement"]
       36 GETUPVAL                         R6 3
       37 DUPTABLE                         R7 K13 [{"Sections", "PageSize", "AssetLogicWrapperProps"}]
       38 SETTABLEKS                       R0 R7 K10 ["Sections"]
       40 LOADN                            R8 10
       41 SETTABLEKS                       R8 R7 K11 ["PageSize"]
       43 DUPTABLE                         R8 K19 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
       44 DUPCLOSURE                       R9 K20 [PROTO_0]
       45 SETTABLEKS                       R9 R8 K14 ["CanInsertAsset"]
       47 DUPCLOSURE                       R9 K21 [PROTO_1]
       48 SETTABLEKS                       R9 R8 K15 ["LogAssetImpression"]
       50 DUPCLOSURE                       R9 K22 [PROTO_2]
       51 SETTABLEKS                       R9 R8 K16 ["OnAssetPreviewButtonClicked"]
       53 DUPCLOSURE                       R9 K23 [PROTO_3]
       54 SETTABLEKS                       R9 R8 K17 ["TryInsert"]
       56 DUPCLOSURE                       R9 K24 [PROTO_4]
       57 SETTABLEKS                       R9 R8 K18 ["TryOpenAssetConfig"]
       59 SETTABLEKS                       R8 R7 K12 ["AssetLogicWrapperProps"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K8 ["AudioView"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["MockWrapper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 GETTABLEKS                       R4 R4 K12 ["AudioTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K13 ["Parent"]
       38 GETTABLEKS                       R5 R5 K14 ["AudioView"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K13 ["Parent"]
       47 GETTABLEKS                       R6 R7 K15 ["AudioView.mocks"]
       49 CALL                             R5 1 1
       50 DUPTABLE                         R6 K17 [{"story"}]
       51 DUPCLOSURE                       R7 K18 [PROTO_5]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R7 R6 K16 ["story"]
       58 RETURN                           R6 1
