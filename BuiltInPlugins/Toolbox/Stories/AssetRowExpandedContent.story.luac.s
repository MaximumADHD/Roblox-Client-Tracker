PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Asset Preview Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["On Insert Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
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
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K0 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K18 [{"AssetInfo", "OnAssetPreviewButtonClicked", "OnInsertClicked"}]
       34 GETUPVAL                         R11 3
       35 SETTABLEKS                       R11 R10 K15 ["AssetInfo"]
       37 DUPCLOSURE                       R11 K19 [PROTO_0]
       38 SETTABLEKS                       R11 R10 K16 ["OnAssetPreviewButtonClicked"]
       40 DUPCLOSURE                       R11 K20 [PROTO_1]
       41 SETTABLEKS                       R11 R10 K17 ["OnInsertClicked"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K13 ["List"]
       46 CALL                             R4 3 1
       47 SETTABLEKS                       R4 R3 K1 ["Frame"]
       49 CALL                             R0 3 -1
       50 RETURN                           R0 -1

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
       15 GETTABLEKS                       R2 R2 K9 ["AssetRowExpandedContent"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["TestUtils"]
       22 GETTABLEKS                       R3 R3 K11 ["MockItems"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Packages"]
       29 GETTABLEKS                       R4 R4 K13 ["Roact"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Stories"]
       36 GETTABLEKS                       R5 R5 K15 ["ToolboxStoryWrapper"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K16 ["getSimpleAsset"]
       41 LOADK                            R6 K17 [11322590111]
       42 LOADK                            R7 K18 ["Roboto"]
       43 CALL                             R5 2 1
       44 DUPTABLE                         R6 K21 [{"summary", "stories"}]
       45 LOADK                            R7 K9 ["AssetRowExpandedContent"]
       46 SETTABLEKS                       R7 R6 K19 ["summary"]
       48 NEWTABLE                         R7 0 1
       50 DUPTABLE                         R8 K24 [{"name", "story"}]
       51 LOADK                            R9 K9 ["AssetRowExpandedContent"]
       52 SETTABLEKS                       R9 R8 K22 ["name"]
       54 DUPCLOSURE                       R9 K25 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R8 K23 ["story"]
       61 SETLIST                          R7 R8 1 [1]
       63 SETTABLEKS                       R7 R6 K20 ["stories"]
       65 RETURN                           R6 1
