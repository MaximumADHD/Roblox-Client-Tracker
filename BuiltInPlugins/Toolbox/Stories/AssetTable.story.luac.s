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
       25 DUPTABLE                         R7 K15 [{"List"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["createElement"]
       29 GETUPVAL                         R9 2
       30 DUPTABLE                         R10 K22 [{["Assets"], ["CanInsertAsset"], ["LayoutOrder"] = 1, ["OnAssetPreviewButtonClicked"], ["ParentAbsoluteSize"], ["TryOpenAssetConfig"]}]
       31 NEWTABLE                         R11 0 3
       33 GETUPVAL                         R12 3
       34 GETUPVAL                         R13 4
       35 GETUPVAL                         R14 5
       36 SETLIST                          R11 R12 3 [1]
       38 SETTABLEKS                       R11 R10 K16 ["Assets"]
       40 DUPCLOSURE                       R11 K23 [PROTO_0]
       41 SETTABLEKS                       R11 R10 K17 ["CanInsertAsset"]
       43 DUPCLOSURE                       R11 K24 [PROTO_1]
       44 SETTABLEKS                       R11 R10 K19 ["OnAssetPreviewButtonClicked"]
       46 GETIMPORT                        R11 K26 [UDim2.fromOffset]
       48 LOADN                            R12 500
       49 LOADN                            R13 500
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K20 ["ParentAbsoluteSize"]
       53 DUPCLOSURE                       R11 K27 [PROTO_2]
       54 SETTABLEKS                       R11 R10 K21 ["TryOpenAssetConfig"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K14 ["List"]
       59 CALL                             R4 3 1
       60 SETTABLEKS                       R4 R3 K1 ["Frame"]
       62 CALL                             R0 3 -1
       63 RETURN                           R0 -1

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
       25 DUPTABLE                         R7 K15 [{"List"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["createElement"]
       29 GETUPVAL                         R9 2
       30 DUPTABLE                         R10 K22 [{["Assets"], ["CanInsertAsset"], ["LayoutOrder"] = 1, ["OnAssetPreviewButtonClicked"], ["ParentAbsoluteSize"], ["TryOpenAssetConfig"]}]
       31 NEWTABLE                         R11 0 0
       33 SETTABLEKS                       R11 R10 K16 ["Assets"]
       35 DUPCLOSURE                       R11 K23 [PROTO_4]
       36 SETTABLEKS                       R11 R10 K17 ["CanInsertAsset"]
       38 DUPCLOSURE                       R11 K24 [PROTO_5]
       39 SETTABLEKS                       R11 R10 K19 ["OnAssetPreviewButtonClicked"]
       41 GETIMPORT                        R11 K26 [UDim2.fromOffset]
       43 LOADN                            R12 500
       44 LOADN                            R13 500
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K20 ["ParentAbsoluteSize"]
       48 DUPCLOSURE                       R11 K27 [PROTO_6]
       49 SETTABLEKS                       R11 R10 K21 ["TryOpenAssetConfig"]
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K14 ["List"]
       54 CALL                             R4 3 1
       55 SETTABLEKS                       R4 R3 K1 ["Frame"]
       57 CALL                             R0 3 -1
       58 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetTable"]
       15 GETTABLEKS                       R2 R2 K8 ["AssetTable"]
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
       54 DUPTABLE                         R8 K21 [{["summary"] = "AssetTable", ["stories"]}]
       55 NEWTABLE                         R9 0 2
       57 DUPTABLE                         R10 K24 [{["name"] = "AssetTable", ["story"]}]
       58 DUPCLOSURE                       R11 K25 [PROTO_3]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R11 R10 K23 ["story"]
       67 DUPTABLE                         R11 K27 [{["name"] = "Empty table", ["story"]}]
       68 DUPCLOSURE                       R12 K28 [PROTO_7]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R12 R11 K23 ["story"]
       74 SETLIST                          R9 R10 2 [1]
       76 SETTABLEKS                       R9 R8 K20 ["stories"]
       78 RETURN                           R8 1
