PROTO_0:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R2 K1 ["isSceneSuggestions"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["createMockContextualRecommendations"]
        8 CALL                             R1 0 1
        9 JUMP                             ; [+5]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["createMockList"]
       13 LOADK                            R2 K4 ["Sample"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R2 R1 K5 ["ResultsState"]
       17 JUMPIFNOT                        R2 ; [+21]
       18 GETTABLEKS                       R2 R0 K0 ["controls"]
       20 GETTABLEKS                       R2 R2 K6 ["isLoading"]
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETTABLEKS                       R2 R1 K5 ["ResultsState"]
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K7 ["loading"]
       28 GETTABLEKS                       R2 R0 K0 ["controls"]
       30 GETTABLEKS                       R2 R2 K8 ["noResults"]
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETTABLEKS                       R2 R1 K5 ["ResultsState"]
       35 NEWTABLE                         R3 0 0
       37 SETTABLEKS                       R3 R2 K9 ["assets"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K10 ["createElement"]
       42 GETUPVAL                         R3 2
       43 NEWTABLE                         R4 0 0
       45 DUPTABLE                         R5 K12 [{"AudioSort"}]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K10 ["createElement"]
       49 GETUPVAL                         R7 3
       50 DUPTABLE                         R8 K15 [{"AudioSection", "AssetLogicWrapperProps"}]
       51 SETTABLEKS                       R1 R8 K13 ["AudioSection"]
       53 DUPTABLE                         R9 K21 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
       54 GETUPVAL                         R10 4
       55 SETTABLEKS                       R10 R9 K16 ["CanInsertAsset"]
       57 GETUPVAL                         R10 4
       58 SETTABLEKS                       R10 R9 K17 ["LogAssetImpression"]
       60 GETUPVAL                         R10 4
       61 SETTABLEKS                       R10 R9 K18 ["OnAssetPreviewButtonClicked"]
       63 GETUPVAL                         R10 4
       64 SETTABLEKS                       R10 R9 K19 ["TryInsert"]
       66 GETUPVAL                         R10 4
       67 SETTABLEKS                       R10 R9 K20 ["TryOpenAssetConfig"]
       69 SETTABLEKS                       R9 R8 K14 ["AssetLogicWrapperProps"]
       71 CALL                             R6 2 1
       72 SETTABLEKS                       R6 R5 K11 ["AudioSort"]
       74 CALL                             R2 3 -1
       75 RETURN                           R2 -1

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
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["AudioSort"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K11 ["Parent"]
       38 GETTABLEKS                       R5 R6 K13 ["AudioView.mocks"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K14 [PROTO_0]
       42 DUPTABLE                         R6 K18 [{"isLoading", "isSceneSuggestions", "noResults"}]
       43 LOADB                            R7 0
       44 SETTABLEKS                       R7 R6 K15 ["isLoading"]
       46 LOADB                            R7 0
       47 SETTABLEKS                       R7 R6 K16 ["isSceneSuggestions"]
       49 LOADB                            R7 0
       50 SETTABLEKS                       R7 R6 K17 ["noResults"]
       52 DUPTABLE                         R7 K21 [{"controls", "story"}]
       53 SETTABLEKS                       R6 R7 K19 ["controls"]
       55 DUPCLOSURE                       R8 K22 [PROTO_1]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R8 R7 K20 ["story"]
       63 RETURN                           R7 1
