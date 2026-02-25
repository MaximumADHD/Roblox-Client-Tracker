PROTO_0:
        0 DUPTABLE                         R1 K1 [{"isExpanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["isExpanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["isExpanded"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"isExpanded"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isExpanded"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["updateExpanded"]
       10 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Insert Asset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Asset Preview Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Try Open Asset Config"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
        5 GETIMPORT                        R4 K8 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
        9 LOADN                            R4 1
       10 SETTABLEKS                       R4 R3 K3 ["BackgroundTransparency"]
       12 GETIMPORT                        R4 K11 [UDim2.new]
       14 LOADN                            R5 1
       15 LOADN                            R6 0
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K4 ["Size"]
       21 DUPTABLE                         R4 K13 [{"AssetRow"}]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K0 ["createElement"]
       25 GETUPVAL                         R6 1
       26 DUPTABLE                         R7 K23 [{"AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "OnExpanded", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
       27 GETUPVAL                         R8 2
       28 SETTABLEKS                       R8 R7 K14 ["AssetInfo"]
       30 DUPCLOSURE                       R8 K24 [PROTO_3]
       31 SETTABLEKS                       R8 R7 K15 ["CanInsertAsset"]
       33 DUPCLOSURE                       R8 K25 [PROTO_4]
       34 SETTABLEKS                       R8 R7 K16 ["InsertAsset"]
       36 GETTABLEKS                       R9 R0 K26 ["state"]
       38 GETTABLEKS                       R8 R9 K27 ["isExpanded"]
       40 SETTABLEKS                       R8 R7 K17 ["IsExpanded"]
       42 GETTABLEKS                       R8 R0 K28 ["updateExpanded"]
       44 SETTABLEKS                       R8 R7 K18 ["OnExpanded"]
       46 LOADN                            R8 1
       47 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       49 DUPCLOSURE                       R8 K29 [PROTO_5]
       50 SETTABLEKS                       R8 R7 K20 ["OnAssetPreviewButtonClicked"]
       52 GETIMPORT                        R8 K31 [UDim2.fromOffset]
       54 LOADN                            R9 244
       55 LOADN                            R10 244
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K21 ["ParentAbsoluteSize"]
       59 DUPCLOSURE                       R8 K32 [PROTO_6]
       60 SETTABLEKS                       R8 R7 K22 ["TryOpenAssetConfig"]
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K12 ["AssetRow"]
       65 CALL                             R1 3 -1
       66 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 CALL                             R4 1 -1
       13 SETLIST                          R3 R4 -1 [1]
       15 CALL                             R0 3 -1
       16 RETURN                           R0 -1

PROTO_9:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Insert Asset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["On Expanded id:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Asset Preview Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Try Open Asset Config"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K6 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
       12 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 LOADN                            R7 1
       17 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
       19 GETIMPORT                        R7 K12 [UDim2.new]
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 LOADN                            R10 0
       24 LOADN                            R11 0
       25 CALL                             R7 4 1
       26 SETTABLEKS                       R7 R6 K5 ["Size"]
       28 DUPTABLE                         R7 K14 [{"AssetRow"}]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K0 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K24 [{"AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "OnExpanded", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
       34 GETUPVAL                         R11 3
       35 SETTABLEKS                       R11 R10 K15 ["AssetInfo"]
       37 DUPCLOSURE                       R11 K25 [PROTO_9]
       38 SETTABLEKS                       R11 R10 K16 ["CanInsertAsset"]
       40 DUPCLOSURE                       R11 K26 [PROTO_10]
       41 SETTABLEKS                       R11 R10 K17 ["InsertAsset"]
       43 LOADB                            R11 0
       44 SETTABLEKS                       R11 R10 K18 ["IsExpanded"]
       46 DUPCLOSURE                       R11 K27 [PROTO_11]
       47 SETTABLEKS                       R11 R10 K19 ["OnExpanded"]
       49 LOADN                            R11 1
       50 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
       52 DUPCLOSURE                       R11 K28 [PROTO_12]
       53 SETTABLEKS                       R11 R10 K21 ["OnAssetPreviewButtonClicked"]
       55 GETIMPORT                        R11 K30 [UDim2.fromOffset]
       57 LOADN                            R12 244
       58 LOADN                            R13 244
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K22 ["ParentAbsoluteSize"]
       62 DUPCLOSURE                       R11 K31 [PROTO_13]
       63 SETTABLEKS                       R11 R10 K23 ["TryOpenAssetConfig"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K13 ["AssetRow"]
       68 CALL                             R4 3 1
       69 SETTABLEKS                       R4 R3 K1 ["Frame"]
       71 CALL                             R0 3 -1
       72 RETURN                           R0 -1

PROTO_15:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_16:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Insert Asset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["On Expanded"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Asset Preview Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Try Open Asset Config"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K6 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
       12 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 LOADN                            R7 1
       17 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
       19 GETIMPORT                        R7 K12 [UDim2.new]
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 LOADN                            R10 0
       24 LOADN                            R11 0
       25 CALL                             R7 4 1
       26 SETTABLEKS                       R7 R6 K5 ["Size"]
       28 DUPTABLE                         R7 K14 [{"AssetRow"}]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K0 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K24 [{"AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "OnExpanded", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
       34 GETUPVAL                         R11 3
       35 SETTABLEKS                       R11 R10 K15 ["AssetInfo"]
       37 DUPCLOSURE                       R11 K25 [PROTO_15]
       38 SETTABLEKS                       R11 R10 K16 ["CanInsertAsset"]
       40 DUPCLOSURE                       R11 K26 [PROTO_16]
       41 SETTABLEKS                       R11 R10 K17 ["InsertAsset"]
       43 LOADB                            R11 1
       44 SETTABLEKS                       R11 R10 K18 ["IsExpanded"]
       46 DUPCLOSURE                       R11 K27 [PROTO_17]
       47 SETTABLEKS                       R11 R10 K19 ["OnExpanded"]
       49 LOADN                            R11 1
       50 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
       52 DUPCLOSURE                       R11 K28 [PROTO_18]
       53 SETTABLEKS                       R11 R10 K21 ["OnAssetPreviewButtonClicked"]
       55 GETIMPORT                        R11 K30 [UDim2.fromOffset]
       57 LOADN                            R12 244
       58 LOADN                            R13 244
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K22 ["ParentAbsoluteSize"]
       62 DUPCLOSURE                       R11 K31 [PROTO_19]
       63 SETTABLEKS                       R11 R10 K23 ["TryOpenAssetConfig"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K13 ["AssetRow"]
       68 CALL                             R4 3 1
       69 SETTABLEKS                       R4 R3 K1 ["Frame"]
       71 CALL                             R0 3 -1
       72 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["AssetRow"]
       15 GETTABLEKS                       R2 R3 K8 ["AssetRow"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K9 ["TestUtils"]
       22 GETTABLEKS                       R3 R4 K10 ["MockItems"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Roact"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Stories"]
       36 GETTABLEKS                       R5 R6 K14 ["ToolboxStoryWrapper"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K15 ["getSimpleAsset"]
       41 LOADK                            R6 K16 [11322590111]
       42 LOADK                            R7 K17 ["Asset Row"]
       43 CALL                             R5 2 1
       44 GETTABLEKS                       R6 R3 K18 ["PureComponent"]
       46 LOADK                            R8 K19 ["MockAssetRowInteractiveWrapper"]
       47 NAMECALL                         R6 R6 K20 ["extend"]
       49 CALL                             R6 2 1
       50 DUPCLOSURE                       R7 K21 [PROTO_2]
       51 SETTABLEKS                       R7 R6 K22 ["init"]
       53 DUPCLOSURE                       R7 K23 [PROTO_7]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R7 R6 K24 ["render"]
       59 DUPTABLE                         R7 K27 [{"summary", "stories"}]
       60 LOADK                            R8 K8 ["AssetRow"]
       61 SETTABLEKS                       R8 R7 K25 ["summary"]
       63 NEWTABLE                         R8 0 3
       65 DUPTABLE                         R9 K30 [{"name", "summary", "story"}]
       66 LOADK                            R10 K31 ["Interactive AssetRow"]
       67 SETTABLEKS                       R10 R9 K28 ["name"]
       69 LOADK                            R10 K32 ["Never expanding row (IsExpanded = false)"]
       70 SETTABLEKS                       R10 R9 K25 ["summary"]
       72 DUPCLOSURE                       R10 K33 [PROTO_8]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R10 R9 K29 ["story"]
       78 DUPTABLE                         R10 K30 [{"name", "summary", "story"}]
       79 LOADK                            R11 K34 ["Unexpanded AssetRow"]
       80 SETTABLEKS                       R11 R10 K28 ["name"]
       82 LOADK                            R11 K32 ["Never expanding row (IsExpanded = false)"]
       83 SETTABLEKS                       R11 R10 K25 ["summary"]
       85 DUPCLOSURE                       R11 K35 [PROTO_14]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R11 R10 K29 ["story"]
       92 DUPTABLE                         R11 K30 [{"name", "summary", "story"}]
       93 LOADK                            R12 K36 ["Expanded AssetRow"]
       94 SETTABLEKS                       R12 R11 K28 ["name"]
       96 LOADK                            R12 K37 ["Always expanded Row (IsExpanded = true)"]
       97 SETTABLEKS                       R12 R11 K25 ["summary"]
       99 DUPCLOSURE                       R12 K38 [PROTO_20]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R5
      104 SETTABLEKS                       R12 R11 K29 ["story"]
      106 SETLIST                          R8 R9 3 [1]
      108 SETTABLEKS                       R8 R7 K26 ["stories"]
      110 RETURN                           R7 1
