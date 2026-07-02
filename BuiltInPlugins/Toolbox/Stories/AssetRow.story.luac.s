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
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["updateExpanded"]
        7 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K6 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
        5 GETIMPORT                        R4 K9 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
        9 GETIMPORT                        R4 K12 [UDim2.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 SETTABLEKS                       R4 R3 K5 ["Size"]
       18 DUPTABLE                         R4 K14 [{"AssetRow"}]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 1
       23 DUPTABLE                         R7 K24 [{["AssetInfo"], ["CanInsertAsset"], ["InsertAsset"], ["IsExpanded"], ["OnExpanded"], ["LayoutOrder"] = 1, ["OnAssetPreviewButtonClicked"], ["ParentAbsoluteSize"], ["TryOpenAssetConfig"]}]
       24 GETUPVAL                         R8 2
       25 SETTABLEKS                       R8 R7 K15 ["AssetInfo"]
       27 DUPCLOSURE                       R8 K25 [PROTO_3]
       28 SETTABLEKS                       R8 R7 K16 ["CanInsertAsset"]
       30 DUPCLOSURE                       R8 K26 [PROTO_4]
       31 SETTABLEKS                       R8 R7 K17 ["InsertAsset"]
       33 GETTABLEKS                       R8 R0 K27 ["state"]
       35 GETTABLEKS                       R8 R8 K28 ["isExpanded"]
       37 SETTABLEKS                       R8 R7 K18 ["IsExpanded"]
       39 GETTABLEKS                       R8 R0 K29 ["updateExpanded"]
       41 SETTABLEKS                       R8 R7 K19 ["OnExpanded"]
       43 DUPCLOSURE                       R8 K30 [PROTO_5]
       44 SETTABLEKS                       R8 R7 K21 ["OnAssetPreviewButtonClicked"]
       46 GETIMPORT                        R8 K32 [UDim2.fromOffset]
       48 LOADN                            R9 500
       49 LOADN                            R10 500
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K22 ["ParentAbsoluteSize"]
       53 DUPCLOSURE                       R8 K33 [PROTO_6]
       54 SETTABLEKS                       R8 R7 K23 ["TryOpenAssetConfig"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K13 ["AssetRow"]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K7 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
       12 GETIMPORT                        R7 K10 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 GETIMPORT                        R7 K13 [UDim2.new]
       18 LOADN                            R8 1
       19 LOADN                            R9 0
       20 LOADN                            R10 0
       21 LOADN                            R11 0
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K6 ["Size"]
       25 DUPTABLE                         R7 K15 [{"AssetRow"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["createElement"]
       29 GETUPVAL                         R9 2
       30 DUPTABLE                         R10 K26 [{["AssetInfo"], ["CanInsertAsset"], ["InsertAsset"], ["IsExpanded"] = False, ["OnExpanded"], ["LayoutOrder"] = 1, ["OnAssetPreviewButtonClicked"], ["ParentAbsoluteSize"], ["TryOpenAssetConfig"]}]
       31 GETUPVAL                         R11 3
       32 SETTABLEKS                       R11 R10 K16 ["AssetInfo"]
       34 DUPCLOSURE                       R11 K27 [PROTO_9]
       35 SETTABLEKS                       R11 R10 K17 ["CanInsertAsset"]
       37 DUPCLOSURE                       R11 K28 [PROTO_10]
       38 SETTABLEKS                       R11 R10 K18 ["InsertAsset"]
       40 DUPCLOSURE                       R11 K29 [PROTO_11]
       41 SETTABLEKS                       R11 R10 K21 ["OnExpanded"]
       43 DUPCLOSURE                       R11 K30 [PROTO_12]
       44 SETTABLEKS                       R11 R10 K23 ["OnAssetPreviewButtonClicked"]
       46 GETIMPORT                        R11 K32 [UDim2.fromOffset]
       48 LOADN                            R12 500
       49 LOADN                            R13 500
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K24 ["ParentAbsoluteSize"]
       53 DUPCLOSURE                       R11 K33 [PROTO_13]
       54 SETTABLEKS                       R11 R10 K25 ["TryOpenAssetConfig"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K14 ["AssetRow"]
       59 CALL                             R4 3 1
       60 SETTABLEKS                       R4 R3 K1 ["Frame"]
       62 CALL                             R0 3 -1
       63 RETURN                           R0 -1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K7 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
       12 GETIMPORT                        R7 K10 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 GETIMPORT                        R7 K13 [UDim2.new]
       18 LOADN                            R8 1
       19 LOADN                            R9 0
       20 LOADN                            R10 0
       21 LOADN                            R11 0
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K6 ["Size"]
       25 DUPTABLE                         R7 K15 [{"AssetRow"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["createElement"]
       29 GETUPVAL                         R9 2
       30 DUPTABLE                         R10 K26 [{["AssetInfo"], ["CanInsertAsset"], ["InsertAsset"], ["IsExpanded"] = True, ["OnExpanded"], ["LayoutOrder"] = 1, ["OnAssetPreviewButtonClicked"], ["ParentAbsoluteSize"], ["TryOpenAssetConfig"]}]
       31 GETUPVAL                         R11 3
       32 SETTABLEKS                       R11 R10 K16 ["AssetInfo"]
       34 DUPCLOSURE                       R11 K27 [PROTO_15]
       35 SETTABLEKS                       R11 R10 K17 ["CanInsertAsset"]
       37 DUPCLOSURE                       R11 K28 [PROTO_16]
       38 SETTABLEKS                       R11 R10 K18 ["InsertAsset"]
       40 DUPCLOSURE                       R11 K29 [PROTO_17]
       41 SETTABLEKS                       R11 R10 K21 ["OnExpanded"]
       43 DUPCLOSURE                       R11 K30 [PROTO_18]
       44 SETTABLEKS                       R11 R10 K23 ["OnAssetPreviewButtonClicked"]
       46 GETIMPORT                        R11 K32 [UDim2.fromOffset]
       48 LOADN                            R12 500
       49 LOADN                            R13 500
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K24 ["ParentAbsoluteSize"]
       53 DUPCLOSURE                       R11 K33 [PROTO_19]
       54 SETTABLEKS                       R11 R10 K25 ["TryOpenAssetConfig"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K14 ["AssetRow"]
       59 CALL                             R4 3 1
       60 SETTABLEKS                       R4 R3 K1 ["Frame"]
       62 CALL                             R0 3 -1
       63 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetRow"]
       15 GETTABLEKS                       R2 R2 K8 ["AssetRow"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K9 ["TestUtils"]
       22 GETTABLEKS                       R3 R3 K10 ["MockItems"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["Roact"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Stories"]
       36 GETTABLEKS                       R5 R5 K14 ["ToolboxStoryWrapper"]
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
       59 DUPTABLE                         R7 K27 [{["summary"] = "AssetRow", ["stories"]}]
       60 NEWTABLE                         R8 0 3
       62 DUPTABLE                         R9 K32 [{["name"] = "Interactive AssetRow", ["summary"] = "Never expanding row (IsExpanded = false)", ["story"]}]
       63 DUPCLOSURE                       R10 K33 [PROTO_8]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R10 R9 K31 ["story"]
       69 DUPTABLE                         R10 K35 [{["name"] = "Unexpanded AssetRow", ["summary"] = "Never expanding row (IsExpanded = false)", ["story"]}]
       70 DUPCLOSURE                       R11 K36 [PROTO_14]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R11 R10 K31 ["story"]
       77 DUPTABLE                         R11 K39 [{["name"] = "Expanded AssetRow", ["summary"] = "Always expanded Row (IsExpanded = true)", ["story"]}]
       78 DUPCLOSURE                       R12 K40 [PROTO_20]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R12 R11 K31 ["story"]
       85 SETLIST                          R8 R9 3 [1]
       87 SETTABLEKS                       R8 R7 K26 ["stories"]
       89 RETURN                           R7 1
