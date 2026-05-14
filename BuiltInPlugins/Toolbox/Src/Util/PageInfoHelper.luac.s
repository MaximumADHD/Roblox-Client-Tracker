PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTabKeyForCategoryName"]
        3 GETTABLEKS                       R2 R0 K1 ["categoryName"]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCategoryByName"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["category"]
        8 JUMPIF                           R2 ; [+19]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["shouldDebugWarnings"]
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+12]
       14 GETIMPORT                        R2 K4 [warn]
       16 LOADK                            R3 K5 ["Lua toolbox: No category for category name %s"]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R6 R0
       19 GETIMPORT                        R5 K7 [tostring]
       21 CALL                             R5 1 1
       22 NAMECALL                         R3 R3 K8 ["format"]
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 0
       26 LOADK                            R2 K9 [""]
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R1 K1 ["category"]
       30 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCategory"]
        3 GETTABLEKS                       R2 R0 K1 ["categoryName"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLE                         R2 R0 R1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R3 R2 K0 ["sort"]
        8 JUMPIF                           R3 ; [+19]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["shouldDebugWarnings"]
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+12]
       14 GETIMPORT                        R3 K3 [warn]
       16 LOADK                            R4 K4 ["Lua Toolbox: no sort for sort index %s"]
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R7 R1
       19 GETIMPORT                        R6 K6 [tostring]
       21 CALL                             R6 1 1
       22 NAMECALL                         R4 R4 K7 ["format"]
       24 CALL                             R4 2 -1
       25 CALL                             R3 -1 0
       26 LOADK                            R3 K8 [""]
       27 RETURN                           R3 1
       28 GETTABLEKS                       R3 R2 K0 ["sort"]
       30 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSortType"]
        3 GETTABLEKS                       R2 R0 K1 ["sorts"]
        5 GETTABLEKS                       R3 R0 K2 ["sortIndex"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_5:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 LOADN                            R2 1
        5 JUMPIFLT                         R1 R2 ; [+8]
        7 LENGTH                           R2 R0
        8 JUMPIFLT                         R2 R1 ; [+5]
       10 GETTABLE                         R2 R0 R1
       11 GETTABLEKS                       R2 R2 K1 ["id"]
       13 JUMPIF                           R2 ; [+19]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["shouldDebugWarnings"]
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+12]
       19 GETIMPORT                        R2 K4 [warn]
       21 LOADK                            R3 K5 ["Lua Toolbox: no group for group index %s"]
       22 FASTCALL1                        TOSTRING R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K7 [tostring]
       26 CALL                             R5 1 1
       27 NAMECALL                         R3 R3 K8 ["format"]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 0
       31 LOADN                            R2 0
       32 RETURN                           R2 1
       33 GETTABLE                         R2 R0 R1
       34 GETTABLEKS                       R2 R2 K1 ["id"]
       36 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getGroupId"]
        3 GETTABLEKS                       R2 R0 K1 ["groups"]
        5 GETTABLEKS                       R3 R0 K2 ["groupIndex"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCategoryByName"]
        3 GETTABLEKS                       R2 R0 K1 ["categoryName"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R2 R1 K2 ["assetType"]
        9 JUMPIF                           R2 ; [+20]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["shouldDebugWarnings"]
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+13]
       15 GETIMPORT                        R2 K5 [warn]
       17 LOADK                            R3 K6 ["Lua toolbox: No assetType for category name %s"]
       18 GETTABLEKS                       R6 R0 K1 ["categoryName"]
       20 FASTCALL1                        TOSTRING R6 ; [+2]
       21 GETIMPORT                        R5 K8 [tostring]
       23 CALL                             R5 1 1
       24 NAMECALL                         R3 R3 K9 ["format"]
       26 CALL                             R3 2 -1
       27 CALL                             R2 -1 0
       28 LOADNIL                          R2
       29 RETURN                           R2 1
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K10 ["getEngineAssetType"]
       33 GETTABLEKS                       R3 R1 K2 ["assetType"]
       35 CALL                             R2 1 -1
       36 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEngineAssetTypeForPageInfoCategory"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["Name"]
        8 JUMPIF                           R2 ; [+1]
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCategoryForPageInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["developCategoryType"]
        8 GETTABLE                         R2 R3 R1
        9 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCategoryForPageInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["packagesCategoryType"]
        8 GETTABLE                         R2 R3 R1
        9 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["getCategoryForPageInfo"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [""]
        6 GETTABLEKS                       R3 R0 K2 ["searchTerm"]
        8 ORK                              R2 R3 K0 [""]
        9 GETTABLEKS                       R4 R0 K4 ["targetPage"]
       11 ORK                              R3 R4 K3 [1]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["getSortTypeForPageInfo"]
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 ORK                              R4 R5 K0 [""]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K6 ["categoryIsGroupAsset"]
       21 GETTABLEKS                       R6 R0 K7 ["categoryName"]
       23 CALL                             R5 1 1
       24 JUMPIFNOT                        R5 ; [+6]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K8 ["getGroupIdForPageInfo"]
       28 MOVE                             R7 R0
       29 CALL                             R6 1 1
       30 JUMPIF                           R6 ; [+1]
       31 LOADN                            R6 0
       32 GETTABLEKS                       R8 R0 K9 ["creator"]
       34 JUMPIFNOT                        R8 ; [+5]
       35 GETTABLEKS                       R7 R0 K9 ["creator"]
       37 GETTABLEKS                       R7 R7 K10 ["Id"]
       39 JUMPIF                           R7 ; [+1]
       40 LOADK                            R7 K0 [""]
       41 GETTABLEKS                       R9 R0 K9 ["creator"]
       43 JUMPIFNOT                        R9 ; [+5]
       44 GETTABLEKS                       R8 R0 K9 ["creator"]
       46 GETTABLEKS                       R8 R8 K11 ["Type"]
       48 JUMPIF                           R8 ; [+1]
       49 LOADN                            R8 1
       50 DUPTABLE                         R9 K17 [{"category", "creatorId", "creatorType", "groupId", "searchTerm", "sortType", "targetPage"}]
       51 SETTABLEKS                       R1 R9 K12 ["category"]
       53 SETTABLEKS                       R7 R9 K13 ["creatorId"]
       55 SETTABLEKS                       R8 R9 K14 ["creatorType"]
       57 SETTABLEKS                       R6 R9 K15 ["groupId"]
       59 SETTABLEKS                       R2 R9 K2 ["searchTerm"]
       61 SETTABLEKS                       R4 R9 K16 ["sortType"]
       63 SETTABLEKS                       R3 R9 K4 ["targetPage"]
       65 RETURN                           R9 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRequestInfo"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["getRequestInfo"]
        8 NAMECALL                         R4 R1 K1 ["getState"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R4 R4 K2 ["pageInfo"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R2
       16 MOVE                             R7 R3
       17 CALL                             R5 2 1
       18 NOT                              R4 R5
       19 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["deepEqual"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R5 K7 ["Util"]
       26 GETTABLEKS                       R5 R5 K10 ["DebugFlags"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K9 ["Src"]
       33 GETTABLEKS                       R6 R6 K7 ["Util"]
       35 GETTABLEKS                       R6 R6 K11 ["AssetConfigConstants"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K9 ["Src"]
       42 GETTABLEKS                       R7 R7 K12 ["Types"]
       44 GETTABLEKS                       R7 R7 K13 ["Category"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Src"]
       51 GETTABLEKS                       R8 R8 K7 ["Util"]
       53 GETTABLEKS                       R8 R8 K14 ["Constants"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 16 0
       58 DUPCLOSURE                       R9 K15 [PROTO_0]
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R9 R8 K16 ["getCurrentTab"]
       62 DUPCLOSURE                       R9 K17 [PROTO_1]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R9 R8 K18 ["getCategory"]
       67 DUPCLOSURE                       R9 K19 [PROTO_2]
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R9 R8 K20 ["getCategoryForPageInfo"]
       71 DUPCLOSURE                       R9 K21 [PROTO_3]
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R9 R8 K22 ["getSortType"]
       75 DUPCLOSURE                       R9 K23 [PROTO_4]
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R9 R8 K24 ["getSortTypeForPageInfo"]
       79 DUPCLOSURE                       R9 K25 [PROTO_5]
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R9 R8 K26 ["getGroupId"]
       83 DUPCLOSURE                       R9 K27 [PROTO_6]
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R9 R8 K28 ["getGroupIdForPageInfo"]
       87 DUPCLOSURE                       R9 K29 [PROTO_7]
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R9 R8 K30 ["getEngineAssetTypeForPageInfoCategory"]
       92 DUPCLOSURE                       R9 K31 [PROTO_8]
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R9 R8 K32 ["getBackendNameForPageInfoCategory"]
       96 DUPCLOSURE                       R9 K33 [PROTO_9]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R9 R8 K34 ["isDeveloperCategory"]
      101 DUPCLOSURE                       R9 K35 [PROTO_10]
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R5
      104 SETTABLEKS                       R9 R8 K36 ["isPackagesCategory"]
      106 DUPCLOSURE                       R9 K37 [PROTO_11]
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R9 R8 K38 ["getRequestInfo"]
      111 DUPCLOSURE                       R9 K39 [PROTO_12]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R9 R8 K40 ["isPageInfoStale"]
      116 RETURN                           R8 1
