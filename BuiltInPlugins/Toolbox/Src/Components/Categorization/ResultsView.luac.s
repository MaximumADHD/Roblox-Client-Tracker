PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["pageInfo"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 ["< "]
        1 GETUPVAL                         R2 0
        2 LOADK                            R4 K1 ["General"]
        3 LOADK                            R5 K2 ["BackToHome"]
        4 DUPTABLE                         R6 K4 [{"assetType"}]
        5 GETUPVAL                         R8 1
        6 GETUPVAL                         R9 0
        7 CALL                             R8 1 1
        8 GETUPVAL                         R9 2
        9 GETTABLEKS                       R9 R9 K5 ["CategoryName"]
       11 GETTABLE                         R7 R8 R9
       12 SETTABLEKS                       R7 R6 K3 ["assetType"]
       14 NAMECALL                         R2 R2 K6 ["getText"]
       16 CALL                             R2 4 1
       17 CONCAT                           R0 R1 R2
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K7 ["createElement"]
       21 GETUPVAL                         R2 4
       22 DUPTABLE                         R3 K12 [{"LayoutOrder", "OnClick", "Style", "Text"}]
       23 LOADN                            R4 1
       24 SETTABLEKS                       R4 R3 K8 ["LayoutOrder"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K13 ["OnClickBack"]
       29 SETTABLEKS                       R4 R3 K9 ["OnClick"]
       31 LOADK                            R4 K14 ["Unobtrusive"]
       32 SETTABLEKS                       R4 R3 K10 ["Style"]
       34 SETTABLEKS                       R0 R3 K11 ["Text"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["loading"]
        2 JUMPIFNOT                        R1 ; [+57]
        3 GETTABLEKS                       R2 R0 K1 ["assetIds"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTEQKN                    R1 K2 [0] ; [+53]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["createElement"]
       11 LOADK                            R2 K4 ["Frame"]
       12 DUPTABLE                         R3 K9 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K10 ["backgroundColor"]
       16 SETTABLEKS                       R4 R3 K5 ["BackgroundColor3"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K6 ["LayoutOrder"]
       21 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["Position"]
       26 SETTABLEKS                       R4 R3 K7 ["Position"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K8 ["Size"]
       31 SETTABLEKS                       R4 R3 K8 ["Size"]
       33 DUPTABLE                         R4 K12 [{"LoadingIndicator"}]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K3 ["createElement"]
       37 GETUPVAL                         R6 3
       38 DUPTABLE                         R7 K14 [{"AnchorPoint", "Position"}]
       39 GETIMPORT                        R8 K17 [Vector2.new]
       41 LOADK                            R9 K18 [0.5]
       42 LOADK                            R10 K18 [0.5]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K13 ["AnchorPoint"]
       46 GETIMPORT                        R8 K20 [UDim2.new]
       48 LOADK                            R9 K18 [0.5]
       49 LOADN                            R10 0
       50 LOADK                            R11 K18 [0.5]
       51 LOADN                            R12 0
       52 CALL                             R8 4 1
       53 SETTABLEKS                       R8 R7 K7 ["Position"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K11 ["LoadingIndicator"]
       58 CALL                             R1 3 -1
       59 RETURN                           R1 -1
       60 GETUPVAL                         R1 4
       61 GETTABLEKS                       R1 R1 K21 ["categoryIsAudio"]
       63 GETUPVAL                         R2 2
       64 GETTABLEKS                       R2 R2 K22 ["CategoryName"]
       66 CALL                             R1 1 1
       67 JUMPIFNOT                        R1 ; [+48]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K3 ["createElement"]
       71 GETUPVAL                         R2 5
       72 DUPTABLE                         R3 K28 [{"ResultsState", "PageSize", "RenderTopContent", "SwimlaneName", "AssetLogicWrapperProps"}]
       73 SETTABLEKS                       R0 R3 K23 ["ResultsState"]
       75 GETUPVAL                         R4 6
       76 SETTABLEKS                       R4 R3 K24 ["PageSize"]
       78 GETUPVAL                         R4 7
       79 SETTABLEKS                       R4 R3 K25 ["RenderTopContent"]
       81 GETUPVAL                         R4 2
       82 GETTABLEKS                       R4 R4 K26 ["SwimlaneName"]
       84 SETTABLEKS                       R4 R3 K26 ["SwimlaneName"]
       86 DUPTABLE                         R4 K34 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
       87 GETUPVAL                         R5 2
       88 GETTABLEKS                       R5 R5 K29 ["CanInsertAsset"]
       90 SETTABLEKS                       R5 R4 K29 ["CanInsertAsset"]
       92 GETUPVAL                         R5 2
       93 GETTABLEKS                       R5 R5 K30 ["LogAssetImpression"]
       95 SETTABLEKS                       R5 R4 K30 ["LogAssetImpression"]
       97 GETUPVAL                         R5 2
       98 GETTABLEKS                       R5 R5 K31 ["OnAssetPreviewButtonClicked"]
      100 SETTABLEKS                       R5 R4 K31 ["OnAssetPreviewButtonClicked"]
      102 GETUPVAL                         R5 2
      103 GETTABLEKS                       R5 R5 K32 ["TryInsert"]
      105 SETTABLEKS                       R5 R4 K32 ["TryInsert"]
      107 GETUPVAL                         R5 2
      108 GETTABLEKS                       R5 R5 K33 ["TryOpenAssetConfig"]
      110 SETTABLEKS                       R5 R4 K33 ["TryOpenAssetConfig"]
      112 SETTABLEKS                       R4 R3 K27 ["AssetLogicWrapperProps"]
      114 CALL                             R1 2 -1
      115 RETURN                           R1 -1
      116 GETUPVAL                         R1 8
      117 DUPTABLE                         R2 K39 [{"AssetIds", "AssetMap", "LayoutOrder", "Position", "RenderTopContent", "RequestNextPage", "Size", "CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "TryInsert", "TryOpenAssetConfig"}]
      118 GETTABLEKS                       R3 R0 K1 ["assetIds"]
      120 SETTABLEKS                       R3 R2 K35 ["AssetIds"]
      122 GETTABLEKS                       R3 R0 K40 ["assetMap"]
      124 SETTABLEKS                       R3 R2 K36 ["AssetMap"]
      126 GETUPVAL                         R3 2
      127 GETTABLEKS                       R3 R3 K6 ["LayoutOrder"]
      129 SETTABLEKS                       R3 R2 K6 ["LayoutOrder"]
      131 GETUPVAL                         R3 2
      132 GETTABLEKS                       R3 R3 K7 ["Position"]
      134 SETTABLEKS                       R3 R2 K7 ["Position"]
      136 GETUPVAL                         R3 7
      137 SETTABLEKS                       R3 R2 K25 ["RenderTopContent"]
      139 GETTABLEKS                       R3 R0 K41 ["fetchNextPage"]
      141 SETTABLEKS                       R3 R2 K37 ["RequestNextPage"]
      143 GETUPVAL                         R3 2
      144 GETTABLEKS                       R3 R3 K8 ["Size"]
      146 SETTABLEKS                       R3 R2 K8 ["Size"]
      148 GETUPVAL                         R3 2
      149 GETTABLEKS                       R3 R3 K29 ["CanInsertAsset"]
      151 SETTABLEKS                       R3 R2 K29 ["CanInsertAsset"]
      153 GETUPVAL                         R3 2
      154 GETTABLEKS                       R3 R3 K30 ["LogAssetImpression"]
      156 SETTABLEKS                       R3 R2 K30 ["LogAssetImpression"]
      158 GETUPVAL                         R3 2
      159 GETTABLEKS                       R3 R3 K31 ["OnAssetPreviewButtonClicked"]
      161 SETTABLEKS                       R3 R2 K31 ["OnAssetPreviewButtonClicked"]
      163 GETUPVAL                         R4 9
      164 CALL                             R4 0 1
      165 JUMPIFNOT                        R4 ; [+4]
      166 GETUPVAL                         R3 2
      167 GETTABLEKS                       R3 R3 K38 ["OnSearchByCreator"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R3
      171 SETTABLEKS                       R3 R2 K38 ["OnSearchByCreator"]
      173 GETUPVAL                         R3 2
      174 GETTABLEKS                       R3 R3 K32 ["TryInsert"]
      176 SETTABLEKS                       R3 R2 K32 ["TryInsert"]
      178 GETUPVAL                         R3 2
      179 GETTABLEKS                       R3 R3 K33 ["TryOpenAssetConfig"]
      181 SETTABLEKS                       R3 R2 K33 ["TryOpenAssetConfig"]
      183 CALL                             R1 1 -1
      184 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["ContextServices"]
        9 GETTABLEKS                       R2 R2 K2 ["Localization"]
       11 NAMECALL                         R2 R2 K3 ["use"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K1 ["ContextServices"]
       17 GETTABLEKS                       R3 R3 K4 ["Stylizer"]
       19 NAMECALL                         R3 R3 K3 ["use"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 3
       23 NAMECALL                         R4 R4 K3 ["use"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 4
       27 GETUPVAL                         R6 5
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 6
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 NEWTABLE                         R8 0 3
       38 MOVE                             R9 R2
       39 GETTABLEKS                       R10 R1 K5 ["CategoryName"]
       41 GETTABLEKS                       R11 R1 K6 ["OnClickBack"]
       43 SETLIST                          R8 R9 3 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 6
       47 NEWCLOSURE                       R8 P1
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          UPVAL U11
       53 CAPTURE                          UPVAL U12
       54 CAPTURE                          UPVAL U13
       55 CAPTURE                          VAL R6
       56 CAPTURE                          UPVAL U14
       57 CAPTURE                          UPVAL U15
       58 NEWTABLE                         R9 0 0
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 16
       62 GETTABLEKS                       R8 R8 K7 ["Generator"]
       64 DUPTABLE                         R9 K19 [{"networkInterface", "categoryName", "sectionName", "sortName", "searchTerm", "queryParams", "initialPageSize", "includeUnverifiedCreators", "searchSource", "qualityFilterData", "render"}]
       65 GETTABLEKS                       R10 R4 K8 ["networkInterface"]
       67 SETTABLEKS                       R10 R9 K8 ["networkInterface"]
       69 GETTABLEKS                       R10 R1 K5 ["CategoryName"]
       71 SETTABLEKS                       R10 R9 K9 ["categoryName"]
       73 GETTABLEKS                       R10 R1 K20 ["SectionName"]
       75 SETTABLEKS                       R10 R9 K10 ["sectionName"]
       77 GETTABLEKS                       R10 R1 K21 ["SortName"]
       79 SETTABLEKS                       R10 R9 K11 ["sortName"]
       81 GETTABLEKS                       R10 R1 K22 ["SearchTerm"]
       83 SETTABLEKS                       R10 R9 K12 ["searchTerm"]
       85 GETTABLEKS                       R10 R1 K23 ["QueryParams"]
       87 SETTABLEKS                       R10 R9 K13 ["queryParams"]
       89 GETUPVAL                         R10 13
       90 SETTABLEKS                       R10 R9 K14 ["initialPageSize"]
       92 GETTABLEKS                       R10 R5 K15 ["includeUnverifiedCreators"]
       94 SETTABLEKS                       R10 R9 K15 ["includeUnverifiedCreators"]
       96 GETTABLEKS                       R10 R1 K24 ["SearchSource"]
       98 SETTABLEKS                       R10 R9 K16 ["searchSource"]
      100 GETUPVAL                         R11 17
      101 CALL                             R11 0 1
      102 JUMPIFNOT                        R11 ; [+6]
      103 GETUPVAL                         R11 18
      104 CALL                             R11 0 1
      105 JUMPIFNOT                        R11 ; [+3]
      106 GETTABLEKS                       R10 R5 K17 ["qualityFilterData"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R10
      110 SETTABLEKS                       R10 R9 K17 ["qualityFilterData"]
      112 SETTABLEKS                       R7 R9 K18 ["render"]
      114 CALL                             R8 1 -1
      115 RETURN                           R8 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["AssetGrid"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K13 ["AssetLogicWrapper"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Components"]
       52 GETTABLEKS                       R7 R7 K14 ["Audio"]
       54 GETTABLEKS                       R7 R7 K15 ["AudioScrollerWrapper"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Types"]
       63 GETTABLEKS                       R8 R8 K17 ["Category"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Util"]
       72 GETTABLEKS                       R9 R9 K19 ["Constants"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K10 ["Src"]
       79 GETTABLEKS                       R10 R10 K20 ["Localization"]
       81 GETTABLEKS                       R10 R10 K21 ["getLocalizedCategoryMap"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K10 ["Src"]
       88 GETTABLEKS                       R11 R11 K16 ["Types"]
       90 GETTABLEKS                       R11 R11 K22 ["HomeTypes"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K10 ["Src"]
       97 GETTABLEKS                       R12 R12 K23 ["ContextServices"]
       99 GETTABLEKS                       R12 R12 K24 ["NetworkContext"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K10 ["Src"]
      106 GETTABLEKS                       R13 R13 K11 ["Components"]
      108 GETTABLEKS                       R13 R13 K25 ["ResultsFetcher"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K10 ["Src"]
      115 GETTABLEKS                       R14 R14 K16 ["Types"]
      117 GETTABLEKS                       R14 R14 K26 ["Sort"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K10 ["Src"]
      124 GETTABLEKS                       R15 R15 K27 ["Hooks"]
      126 GETTABLEKS                       R15 R15 K28 ["useSelector"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K10 ["Src"]
      133 GETTABLEKS                       R16 R16 K18 ["Util"]
      135 GETTABLEKS                       R16 R16 K29 ["SharedFlags"]
      137 GETTABLEKS                       R16 R16 K30 ["getFFlagToolboxFixInventoryGridSearch"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K5 [require]
      142 GETTABLEKS                       R17 R0 K10 ["Src"]
      144 GETTABLEKS                       R17 R17 K31 ["Flags"]
      146 GETTABLEKS                       R17 R17 K32 ["getFFlagQualityFiltersInToolboxSearch"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K5 [require]
      151 GETTABLEKS                       R18 R0 K10 ["Src"]
      153 GETTABLEKS                       R18 R18 K31 ["Flags"]
      155 GETTABLEKS                       R18 R18 K33 ["getFFlagQualityFiltersFixInResultsView"]
      157 CALL                             R17 1 1
      158 GETTABLEKS                       R18 R2 K34 ["UI"]
      160 GETTABLEKS                       R18 R18 K35 ["LoadingIndicator"]
      162 GETTABLEKS                       R19 R2 K34 ["UI"]
      164 GETTABLEKS                       R19 R19 K36 ["LinkText"]
      166 GETTABLEKS                       R20 R1 K37 ["useCallback"]
      168 GETTABLEKS                       R21 R8 K38 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
      170 DUPTABLE                         R22 K43 [{"Size", "Category", "SearchTerm", "SectionName", "SortName"}]
      171 GETIMPORT                        R23 K46 [UDim2.new]
      173 LOADN                            R24 1
      174 LOADN                            R25 0
      175 LOADN                            R26 0
      176 LOADN                            R27 0
      177 CALL                             R23 4 1
      178 SETTABLEKS                       R23 R22 K39 ["Size"]
      180 GETTABLEKS                       R23 R7 K47 ["FREE_MODELS"]
      182 GETTABLEKS                       R23 R23 K48 ["name"]
      184 SETTABLEKS                       R23 R22 K17 ["Category"]
      186 LOADNIL                          R23
      187 SETTABLEKS                       R23 R22 K40 ["SearchTerm"]
      189 LOADNIL                          R23
      190 SETTABLEKS                       R23 R22 K41 ["SectionName"]
      192 GETTABLEKS                       R23 R13 K49 ["getDefaultSortNameForCategory"]
      194 GETTABLEKS                       R24 R7 K47 ["FREE_MODELS"]
      196 GETTABLEKS                       R24 R24 K48 ["name"]
      198 CALL                             R23 1 1
      199 SETTABLEKS                       R23 R22 K42 ["SortName"]
      201 DUPCLOSURE                       R23 K50 [PROTO_0]
      202 DUPCLOSURE                       R24 K51 [PROTO_3]
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R17
      222 RETURN                           R24 1
