PROTO_0:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+30]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["SwimlaneName"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R5 R5 K1 ["get"]
        8 CALL                             R5 1 1
        9 GETUPVAL                         R6 3
       10 NAMECALL                         R6 R6 K1 ["get"]
       12 CALL                             R6 1 1
       13 GETTABLEKS                       R7 R6 K2 ["getNavigationContext"]
       15 MOVE                             R8 R5
       16 MOVE                             R9 R4
       17 CALL                             R7 2 1
       18 GETUPVAL                         R8 0
       19 MOVE                             R9 R0
       20 MOVE                             R10 R3
       21 MOVE                             R11 R1
       22 MOVE                             R12 R2
       23 GETUPVAL                         R14 4
       24 GETTABLEKS                       R13 R14 K3 ["size"]
       26 GETUPVAL                         R15 4
       27 GETTABLEKS                       R14 R15 K4 ["position"]
       29 MOVE                             R15 R7
       30 CALL                             R8 7 -1
       31 RETURN                           R8 -1
       32 LOADNIL                          R4
       33 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"size", "position"}]
        2 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        4 SETTABLEKS                       R3 R2 K0 ["size"]
        6 GETTABLEKS                       R3 R0 K4 ["AbsolutePosition"]
        8 SETTABLEKS                       R3 R2 K1 ["position"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["ResultsState"]
        2 GETTABLEKS                       R3 R0 K1 ["AssetLogicWrapperProps"]
        4 GETTABLEKS                       R2 R3 K2 ["LogAssetImpression"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["use"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K3 ["use"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["useState"]
       17 DUPTABLE                         R6 K7 [{"size", "position"}]
       18 GETIMPORT                        R7 K10 [Vector2.zero]
       20 SETTABLEKS                       R7 R6 K5 ["size"]
       22 GETIMPORT                        R7 K10 [Vector2.zero]
       24 SETTABLEKS                       R7 R6 K6 ["position"]
       26 CALL                             R5 1 2
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K11 ["useCallback"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R9 0 2
       38 MOVE                             R10 R2
       39 MOVE                             R11 R5
       40 SETLIST                          R9 R10 2 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K11 ["useCallback"]
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          VAL R6
       48 NEWTABLE                         R10 0 0
       50 CALL                             R8 2 1
       51 GETUPVAL                         R9 3
       52 NAMECALL                         R9 R9 K3 ["use"]
       54 CALL                             R9 1 1
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R10 R11 K12 ["createElement"]
       58 GETUPVAL                         R11 4
       59 NEWTABLE                         R12 4 0
       61 GETTABLEKS                       R13 R9 K13 ["backgroundColor"]
       63 SETTABLEKS                       R13 R12 K14 ["BackgroundColor"]
       65 GETUPVAL                         R15 2
       66 GETTABLEKS                       R14 R15 K15 ["Change"]
       68 GETTABLEKS                       R13 R14 K16 ["AbsoluteSize"]
       70 SETTABLE                         R8 R12 R13
       71 GETUPVAL                         R15 2
       72 GETTABLEKS                       R14 R15 K15 ["Change"]
       74 GETTABLEKS                       R13 R14 K17 ["AbsolutePosition"]
       76 SETTABLE                         R8 R12 R13
       77 DUPTABLE                         R13 K19 [{"AudioScroller"}]
       78 GETUPVAL                         R15 5
       79 GETTABLEKS                       R14 R15 K20 ["Generator"]
       81 DUPTABLE                         R15 K34 [{"Assets", "RenderTopContent", "PageSize", "FetchNextPage", "Loading", "ParentAbsoluteSize", "ParentAbsolutePosition", "CanInsertAsset", "LogImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig", "SwimlaneName"}]
       82 GETTABLEKS                       R16 R1 K35 ["assets"]
       84 SETTABLEKS                       R16 R15 K21 ["Assets"]
       86 GETTABLEKS                       R16 R0 K22 ["RenderTopContent"]
       88 SETTABLEKS                       R16 R15 K22 ["RenderTopContent"]
       90 GETTABLEKS                       R16 R0 K23 ["PageSize"]
       92 SETTABLEKS                       R16 R15 K23 ["PageSize"]
       94 GETTABLEKS                       R16 R1 K36 ["fetchNextPage"]
       96 SETTABLEKS                       R16 R15 K24 ["FetchNextPage"]
       98 GETTABLEKS                       R16 R1 K37 ["loading"]
      100 SETTABLEKS                       R16 R15 K25 ["Loading"]
      102 GETTABLEKS                       R16 R5 K5 ["size"]
      104 SETTABLEKS                       R16 R15 K26 ["ParentAbsoluteSize"]
      106 GETTABLEKS                       R16 R5 K6 ["position"]
      108 SETTABLEKS                       R16 R15 K27 ["ParentAbsolutePosition"]
      110 GETTABLEKS                       R17 R0 K1 ["AssetLogicWrapperProps"]
      112 GETTABLEKS                       R16 R17 K28 ["CanInsertAsset"]
      114 SETTABLEKS                       R16 R15 K28 ["CanInsertAsset"]
      116 SETTABLEKS                       R7 R15 K29 ["LogImpression"]
      118 GETTABLEKS                       R17 R0 K1 ["AssetLogicWrapperProps"]
      120 GETTABLEKS                       R16 R17 K30 ["OnAssetPreviewButtonClicked"]
      122 SETTABLEKS                       R16 R15 K30 ["OnAssetPreviewButtonClicked"]
      124 GETTABLEKS                       R17 R0 K1 ["AssetLogicWrapperProps"]
      126 GETTABLEKS                       R16 R17 K31 ["TryInsert"]
      128 SETTABLEKS                       R16 R15 K31 ["TryInsert"]
      130 GETTABLEKS                       R17 R0 K1 ["AssetLogicWrapperProps"]
      132 GETTABLEKS                       R16 R17 K32 ["TryOpenAssetConfig"]
      134 SETTABLEKS                       R16 R15 K32 ["TryOpenAssetConfig"]
      136 GETTABLEKS                       R16 R0 K33 ["SwimlaneName"]
      138 SETTABLEKS                       R16 R15 K33 ["SwimlaneName"]
      140 CALL                             R14 1 1
      141 SETTABLEKS                       R14 R13 K18 ["AudioScroller"]
      143 CALL                             R10 3 -1
      144 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Types"]
       27 GETTABLEKS                       R4 R5 K11 ["AssetLogicTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R8 R0 K9 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K13 ["Audio"]
       38 GETTABLEKS                       R5 R6 K14 ["AudioScroller"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K12 ["Components"]
       47 GETTABLEKS                       R6 R7 K15 ["ResultsFetcher"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R9 K16 ["ContextServices"]
       56 GETTABLEKS                       R7 R8 K17 ["NavigationContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R11 R0 K9 ["Src"]
       63 GETTABLEKS                       R10 R11 K18 ["Util"]
       65 GETTABLEKS                       R9 R10 K19 ["Analytics"]
       67 GETTABLEKS                       R8 R9 K20 ["AssetAnalyticsContextItem"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R9 R2 K21 ["UI"]
       72 GETTABLEKS                       R8 R9 K22 ["Pane"]
       74 GETTABLEKS                       R10 R2 K16 ["ContextServices"]
       76 GETTABLEKS                       R9 R10 K23 ["Stylizer"]
       78 DUPCLOSURE                       R10 K24 [PROTO_2]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R4
       85 RETURN                           R10 1
