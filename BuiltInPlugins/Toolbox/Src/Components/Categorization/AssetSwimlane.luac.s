PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClickSeeAllAssets"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["SectionName"]
        6 JUMPIF                           R1 ; [+3]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["PathName"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["CategoryName"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["SortName"]
       16 LOADNIL                          R4
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K5 ["QueryParams"]
       20 CALL                             R0 5 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["Asset"]
        2 GETTABLEKS                       R2 R3 K1 ["Id"]
        4 LOADB                            R3 0
        5 GETUPVAL                         R4 0
        6 JUMPIFNOTEQ                      R4 R2 ; [+5]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["canHoverAsset"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["createElement"]
       15 GETUPVAL                         R5 3
       16 DUPTABLE                         R6 K20 [{"assetId", "assetData", "assetTileLocation", "canInsertAsset", "isHovered", "logImpression", "onAssetHovered", "onAssetHoverEnded", "onAssetPreviewButtonClicked", "onSearchByCreator", "parentAbsolutePosition", "parentSize", "shouldLogOnMount", "swimlaneCategory", "tryInsert", "tryOpenAssetConfig"}]
       17 SETTABLEKS                       R2 R6 K4 ["assetId"]
       19 SETTABLEKS                       R1 R6 K5 ["assetData"]
       21 GETUPVAL                         R9 4
       22 GETTABLEKS                       R8 R9 K21 ["ASSET_TILE_LOCATION"]
       24 GETTABLEKS                       R7 R8 K22 ["BROWSE"]
       26 SETTABLEKS                       R7 R6 K6 ["assetTileLocation"]
       28 GETUPVAL                         R8 5
       29 GETTABLEKS                       R7 R8 K23 ["CanInsertAsset"]
       31 SETTABLEKS                       R7 R6 K7 ["canInsertAsset"]
       33 SETTABLEKS                       R3 R6 K8 ["isHovered"]
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R7 R8 K24 ["LogAssetImpression"]
       38 SETTABLEKS                       R7 R6 K9 ["logImpression"]
       40 GETUPVAL                         R7 6
       41 SETTABLEKS                       R7 R6 K10 ["onAssetHovered"]
       43 GETUPVAL                         R7 7
       44 SETTABLEKS                       R7 R6 K11 ["onAssetHoverEnded"]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R7 R8 K25 ["OnAssetPreviewButtonClicked"]
       49 SETTABLEKS                       R7 R6 K12 ["onAssetPreviewButtonClicked"]
       51 GETUPVAL                         R8 8
       52 CALL                             R8 0 1
       53 JUMPIFNOT                        R8 ; [+4]
       54 GETUPVAL                         R8 5
       55 GETTABLEKS                       R7 R8 K26 ["OnSearchByCreator"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R7
       59 SETTABLEKS                       R7 R6 K13 ["onSearchByCreator"]
       61 GETUPVAL                         R8 5
       62 GETTABLEKS                       R7 R8 K27 ["ParentAbsolutePosition"]
       64 SETTABLEKS                       R7 R6 K14 ["parentAbsolutePosition"]
       66 GETUPVAL                         R8 5
       67 GETTABLEKS                       R7 R8 K28 ["ParentAbsoluteSize"]
       69 SETTABLEKS                       R7 R6 K15 ["parentSize"]
       71 GETUPVAL                         R8 5
       72 GETTABLEKS                       R7 R8 K29 ["ShouldLogAssetOnMount"]
       74 SETTABLEKS                       R7 R6 K16 ["shouldLogOnMount"]
       76 GETUPVAL                         R8 5
       77 GETTABLEKS                       R7 R8 K30 ["SwimlaneCategory"]
       79 SETTABLEKS                       R7 R6 K17 ["swimlaneCategory"]
       81 GETUPVAL                         R8 5
       82 GETTABLEKS                       R7 R8 K31 ["TryInsert"]
       84 SETTABLEKS                       R7 R6 K18 ["tryInsert"]
       86 GETUPVAL                         R8 5
       87 GETTABLEKS                       R7 R8 K32 ["TryOpenAssetConfig"]
       89 SETTABLEKS                       R7 R6 K19 ["tryOpenAssetConfig"]
       91 CALL                             R4 2 -1
       92 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldShowPrices"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["CategoryName"]
        6 CALL                             R1 1 1
        7 LOADNIL                          R2
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["ASSET_HEIGHT"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["PRICE_HEIGHT"]
       15 ADD                              R2 R3 R4
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K2 ["ASSET_HEIGHT"]
       20 GETUPVAL                         R3 3
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+10]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K4 ["SectionName"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K5 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
       29 JUMPIFNOTEQ                      R3 R4 ; [+3]
       31 LOADNIL                          R3
       32 RETURN                           R3 1
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R3 R4 K6 ["createElement"]
       36 GETUPVAL                         R4 5
       37 DUPTABLE                         R5 K17 [{"Data", "IsHeaderResponsive", "IsLoading", "LayoutOrder", "OnClickSeeAll", "OnRenderItem", "Size", "Total", "Title", "ZIndex"}]
       38 GETTABLEKS                       R6 R0 K18 ["assets"]
       40 SETTABLEKS                       R6 R5 K7 ["Data"]
       42 GETUPVAL                         R7 6
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+2]
       45 LOADB                            R6 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R5 K8 ["IsHeaderResponsive"]
       50 GETTABLEKS                       R6 R0 K19 ["loading"]
       52 SETTABLEKS                       R6 R5 K9 ["IsLoading"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K10 ["LayoutOrder"]
       57 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
       59 GETUPVAL                         R6 7
       60 SETTABLEKS                       R6 R5 K11 ["OnClickSeeAll"]
       62 GETUPVAL                         R6 8
       63 SETTABLEKS                       R6 R5 K12 ["OnRenderItem"]
       65 GETIMPORT                        R6 K22 [UDim2.new]
       67 LOADN                            R7 0
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R8 R9 K23 ["SwimlaneWidth"]
       71 LOADN                            R9 0
       72 MOVE                             R10 R2
       73 CALL                             R6 4 1
       74 SETTABLEKS                       R6 R5 K13 ["Size"]
       76 GETTABLEKS                       R6 R0 K24 ["total"]
       78 SETTABLEKS                       R6 R5 K14 ["Total"]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R6 R7 K15 ["Title"]
       83 SETTABLEKS                       R6 R5 K15 ["Title"]
       85 GETUPVAL                         R7 1
       86 GETTABLEKS                       R6 R7 K16 ["ZIndex"]
       88 SETTABLEKS                       R6 R5 K16 ["ZIndex"]
       90 CALL                             R3 2 -1
       91 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 LOADN                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 3
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R7 0 6
       16 GETTABLEKS                       R8 R0 K1 ["CategoryName"]
       18 GETTABLEKS                       R9 R0 K2 ["OnClickSeeAllAssets"]
       20 GETTABLEKS                       R10 R0 K3 ["PathName"]
       22 GETTABLEKS                       R11 R0 K4 ["QueryParams"]
       24 GETTABLEKS                       R12 R0 K5 ["SectionName"]
       26 GETTABLEKS                       R13 R0 K6 ["SortName"]
       28 SETLIST                          R7 R8 6 [1]
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 3
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 3
       38 NEWCLOSURE                       R8 P2
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R9 0 0
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 3
       44 NEWCLOSURE                       R9 P3
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          UPVAL U7
       54 NEWTABLE                         R10 0 14
       56 MOVE                             R11 R1
       57 MOVE                             R12 R3
       58 MOVE                             R13 R6
       59 MOVE                             R14 R7
       60 GETTABLEKS                       R15 R0 K7 ["CanInsertAsset"]
       62 GETTABLEKS                       R16 R0 K8 ["LogAssetImpression"]
       64 GETTABLEKS                       R17 R0 K9 ["OnAssetPreviewButtonClicked"]
       66 GETTABLEKS                       R18 R0 K10 ["OnSearchByCreator"]
       68 GETTABLEKS                       R19 R0 K11 ["ParentAbsolutePosition"]
       70 GETTABLEKS                       R20 R0 K12 ["ParentAbsoluteSize"]
       72 GETTABLEKS                       R21 R0 K13 ["ShouldLogAssetOnMount"]
       74 GETTABLEKS                       R22 R0 K14 ["SwimlaneCategory"]
       76 GETTABLEKS                       R23 R0 K15 ["TryInsert"]
       78 GETTABLEKS                       R24 R0 K16 ["TryOpenAssetConfig"]
       80 SETLIST                          R10 R11 14 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 3
       84 NEWCLOSURE                       R10 P4
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U9
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R8
       94 NEWTABLE                         R11 0 7
       96 MOVE                             R12 R5
       97 MOVE                             R13 R8
       98 GETTABLEKS                       R14 R0 K1 ["CategoryName"]
      100 GETTABLEKS                       R15 R0 K17 ["LayoutOrder"]
      102 GETTABLEKS                       R16 R0 K18 ["SwimlaneWidth"]
      104 GETTABLEKS                       R17 R0 K19 ["Title"]
      106 GETTABLEKS                       R18 R0 K20 ["ZIndex"]
      108 SETLIST                          R11 R12 7 [1]
      110 CALL                             R9 2 1
      111 GETUPVAL                         R11 12
      112 GETTABLEKS                       R10 R11 K21 ["Generator"]
      114 DUPTABLE                         R11 K32 [{"networkInterface", "categoryName", "includeUnverifiedCreators", "qualityFilterData", "sortName", "queryParams", "sectionName", "initialPageSize", "render", "searchSource"}]
      115 GETTABLEKS                       R12 R2 K22 ["networkInterface"]
      117 SETTABLEKS                       R12 R11 K22 ["networkInterface"]
      119 GETTABLEKS                       R12 R0 K1 ["CategoryName"]
      121 SETTABLEKS                       R12 R11 K23 ["categoryName"]
      123 GETTABLEKS                       R12 R0 K33 ["IncludeUnverifiedCreators"]
      125 SETTABLEKS                       R12 R11 K24 ["includeUnverifiedCreators"]
      127 GETUPVAL                         R13 13
      128 CALL                             R13 0 1
      129 JUMPIFNOT                        R13 ; [+3]
      130 GETTABLEKS                       R12 R0 K34 ["QualityFilterData"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R12
      134 SETTABLEKS                       R12 R11 K25 ["qualityFilterData"]
      136 GETTABLEKS                       R12 R0 K6 ["SortName"]
      138 SETTABLEKS                       R12 R11 K26 ["sortName"]
      140 GETTABLEKS                       R12 R0 K4 ["QueryParams"]
      142 SETTABLEKS                       R12 R11 K27 ["queryParams"]
      144 GETTABLEKS                       R12 R0 K5 ["SectionName"]
      146 SETTABLEKS                       R12 R11 K28 ["sectionName"]
      148 GETTABLEKS                       R12 R0 K35 ["InitialPageSize"]
      150 SETTABLEKS                       R12 R11 K29 ["initialPageSize"]
      152 SETTABLEKS                       R9 R11 K30 ["render"]
      154 GETTABLEKS                       R12 R0 K31 ["searchSource"]
      156 SETTABLEKS                       R12 R11 K31 ["searchSource"]
      158 CALL                             R10 1 -1
      159 RETURN                           R10 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Components"]
       20 GETTABLEKS                       R4 R5 K10 ["Asset"]
       22 GETTABLEKS                       R3 R4 K10 ["Asset"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Types"]
       31 GETTABLEKS                       R4 R5 K12 ["AssetLogicTypes"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R6 K9 ["Components"]
       38 GETTABLEKS                       R4 R5 K13 ["Categorization"]
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R8 R0 K8 ["Src"]
       44 GETTABLEKS                       R7 R8 K11 ["Types"]
       46 GETTABLEKS                       R6 R7 K14 ["Category"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Src"]
       53 GETTABLEKS                       R8 R9 K15 ["Util"]
       55 GETTABLEKS                       R7 R8 K16 ["Constants"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K5 [require]
       60 GETTABLEKS                       R10 R0 K8 ["Src"]
       62 GETTABLEKS                       R9 R10 K11 ["Types"]
       64 GETTABLEKS                       R8 R9 K17 ["HomeTypes"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R11 R0 K8 ["Src"]
       71 GETTABLEKS                       R10 R11 K18 ["ContextServices"]
       73 GETTABLEKS                       R9 R10 K19 ["ModalContext"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R12 R0 K8 ["Src"]
       80 GETTABLEKS                       R11 R12 K18 ["ContextServices"]
       82 GETTABLEKS                       R10 R11 K20 ["NetworkContext"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R13 R0 K8 ["Src"]
       89 GETTABLEKS                       R12 R13 K9 ["Components"]
       91 GETTABLEKS                       R11 R12 K21 ["ResultsFetcher"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K5 [require]
       96 GETTABLEKS                       R12 R4 K22 ["Swimlane"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K5 [require]
      101 GETTABLEKS                       R16 R0 K8 ["Src"]
      103 GETTABLEKS                       R15 R16 K15 ["Util"]
      105 GETTABLEKS                       R14 R15 K23 ["SharedFlags"]
      107 GETTABLEKS                       R13 R14 K24 ["getFFlagToolboxFixInventoryGridSearch"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K5 [require]
      112 GETTABLEKS                       R17 R0 K8 ["Src"]
      114 GETTABLEKS                       R16 R17 K15 ["Util"]
      116 GETTABLEKS                       R15 R16 K23 ["SharedFlags"]
      118 GETTABLEKS                       R14 R15 K25 ["getFFlagToolboxContextualRecommendationsShadowTraffic"]
      120 CALL                             R13 1 1
      121 GETIMPORT                        R14 K5 [require]
      123 GETTABLEKS                       R17 R0 K8 ["Src"]
      125 GETTABLEKS                       R16 R17 K26 ["Flags"]
      127 GETTABLEKS                       R15 R16 K27 ["getFFlagQualityFiltersInToolboxSearch"]
      129 CALL                             R14 1 1
      130 GETIMPORT                        R15 K5 [require]
      132 GETTABLEKS                       R19 R0 K8 ["Src"]
      134 GETTABLEKS                       R18 R19 K15 ["Util"]
      136 GETTABLEKS                       R17 R18 K23 ["SharedFlags"]
      138 GETTABLEKS                       R16 R17 K28 ["getFFlagToolboxFixSwimlaneHeader"]
      140 CALL                             R15 1 1
      141 GETTABLEKS                       R16 R1 K29 ["useState"]
      143 GETTABLEKS                       R17 R1 K30 ["useCallback"]
      145 DUPCLOSURE                       R18 K31 [PROTO_5]
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R14
      160 RETURN                           R18 1
