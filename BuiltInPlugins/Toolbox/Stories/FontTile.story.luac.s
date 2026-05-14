PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K6 [{"AutomaticSize", "BackgroundColor3", "Size"}]
       12 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 GETIMPORT                        R7 K12 [Color3.new]
       18 LOADN                            R8 255
       19 LOADN                            R9 255
       20 LOADN                            R10 255
       21 CALL                             R7 3 1
       22 SETTABLEKS                       R7 R6 K4 ["BackgroundColor3"]
       24 GETIMPORT                        R7 K14 [UDim2.new]
       26 LOADN                            R8 1
       27 LOADN                            R9 0
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 CALL                             R7 4 1
       31 SETTABLEKS                       R7 R6 K5 ["Size"]
       33 DUPTABLE                         R7 K17 [{"List", "Padding"}]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K0 ["createElement"]
       37 GETUPVAL                         R9 2
       38 DUPTABLE                         R10 K19 [{"AssetInfo"}]
       39 GETUPVAL                         R11 3
       40 SETTABLEKS                       R11 R10 K18 ["AssetInfo"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K15 ["List"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K0 ["createElement"]
       48 LOADK                            R9 K20 ["UIPadding"]
       49 DUPTABLE                         R10 K25 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       50 GETIMPORT                        R11 K27 [UDim.new]
       52 LOADN                            R12 0
       53 LOADN                            R13 10
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K21 ["PaddingTop"]
       57 GETIMPORT                        R11 K27 [UDim.new]
       59 LOADN                            R12 0
       60 LOADN                            R13 10
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K22 ["PaddingBottom"]
       64 GETIMPORT                        R11 K27 [UDim.new]
       66 LOADN                            R12 0
       67 LOADN                            R13 10
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K23 ["PaddingLeft"]
       71 GETIMPORT                        R11 K27 [UDim.new]
       73 LOADN                            R12 0
       74 LOADN                            R13 10
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K24 ["PaddingRight"]
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K16 ["Padding"]
       81 CALL                             R4 3 1
       82 SETTABLEKS                       R4 R3 K1 ["Frame"]
       84 CALL                             R0 3 -1
       85 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Components"]
       13 GETTABLEKS                       R2 R2 K7 ["Font"]
       15 GETTABLEKS                       R2 R2 K8 ["FontTile"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K9 ["TestUtils"]
       22 GETTABLEKS                       R3 R3 K10 ["MockItems"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["Roact"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Stories"]
       36 GETTABLEKS                       R5 R5 K14 ["ToolboxStoryWrapper"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K15 ["getSimpleAsset"]
       41 LOADK                            R6 K16 [11322590111]
       42 LOADK                            R7 K17 ["Roboto"]
       43 CALL                             R5 2 1
       44 DUPTABLE                         R6 K21 [{"name", "summary", "story"}]
       45 LOADK                            R7 K8 ["FontTile"]
       46 SETTABLEKS                       R7 R6 K18 ["name"]
       48 LOADK                            R7 K22 ["A FontTile component used in the grid view"]
       49 SETTABLEKS                       R7 R6 K19 ["summary"]
       51 DUPCLOSURE                       R7 K23 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R7 R6 K20 ["story"]
       58 RETURN                           R6 1
