PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Network"]
        3 GETTABLEKS                       R1 R2 K1 ["networkInterface"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["Settings"]
        8 LOADK                            R4 K3 ["Plugin"]
        9 NAMECALL                         R2 R2 K4 ["get"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K5 ["updatePageInfo"]
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 MOVE                             R6 R0
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NavigationContext"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["AssetAnalytics"]
        6 NAMECALL                         R3 R3 K2 ["get"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["getPageInfoAnalyticsContextInfo"]
       12 JUMPIFNOT                        R4 ; [+20]
       13 MOVE                             R5 R4
       14 CALL                             R5 0 1
       15 GETTABLEKS                       R6 R5 K4 ["searchId"]
       17 NAMECALL                         R7 R2 K5 ["getBreadcrumbRoute"]
       19 CALL                             R7 1 1
       20 GETTABLEKS                       R8 R5 K6 ["toolboxTab"]
       22 GETTABLEKS                       R9 R5 K7 ["currentCategory"]
       24 MOVE                             R12 R6
       25 MOVE                             R13 R0
       26 MOVE                             R14 R1
       27 MOVE                             R15 R7
       28 MOVE                             R16 R8
       29 MOVE                             R17 R9
       30 NAMECALL                         R10 R3 K8 ["logPageView"]
       32 CALL                             R10 7 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R3 K0 ["QueryParams"]
        2 JUMPIFNOT                        R4 ; [+9]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["updatePageInfo"]
        6 DUPTABLE                         R5 K3 [{"queryParams"}]
        7 GETTABLEKS                       R6 R3 K0 ["QueryParams"]
        9 SETTABLEKS                       R6 R5 K2 ["queryParams"]
       11 CALL                             R4 1 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["NavigationContext"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K5 ["logPageView"]
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 CALL                             R5 2 0
       21 MOVE                             R7 R0
       22 MOVE                             R8 R2
       23 MOVE                             R9 R3
       24 NAMECALL                         R5 R4 K6 ["push"]
       26 CALL                             R5 4 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["NavigationContext"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["AssetAnalytics"]
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["getPageInfoAnalyticsContextInfo"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["updatePageInfo"]
       15 DUPTABLE                         R4 K6 [{"queryParams"}]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K7 ["None"]
       19 SETTABLEKS                       R5 R4 K5 ["queryParams"]
       21 CALL                             R3 1 0
       22 JUMPIFNOT                        R2 ; [+24]
       23 MOVE                             R3 R2
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R3 K8 ["searchId"]
       27 NAMECALL                         R5 R0 K9 ["getBreadcrumbRoute"]
       29 CALL                             R5 1 1
       30 GETTABLEN                        R6 R5 2
       31 NAMECALL                         R7 R0 K10 ["getCurrentPath"]
       33 CALL                             R7 1 1
       34 GETTABLEKS                       R8 R3 K11 ["toolboxTab"]
       36 GETTABLEKS                       R9 R3 K12 ["currentCategory"]
       38 MOVE                             R12 R4
       39 MOVE                             R13 R6
       40 MOVE                             R14 R7
       41 MOVE                             R15 R5
       42 MOVE                             R16 R8
       43 MOVE                             R17 R9
       44 NAMECALL                         R10 R1 K13 ["logGoBack"]
       46 CALL                             R10 7 0
       47 NAMECALL                         R3 R0 K14 ["popToTop"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 SETTABLEKS                       R2 R0 K0 ["updatePageInfo"]
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R0 K1 ["logPageView"]
        8 NEWCLOSURE                       R2 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K2 ["navigateTo"]
       13 NEWCLOSURE                       R2 P3
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R2 R0 K3 ["navigateGoBack"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 GETTABLEKS                       R5 R0 K1 ["props"]
        5 GETTABLEKS                       R4 R5 K2 ["navigation"]
        7 GETTABLEKS                       R3 R4 K3 ["state"]
        9 GETTABLEKS                       R2 R3 K4 ["params"]
       11 DUPTABLE                         R3 K9 [{"focused", "navigateTo", "navigateGoBack", "logPageView"}]
       12 GETTABLEKS                       R6 R0 K1 ["props"]
       14 GETTABLEKS                       R5 R6 K2 ["navigation"]
       16 GETTABLEKS                       R4 R5 K10 ["isFocused"]
       18 CALL                             R4 0 1
       19 SETTABLEKS                       R4 R3 K5 ["focused"]
       21 GETTABLEKS                       R4 R0 K6 ["navigateTo"]
       23 SETTABLEKS                       R4 R3 K6 ["navigateTo"]
       25 GETTABLEKS                       R4 R0 K7 ["navigateGoBack"]
       27 SETTABLEKS                       R4 R3 K7 ["navigateGoBack"]
       29 GETTABLEKS                       R4 R0 K8 ["logPageView"]
       31 SETTABLEKS                       R4 R3 K8 ["logPageView"]
       33 GETUPVAL                         R5 1
       34 JUMPIFNOT                        R5 ; [+2]
       35 GETUPVAL                         R4 1
       36 JUMP                             ; [+2]
       37 NEWTABLE                         R4 0 0
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K0 ["join"]
       42 GETTABLEKS                       R8 R0 K1 ["props"]
       44 GETTABLEKS                       R7 R8 K2 ["navigation"]
       46 GETTABLEKS                       R6 R7 K3 ["state"]
       48 DUPTABLE                         R7 K13 [{"key", "routeName"}]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R8 R9 K14 ["None"]
       52 SETTABLEKS                       R8 R7 K11 ["key"]
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R8 R9 K14 ["None"]
       57 SETTABLEKS                       R8 R7 K12 ["routeName"]
       59 CALL                             R5 2 -1
       60 CALL                             R1 -1 1
       61 GETUPVAL                         R2 2
       62 MOVE                             R3 R1
       63 CALL                             R2 1 -1
       64 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["NavigationContext"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R5 K2 ["navigation"]
        8 NAMECALL                         R2 R1 K3 ["updateNavigation"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"updatePageInfo", "getPageInfoAnalyticsContextInfo"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["updatePageInfo"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["getPageInfoAnalyticsContextInfo"]
       11 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PureComponent"]
        3 LOADK                            R3 K1 ["NavWrapper"]
        4 NAMECALL                         R1 R1 K2 ["extend"]
        6 CALL                             R1 2 1
        7 DUPCLOSURE                       R2 K3 [PROTO_4]
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K4 ["init"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K5 ["render"]
       17 DUPCLOSURE                       R2 K6 [PROTO_6]
       18 SETTABLEKS                       R2 R1 K7 ["didMount"]
       20 DUPCLOSURE                       R2 K8 [PROTO_9]
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R3 R4 K9 ["withContext"]
       26 DUPTABLE                         R4 K14 [{"AssetAnalytics", "NavigationContext", "Network", "Settings"}]
       27 GETUPVAL                         R5 7
       28 SETTABLEKS                       R5 R4 K10 ["AssetAnalytics"]
       30 GETUPVAL                         R5 8
       31 SETTABLEKS                       R5 R4 K11 ["NavigationContext"]
       33 GETUPVAL                         R5 9
       34 SETTABLEKS                       R5 R4 K12 ["Network"]
       36 GETUPVAL                         R5 10
       37 SETTABLEKS                       R5 R4 K13 ["Settings"]
       39 CALL                             R3 1 1
       40 MOVE                             R4 R1
       41 CALL                             R3 1 1
       42 MOVE                             R1 R3
       43 GETUPVAL                         R4 11
       44 GETTABLEKS                       R3 R4 K15 ["withNavigation"]
       46 MOVE                             R4 R1
       47 CALL                             R3 1 1
       48 MOVE                             R1 R3
       49 GETUPVAL                         R4 12
       50 GETTABLEKS                       R3 R4 K16 ["connect"]
       52 LOADNIL                          R4
       53 MOVE                             R5 R2
       54 CALL                             R3 2 1
       55 MOVE                             R4 R1
       56 CALL                             R3 1 1
       57 MOVE                             R1 R3
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K17 ["createElement"]
       61 MOVE                             R4 R1
       62 MOVE                             R5 R0
       63 CALL                             R3 2 -1
       64 RETURN                           R3 -1

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 OR                               R1 R2 R0
        3 DUPTABLE                         R2 K7 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "TryInsert", "TryOpenAssetConfig"}]
        4 GETTABLEKS                       R3 R1 K1 ["CanInsertAsset"]
        6 SETTABLEKS                       R3 R2 K1 ["CanInsertAsset"]
        8 GETTABLEKS                       R3 R1 K2 ["LogAssetImpression"]
       10 SETTABLEKS                       R3 R2 K2 ["LogAssetImpression"]
       12 GETTABLEKS                       R3 R1 K3 ["OnAssetPreviewButtonClicked"]
       14 SETTABLEKS                       R3 R2 K3 ["OnAssetPreviewButtonClicked"]
       16 GETUPVAL                         R4 0
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETTABLEKS                       R3 R1 K4 ["OnSearchByCreator"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K4 ["OnSearchByCreator"]
       25 GETTABLEKS                       R3 R1 K5 ["TryInsert"]
       27 SETTABLEKS                       R3 R2 K5 ["TryInsert"]
       29 GETTABLEKS                       R3 R1 K6 ["TryOpenAssetConfig"]
       31 SETTABLEKS                       R3 R2 K6 ["TryOpenAssetConfig"]
       33 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R5 R1 K0 ["childCount"]
        2 JUMPIFNOTEQKN                    R5 K1 [0] ; [+39]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["navigateTo"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K3 ["NAVIGATION"]
       10 GETTABLEKS                       R6 R7 K4 ["RESULTS"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K5 ["HOMEVIEW_SEARCH_CATEGORY"]
       15 MOVE                             R8 R0
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K6 ["join"]
       19 GETUPVAL                         R10 0
       20 GETUPVAL                         R11 3
       21 GETUPVAL                         R12 0
       22 CALL                             R11 1 1
       23 DUPTABLE                         R12 K12 [{"CategoryName", "SortName", "SearchSource", "QueryParams", "SwimlaneName"}]
       24 SETTABLEKS                       R2 R12 K7 ["CategoryName"]
       26 SETTABLEKS                       R3 R12 K8 ["SortName"]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R14 R15 K13 ["SEARCH_SOURCE"]
       31 GETTABLEKS                       R13 R14 K14 ["CATEGORY"]
       33 SETTABLEKS                       R13 R12 K9 ["SearchSource"]
       35 SETTABLEKS                       R4 R12 K10 ["QueryParams"]
       37 SETTABLEKS                       R0 R12 K11 ["SwimlaneName"]
       39 CALL                             R9 3 -1
       40 CALL                             R5 -1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K2 ["navigateTo"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K3 ["NAVIGATION"]
       48 GETTABLEKS                       R6 R7 K15 ["SUBCATEGORY"]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K5 ["HOMEVIEW_SEARCH_CATEGORY"]
       53 MOVE                             R8 R0
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R9 R10 K6 ["join"]
       57 GETUPVAL                         R10 0
       58 GETUPVAL                         R11 3
       59 GETUPVAL                         R12 0
       60 CALL                             R11 1 1
       61 DUPTABLE                         R12 K19 [{"CategoryName", "SortName", "SubcategoryPath", "SubcategoryDict", "TopKeywords", "QueryParams"}]
       62 SETTABLEKS                       R2 R12 K7 ["CategoryName"]
       64 SETTABLEKS                       R3 R12 K8 ["SortName"]
       66 NEWTABLE                         R13 0 1
       68 MOVE                             R14 R0
       69 SETLIST                          R13 R14 1 [1]
       71 SETTABLEKS                       R13 R12 K16 ["SubcategoryPath"]
       73 GETTABLEKS                       R13 R1 K20 ["children"]
       75 SETTABLEKS                       R13 R12 K17 ["SubcategoryDict"]
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R13 R14 K18 ["TopKeywords"]
       80 SETTABLEKS                       R13 R12 K18 ["TopKeywords"]
       82 SETTABLEKS                       R4 R12 K10 ["QueryParams"]
       84 CALL                             R9 3 -1
       85 CALL                             R5 -1 0
       86 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["navigateTo"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["NAVIGATION"]
        6 GETTABLEKS                       R4 R5 K2 ["ALL_SUBCATEGORIES"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R7 R8 K1 ["NAVIGATION"]
       14 GETTABLEKS                       R6 R7 K2 ["ALL_SUBCATEGORIES"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K4 ["join"]
       19 GETUPVAL                         R8 0
       20 GETUPVAL                         R9 3
       21 GETUPVAL                         R10 0
       22 CALL                             R9 1 1
       23 DUPTABLE                         R10 K8 [{"CategoryName", "SortName", "SubcategoryDict"}]
       24 SETTABLEKS                       R1 R10 K5 ["CategoryName"]
       26 SETTABLEKS                       R2 R10 K6 ["SortName"]
       28 SETTABLEKS                       R0 R10 K7 ["SubcategoryDict"]
       30 CALL                             R7 3 -1
       31 CALL                             R3 -1 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["navigateTo"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K1 ["NAVIGATION"]
        6 GETTABLEKS                       R6 R7 K2 ["RESULTS"]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R0
       10 GETUPVAL                         R10 2
       11 GETTABLEKS                       R9 R10 K3 ["join"]
       13 GETUPVAL                         R10 0
       14 GETUPVAL                         R11 3
       15 GETUPVAL                         R12 0
       16 CALL                             R11 1 1
       17 DUPTABLE                         R12 K10 [{"CategoryName", "SearchTerm", "SectionName", "SortName", "QueryParams", "SwimlaneName"}]
       18 SETTABLEKS                       R1 R12 K4 ["CategoryName"]
       20 SETTABLEKS                       R3 R12 K5 ["SearchTerm"]
       22 SETTABLEKS                       R0 R12 K6 ["SectionName"]
       24 SETTABLEKS                       R2 R12 K7 ["SortName"]
       26 SETTABLEKS                       R4 R12 K8 ["QueryParams"]
       28 SETTABLEKS                       R0 R12 K9 ["SwimlaneName"]
       30 CALL                             R9 3 -1
       31 CALL                             R5 -1 0
       32 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["AssetType"]
        3 GETIMPORT                        R3 K3 [Enum.AssetType.Audio]
        5 JUMPIFNOTEQ                      R2 R3 ; [+3]
        7 GETUPVAL                         R1 0
        8 JUMP                             ; [+9]
        9 GETTABLEKS                       R2 R0 K0 ["AssetType"]
       11 GETIMPORT                        R3 K5 [Enum.AssetType.FontFamily]
       13 JUMPIFNOTEQ                      R2 R3 ; [+3]
       15 GETUPVAL                         R1 1
       16 JUMP                             ; [+1]
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K6 ["createElement"]
       21 MOVE                             R3 R1
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R4 R5 K7 ["join"]
       25 GETUPVAL                         R5 5
       26 MOVE                             R6 R0
       27 CALL                             R5 1 1
       28 DUPTABLE                         R6 K19 [{"AssetSections", "CategoryName", "OnClickSubcategory", "OnClickSeeAllSubcategories", "OnClickSeeAllAssets", "SubcategoryDict", "SortName", "Size", "TopKeywords", "MaxWidth", "LogPageView"}]
       29 GETTABLEKS                       R7 R0 K8 ["AssetSections"]
       31 SETTABLEKS                       R7 R6 K8 ["AssetSections"]
       33 GETTABLEKS                       R7 R0 K9 ["CategoryName"]
       35 SETTABLEKS                       R7 R6 K9 ["CategoryName"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 SETTABLEKS                       R7 R6 K10 ["OnClickSubcategory"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 SETTABLEKS                       R7 R6 K11 ["OnClickSeeAllSubcategories"]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 SETTABLEKS                       R7 R6 K12 ["OnClickSeeAllAssets"]
       58 GETTABLEKS                       R7 R0 K13 ["SubcategoryDict"]
       60 SETTABLEKS                       R7 R6 K13 ["SubcategoryDict"]
       62 GETTABLEKS                       R7 R0 K14 ["SortName"]
       64 SETTABLEKS                       R7 R6 K14 ["SortName"]
       66 GETIMPORT                        R7 K22 [UDim2.new]
       68 LOADN                            R8 1
       69 LOADN                            R9 0
       70 LOADN                            R10 1
       71 LOADN                            R11 0
       72 CALL                             R7 4 1
       73 SETTABLEKS                       R7 R6 K15 ["Size"]
       75 GETTABLEKS                       R7 R0 K16 ["TopKeywords"]
       77 SETTABLEKS                       R7 R6 K16 ["TopKeywords"]
       79 GETTABLEKS                       R7 R0 K17 ["MaxWidth"]
       81 SETTABLEKS                       R7 R6 K17 ["MaxWidth"]
       83 GETTABLEKS                       R7 R0 K23 ["logPageView"]
       85 SETTABLEKS                       R7 R6 K18 ["LogPageView"]
       87 CALL                             R4 2 -1
       88 CALL                             R2 -1 -1
       89 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["navigateGoBack"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["navigateTo"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K1 ["NAVIGATION"]
        6 GETTABLEKS                       R6 R7 K2 ["SUBCATEGORY"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
       11 LENGTH                           R9 R0
       12 GETTABLE                         R8 R0 R9
       13 GETUPVAL                         R10 2
       14 GETTABLEKS                       R9 R10 K4 ["join"]
       16 GETUPVAL                         R10 0
       17 GETUPVAL                         R11 3
       18 GETUPVAL                         R12 0
       19 CALL                             R11 1 1
       20 DUPTABLE                         R12 K10 [{"CategoryName", "SortName", "SubcategoryPath", "SubcategoryDict", "QueryParams"}]
       21 SETTABLEKS                       R2 R12 K5 ["CategoryName"]
       23 SETTABLEKS                       R3 R12 K6 ["SortName"]
       25 SETTABLEKS                       R0 R12 K7 ["SubcategoryPath"]
       27 SETTABLEKS                       R1 R12 K8 ["SubcategoryDict"]
       29 SETTABLEKS                       R4 R12 K9 ["QueryParams"]
       31 CALL                             R9 3 -1
       32 CALL                             R5 -1 0
       33 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["navigateTo"]
        3 GETUPVAL                         R9 1
        4 GETTABLEKS                       R8 R9 K1 ["NAVIGATION"]
        6 GETTABLEKS                       R7 R8 K2 ["RESULTS"]
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R8 R9 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
       11 MOVE                             R9 R0
       12 GETUPVAL                         R11 2
       13 GETTABLEKS                       R10 R11 K4 ["join"]
       15 GETUPVAL                         R11 0
       16 GETUPVAL                         R12 3
       17 GETUPVAL                         R13 0
       18 CALL                             R12 1 1
       19 DUPTABLE                         R13 K11 [{"CategoryName", "SectionName", "SortName", "SearchSource", "QueryParams", "SwimlaneName"}]
       20 SETTABLEKS                       R1 R13 K5 ["CategoryName"]
       22 SETTABLEKS                       R0 R13 K6 ["SectionName"]
       24 SETTABLEKS                       R2 R13 K7 ["SortName"]
       26 GETUPVAL                         R16 1
       27 GETTABLEKS                       R15 R16 K12 ["SEARCH_SOURCE"]
       29 GETTABLEKS                       R14 R15 K13 ["CATEGORY"]
       31 SETTABLEKS                       R14 R13 K8 ["SearchSource"]
       33 SETTABLEKS                       R4 R13 K9 ["QueryParams"]
       35 SETTABLEKS                       R5 R13 K10 ["SwimlaneName"]
       37 CALL                             R10 3 -1
       38 CALL                             R6 -1 0
       39 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["params"]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        6 MOVE                             R3 R1
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R1 K2 ["SortName"]
       10 MOVE                             R4 R1
       11 JUMPIFNOT                        R4 ; [+2]
       12 GETTABLEKS                       R4 R1 K3 ["SubcategoryDict"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["createElement"]
       17 GETUPVAL                         R6 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K5 ["join"]
       21 GETUPVAL                         R8 3
       22 MOVE                             R9 R0
       23 CALL                             R8 1 1
       24 DUPTABLE                         R9 K10 [{"CategoryName", "OnClickBack", "OnClickSubcategory", "OnClickSeeAllAssets", "SortName", "Size", "SubcategoryDict"}]
       25 SETTABLEKS                       R2 R9 K1 ["CategoryName"]
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R10 R9 K6 ["OnClickBack"]
       31 NEWCLOSURE                       R10 P1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 SETTABLEKS                       R10 R9 K7 ["OnClickSubcategory"]
       38 NEWCLOSURE                       R10 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 SETTABLEKS                       R10 R9 K8 ["OnClickSeeAllAssets"]
       45 SETTABLEKS                       R3 R9 K2 ["SortName"]
       47 GETIMPORT                        R10 K13 [UDim2.new]
       49 LOADN                            R11 1
       50 LOADN                            R12 0
       51 LOADN                            R13 1
       52 LOADN                            R14 0
       53 CALL                             R10 4 1
       54 SETTABLEKS                       R10 R9 K9 ["Size"]
       56 SETTABLEKS                       R4 R9 K3 ["SubcategoryDict"]
       58 CALL                             R7 2 -1
       59 CALL                             R5 -1 -1
       60 RETURN                           R5 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["navigateGoBack"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["navigateTo"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K1 ["NAVIGATION"]
        6 GETTABLEKS                       R6 R7 K2 ["RESULTS"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K3 ["HOMEVIEW_SEARCH_CATEGORY"]
       11 MOVE                             R8 R0
       12 GETUPVAL                         R10 2
       13 GETTABLEKS                       R9 R10 K4 ["join"]
       15 GETUPVAL                         R10 0
       16 GETUPVAL                         R11 3
       17 GETUPVAL                         R12 0
       18 CALL                             R11 1 1
       19 DUPTABLE                         R12 K10 [{"CategoryName", "SearchTerm", "SortName", "SearchSource", "QueryParams"}]
       20 SETTABLEKS                       R1 R12 K5 ["CategoryName"]
       22 SETTABLEKS                       R3 R12 K6 ["SearchTerm"]
       24 SETTABLEKS                       R2 R12 K7 ["SortName"]
       26 GETUPVAL                         R15 1
       27 GETTABLEKS                       R14 R15 K11 ["SEARCH_SOURCE"]
       29 GETTABLEKS                       R13 R14 K12 ["CATEGORY"]
       31 SETTABLEKS                       R13 R12 K8 ["SearchSource"]
       33 SETTABLEKS                       R4 R12 K9 ["QueryParams"]
       35 CALL                             R9 3 -1
       36 CALL                             R5 -1 0
       37 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["params"]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        6 MOVE                             R3 R1
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R1 K2 ["SortName"]
       10 MOVE                             R4 R1
       11 JUMPIFNOT                        R4 ; [+2]
       12 GETTABLEKS                       R4 R1 K3 ["SubcategoryDict"]
       14 MOVE                             R5 R1
       15 JUMPIFNOT                        R5 ; [+2]
       16 GETTABLEKS                       R5 R1 K4 ["SubcategoryPath"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K5 ["createElement"]
       21 GETUPVAL                         R7 1
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R8 R9 K6 ["join"]
       25 GETUPVAL                         R9 3
       26 MOVE                             R10 R0
       27 CALL                             R9 1 1
       28 DUPTABLE                         R10 K11 [{"CategoryName", "MaxWidth", "OnClickBack", "OnClickSeeAllAssets", "Size", "SortName", "SubcategoryDict", "SubcategoryPath"}]
       29 SETTABLEKS                       R2 R10 K1 ["CategoryName"]
       31 GETTABLEKS                       R11 R0 K7 ["MaxWidth"]
       33 SETTABLEKS                       R11 R10 K7 ["MaxWidth"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R11 R10 K8 ["OnClickBack"]
       39 NEWCLOSURE                       R11 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 SETTABLEKS                       R11 R10 K9 ["OnClickSeeAllAssets"]
       46 GETIMPORT                        R11 K14 [UDim2.new]
       48 LOADN                            R12 1
       49 LOADN                            R13 0
       50 LOADN                            R14 1
       51 LOADN                            R15 0
       52 CALL                             R11 4 1
       53 SETTABLEKS                       R11 R10 K10 ["Size"]
       55 SETTABLEKS                       R3 R10 K2 ["SortName"]
       57 SETTABLEKS                       R4 R10 K3 ["SubcategoryDict"]
       59 SETTABLEKS                       R5 R10 K4 ["SubcategoryPath"]
       61 CALL                             R8 2 -1
       62 CALL                             R6 -1 -1
       63 RETURN                           R6 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["navigateGoBack"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["params"]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        6 MOVE                             R3 R1
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETTABLEKS                       R3 R1 K2 ["SectionName"]
       10 MOVE                             R4 R1
       11 JUMPIFNOT                        R4 ; [+2]
       12 GETTABLEKS                       R4 R1 K3 ["SearchTerm"]
       14 MOVE                             R5 R1
       15 JUMPIFNOT                        R5 ; [+2]
       16 GETTABLEKS                       R5 R1 K4 ["SortName"]
       18 MOVE                             R6 R1
       19 JUMPIFNOT                        R6 ; [+2]
       20 GETTABLEKS                       R6 R1 K5 ["SearchSource"]
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEKS                       R7 R1 K6 ["QueryParams"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 JUMPIFNOT                        R1 ; [+3]
       28 GETTABLEKS                       R8 R1 K7 ["SwimlaneName"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K8 ["createElement"]
       35 GETUPVAL                         R10 1
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R11 R12 K9 ["join"]
       39 GETUPVAL                         R12 3
       40 MOVE                             R13 R0
       41 CALL                             R12 1 1
       42 DUPTABLE                         R13 K12 [{"CategoryName", "OnClickBack", "SearchTerm", "SectionName", "Size", "SortName", "SearchSource", "QueryParams", "SwimlaneName"}]
       43 SETTABLEKS                       R2 R13 K1 ["CategoryName"]
       45 NEWCLOSURE                       R14 P0
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R14 R13 K10 ["OnClickBack"]
       49 SETTABLEKS                       R4 R13 K3 ["SearchTerm"]
       51 SETTABLEKS                       R3 R13 K2 ["SectionName"]
       53 GETIMPORT                        R14 K15 [UDim2.new]
       55 LOADN                            R15 1
       56 LOADN                            R16 0
       57 LOADN                            R17 1
       58 LOADN                            R18 0
       59 CALL                             R14 4 1
       60 SETTABLEKS                       R14 R13 K11 ["Size"]
       62 SETTABLEKS                       R5 R13 K4 ["SortName"]
       64 SETTABLEKS                       R6 R13 K5 ["SearchSource"]
       66 SETTABLEKS                       R7 R13 K6 ["QueryParams"]
       68 SETTABLEKS                       R8 R13 K7 ["SwimlaneName"]
       70 CALL                             R11 2 -1
       71 CALL                             R9 -1 -1
       72 RETURN                           R9 -1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["NAVIGATION"]
        5 GETTABLEKS                       R2 R3 K2 ["HOME"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K3 ["createRobloxStackNavigator"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K6 [{"initialRouteName", "initialRouteParams"}]
       12 SETTABLEKS                       R2 R5 K4 ["initialRouteName"]
       14 SETTABLEKS                       R1 R5 K5 ["initialRouteParams"]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K7 ["provide"]
       20 NEWTABLE                         R5 0 1
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R6 R7 K8 ["new"]
       25 MOVE                             R7 R2
       26 CALL                             R6 1 -1
       27 SETLIST                          R5 R6 -1 [1]
       29 GETUPVAL                         R7 5
       30 GETTABLEKS                       R6 R7 K9 ["createElement"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K10 ["createAppContainer"]
       35 MOVE                             R8 R3
       36 CALL                             R7 1 -1
       37 CALL                             R6 -1 -1
       38 CALL                             R4 -1 -1
       39 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["SharedFlags"]
       15 GETTABLEKS                       R2 R3 K9 ["getFFlagToolboxFixInventoryGridSearch"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K10 ["Packages"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K11 ["Framework"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R2 K12 ["Cryo"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R2 K13 ["Roact"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R2 K14 ["RoactRodux"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R9 R0 K10 ["Packages"]
       44 GETTABLEKS                       R8 R9 K15 ["RoactNavigation"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R11 R0 K6 ["Src"]
       51 GETTABLEKS                       R10 R11 K7 ["Util"]
       53 GETTABLEKS                       R9 R10 K16 ["Constants"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R3 K17 ["ContextServices"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R13 R0 K6 ["Src"]
       62 GETTABLEKS                       R12 R13 K18 ["Types"]
       64 GETTABLEKS                       R11 R12 K19 ["AssetLogicTypes"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R2 K20 ["Dash"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R15 R0 K6 ["Src"]
       76 GETTABLEKS                       R14 R15 K21 ["Components"]
       78 GETTABLEKS                       R13 R14 K22 ["AssetLogicWrapper"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R17 R0 K6 ["Src"]
       85 GETTABLEKS                       R16 R17 K21 ["Components"]
       87 GETTABLEKS                       R15 R16 K23 ["Categorization"]
       89 GETTABLEKS                       R14 R15 K24 ["HomeView"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R18 R0 K6 ["Src"]
       96 GETTABLEKS                       R17 R18 K21 ["Components"]
       98 GETTABLEKS                       R16 R17 K25 ["Audio"]
      100 GETTABLEKS                       R15 R16 K26 ["AudioViewWrapper"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R19 R0 K6 ["Src"]
      107 GETTABLEKS                       R18 R19 K21 ["Components"]
      109 GETTABLEKS                       R17 R18 K27 ["Font"]
      111 GETTABLEKS                       R16 R17 K28 ["FontView"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R20 R0 K6 ["Src"]
      118 GETTABLEKS                       R19 R20 K21 ["Components"]
      120 GETTABLEKS                       R18 R19 K23 ["Categorization"]
      122 GETTABLEKS                       R17 R18 K29 ["ResultsView"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R21 R0 K6 ["Src"]
      129 GETTABLEKS                       R20 R21 K21 ["Components"]
      131 GETTABLEKS                       R19 R20 K23 ["Categorization"]
      133 GETTABLEKS                       R18 R19 K30 ["SubcategoriesView"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R22 R0 K6 ["Src"]
      140 GETTABLEKS                       R21 R22 K21 ["Components"]
      142 GETTABLEKS                       R20 R21 K23 ["Categorization"]
      144 GETTABLEKS                       R19 R20 K31 ["SubcategoriesSwimlaneView"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R22 R0 K6 ["Src"]
      151 GETTABLEKS                       R21 R22 K17 ["ContextServices"]
      153 GETTABLEKS                       R20 R21 K32 ["NavigationContext"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K5 [require]
      158 GETTABLEKS                       R23 R0 K6 ["Src"]
      160 GETTABLEKS                       R22 R23 K17 ["ContextServices"]
      162 GETTABLEKS                       R21 R22 K33 ["Settings"]
      164 CALL                             R20 1 1
      165 GETIMPORT                        R21 K5 [require]
      167 GETTABLEKS                       R24 R0 K6 ["Src"]
      169 GETTABLEKS                       R23 R24 K17 ["ContextServices"]
      171 GETTABLEKS                       R22 R23 K34 ["NetworkContext"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K5 [require]
      176 GETTABLEKS                       R26 R0 K6 ["Src"]
      178 GETTABLEKS                       R25 R26 K7 ["Util"]
      180 GETTABLEKS                       R24 R25 K35 ["Analytics"]
      182 GETTABLEKS                       R23 R24 K36 ["AssetAnalyticsContextItem"]
      184 CALL                             R22 1 1
      185 GETIMPORT                        R23 K5 [require]
      187 GETTABLEKS                       R26 R0 K6 ["Src"]
      189 GETTABLEKS                       R25 R26 K37 ["Thunks"]
      191 GETTABLEKS                       R24 R25 K38 ["GetPageInfoAnalyticsContextInfo"]
      193 CALL                             R23 1 1
      194 GETIMPORT                        R24 K5 [require]
      196 GETTABLEKS                       R28 R0 K6 ["Src"]
      198 GETTABLEKS                       R27 R28 K39 ["Networking"]
      200 GETTABLEKS                       R26 R27 K40 ["Requests"]
      202 GETTABLEKS                       R25 R26 K41 ["UpdatePageInfoAndSendRequest"]
      204 CALL                             R24 1 1
      205 DUPCLOSURE                       R25 K42 [PROTO_11]
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R6
      218 DUPCLOSURE                       R26 K43 [PROTO_12]
      219 CAPTURE                          VAL R1
      220 NEWTABLE                         R27 0 4
      222 NEWTABLE                         R28 1 0
      224 GETTABLEKS                       R30 R8 K44 ["NAVIGATION"]
      226 GETTABLEKS                       R29 R30 K45 ["HOME"]
      228 DUPCLOSURE                       R31 K46 [PROTO_16]
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R15
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R11
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R8
      236 NEWCLOSURE                       R30 P3
      237 CAPTURE                          VAL R5
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R22
      245 CAPTURE                          VAL R19
      246 CAPTURE                          VAL R21
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R7
      249 CAPTURE                          VAL R6
      250 SETTABLE                         R30 R28 R29
      251 NEWTABLE                         R29 1 0
      253 GETTABLEKS                       R31 R8 K44 ["NAVIGATION"]
      255 GETTABLEKS                       R30 R31 K47 ["ALL_SUBCATEGORIES"]
      257 DUPCLOSURE                       R32 K48 [PROTO_20]
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R8
      263 NEWCLOSURE                       R31 P3
      264 CAPTURE                          VAL R5
      265 CAPTURE                          VAL R4
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R32
      268 CAPTURE                          VAL R24
      269 CAPTURE                          VAL R23
      270 CAPTURE                          VAL R9
      271 CAPTURE                          VAL R22
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R21
      274 CAPTURE                          VAL R20
      275 CAPTURE                          VAL R7
      276 CAPTURE                          VAL R6
      277 SETTABLE                         R31 R29 R30
      278 NEWTABLE                         R30 1 0
      280 GETTABLEKS                       R32 R8 K44 ["NAVIGATION"]
      282 GETTABLEKS                       R31 R32 K49 ["SUBCATEGORY"]
      284 DUPCLOSURE                       R33 K50 [PROTO_23]
      285 CAPTURE                          VAL R5
      286 CAPTURE                          VAL R18
      287 CAPTURE                          VAL R11
      288 CAPTURE                          VAL R26
      289 CAPTURE                          VAL R8
      290 NEWCLOSURE                       R32 P3
      291 CAPTURE                          VAL R5
      292 CAPTURE                          VAL R4
      293 CAPTURE                          VAL R11
      294 CAPTURE                          VAL R33
      295 CAPTURE                          VAL R24
      296 CAPTURE                          VAL R23
      297 CAPTURE                          VAL R9
      298 CAPTURE                          VAL R22
      299 CAPTURE                          VAL R19
      300 CAPTURE                          VAL R21
      301 CAPTURE                          VAL R20
      302 CAPTURE                          VAL R7
      303 CAPTURE                          VAL R6
      304 SETTABLE                         R32 R30 R31
      305 NEWTABLE                         R31 1 0
      307 GETTABLEKS                       R33 R8 K44 ["NAVIGATION"]
      309 GETTABLEKS                       R32 R33 K51 ["RESULTS"]
      311 DUPCLOSURE                       R34 K52 [PROTO_25]
      312 CAPTURE                          VAL R5
      313 CAPTURE                          VAL R16
      314 CAPTURE                          VAL R11
      315 CAPTURE                          VAL R26
      316 NEWCLOSURE                       R33 P3
      317 CAPTURE                          VAL R5
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R11
      320 CAPTURE                          VAL R34
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R23
      323 CAPTURE                          VAL R9
      324 CAPTURE                          VAL R22
      325 CAPTURE                          VAL R19
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R20
      328 CAPTURE                          VAL R7
      329 CAPTURE                          VAL R6
      330 SETTABLE                         R33 R31 R32
      331 SETLIST                          R27 R28 4 [1]
      333 GETTABLEKS                       R28 R5 K53 ["PureComponent"]
      335 LOADK                            R30 K54 ["NavigationContainer"]
      336 NAMECALL                         R28 R28 K55 ["extend"]
      338 CALL                             R28 2 1
      339 DUPCLOSURE                       R29 K56 [PROTO_26]
      340 CAPTURE                          VAL R8
      341 CAPTURE                          VAL R7
      342 CAPTURE                          VAL R27
      343 CAPTURE                          VAL R9
      344 CAPTURE                          VAL R19
      345 CAPTURE                          VAL R5
      346 SETTABLEKS                       R29 R28 K57 ["render"]
      348 MOVE                             R29 R12
      349 MOVE                             R30 R28
      350 CALL                             R29 1 -1
      351 RETURN                           R29 -1
