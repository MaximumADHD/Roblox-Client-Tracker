PROTO_0:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Asset Preview Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Try Open Asset Config"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
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
       28 DUPTABLE                         R7 K14 [{"List"}]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K0 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K21 [{"Assets", "CanInsertAsset", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
       34 NEWTABLE                         R11 0 3
       36 GETUPVAL                         R12 3
       37 GETUPVAL                         R13 4
       38 GETUPVAL                         R14 5
       39 SETLIST                          R11 R12 3 [1]
       41 SETTABLEKS                       R11 R10 K15 ["Assets"]
       43 DUPCLOSURE                       R11 K22 [PROTO_0]
       44 SETTABLEKS                       R11 R10 K16 ["CanInsertAsset"]
       46 LOADN                            R11 1
       47 SETTABLEKS                       R11 R10 K17 ["LayoutOrder"]
       49 DUPCLOSURE                       R11 K23 [PROTO_1]
       50 SETTABLEKS                       R11 R10 K18 ["OnAssetPreviewButtonClicked"]
       52 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       54 LOADN                            R12 244
       55 LOADN                            R13 244
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K19 ["ParentAbsoluteSize"]
       59 DUPCLOSURE                       R11 K26 [PROTO_2]
       60 SETTABLEKS                       R11 R10 K20 ["TryOpenAssetConfig"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K13 ["List"]
       65 CALL                             R4 3 1
       66 SETTABLEKS                       R4 R3 K1 ["Frame"]
       68 CALL                             R0 3 -1
       69 RETURN                           R0 -1

PROTO_4:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

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
       28 DUPTABLE                         R7 K14 [{"List"}]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K0 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K21 [{"Assets", "CanInsertAsset", "LayoutOrder", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
       34 NEWTABLE                         R11 0 0
       36 SETTABLEKS                       R11 R10 K15 ["Assets"]
       38 DUPCLOSURE                       R11 K22 [PROTO_4]
       39 SETTABLEKS                       R11 R10 K16 ["CanInsertAsset"]
       41 LOADN                            R11 1
       42 SETTABLEKS                       R11 R10 K17 ["LayoutOrder"]
       44 DUPCLOSURE                       R11 K23 [PROTO_5]
       45 SETTABLEKS                       R11 R10 K18 ["OnAssetPreviewButtonClicked"]
       47 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       49 LOADN                            R12 244
       50 LOADN                            R13 244
       51 CALL                             R11 2 1
       52 SETTABLEKS                       R11 R10 K19 ["ParentAbsoluteSize"]
       54 DUPCLOSURE                       R11 K26 [PROTO_6]
       55 SETTABLEKS                       R11 R10 K20 ["TryOpenAssetConfig"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K13 ["List"]
       60 CALL                             R4 3 1
       61 SETTABLEKS                       R4 R3 K1 ["Frame"]
       63 CALL                             R0 3 -1
       64 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["AssetTable"]
       15 GETTABLEKS                       R2 R3 K8 ["AssetTable"]
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
       41 LOADN                            R6 1
       42 LOADK                            R7 K16 ["Asset Row 1"]
       43 CALL                             R5 2 1
       44 GETTABLEKS                       R6 R2 K15 ["getSimpleAsset"]
       46 LOADN                            R7 2
       47 LOADK                            R8 K17 ["Asset Row 2"]
       48 CALL                             R6 2 1
       49 GETTABLEKS                       R7 R2 K15 ["getSimpleAsset"]
       51 LOADN                            R8 3
       52 LOADK                            R9 K18 ["Asset Row 3"]
       53 CALL                             R7 2 1
       54 DUPTABLE                         R8 K21 [{"summary", "stories"}]
       55 LOADK                            R9 K8 ["AssetTable"]
       56 SETTABLEKS                       R9 R8 K19 ["summary"]
       58 NEWTABLE                         R9 0 2
       60 DUPTABLE                         R10 K24 [{"name", "story"}]
       61 LOADK                            R11 K8 ["AssetTable"]
       62 SETTABLEKS                       R11 R10 K22 ["name"]
       64 DUPCLOSURE                       R11 K25 [PROTO_3]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R11 R10 K23 ["story"]
       73 DUPTABLE                         R11 K24 [{"name", "story"}]
       74 LOADK                            R12 K26 ["Empty table"]
       75 SETTABLEKS                       R12 R11 K22 ["name"]
       77 DUPCLOSURE                       R12 K27 [PROTO_7]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R12 R11 K23 ["story"]
       83 SETLIST                          R9 R10 2 [1]
       85 SETTABLEKS                       R9 R8 K20 ["stories"]
       87 RETURN                           R8 1
