PROTO_0:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 1
        3 GETUPVAL                         R5 1
        4 SETLIST                          R4 R5 1 [1]
        6 LOADN                            R5 1
        7 CALL                             R3 2 -1
        8 NAMECALL                         R1 R0 K0 ["dispatch"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["fakeAsset"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R2 R0 K1 ["storeSetup"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"fakeAsset"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["fakeAsset"]
        8 DUPTABLE                         R3 K4 [{"Asset"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 3
       13 DUPTABLE                         R6 K9 [{"asset", "assetData", "assetId", "LayoutOrder"}]
       14 GETUPVAL                         R7 2
       15 SETTABLEKS                       R7 R6 K5 ["asset"]
       17 GETUPVAL                         R7 2
       18 SETTABLEKS                       R7 R6 K6 ["assetData"]
       20 LOADK                            R7 K10 [123456]
       21 SETTABLEKS                       R7 R6 K7 ["assetId"]
       23 LOADN                            R7 1
       24 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K3 ["Asset"]
       29 CALL                             R0 3 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"fakeAsset"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["fakeAsset"]
        8 NEWTABLE                         R3 0 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["createElement"]
       13 LOADK                            R5 K3 ["Frame"]
       14 DUPTABLE                         R6 K6 [{"Size", "BackgroundTransparency"}]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 250
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K4 ["Size"]
       24 LOADN                            R7 1
       25 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       27 DUPTABLE                         R7 K12 [{"Layout", "Asset"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K0 ["createElement"]
       31 LOADK                            R9 K13 ["UIListLayout"]
       32 DUPTABLE                         R10 K16 [{"VerticalAlignment", "HorizontalAlignment"}]
       33 GETIMPORT                        R11 K19 [Enum.VerticalAlignment.Center]
       35 SETTABLEKS                       R11 R10 K14 ["VerticalAlignment"]
       37 GETIMPORT                        R11 K20 [Enum.HorizontalAlignment.Center]
       39 SETTABLEKS                       R11 R10 K15 ["HorizontalAlignment"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K10 ["Layout"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K0 ["createElement"]
       47 GETUPVAL                         R9 3
       48 DUPTABLE                         R10 K26 [{"asset", "assetData", "assetId", "isHovered", "LayoutOrder"}]
       49 GETUPVAL                         R11 2
       50 SETTABLEKS                       R11 R10 K21 ["asset"]
       52 GETUPVAL                         R11 2
       53 SETTABLEKS                       R11 R10 K22 ["assetData"]
       55 LOADK                            R11 K27 [123456]
       56 SETTABLEKS                       R11 R10 K23 ["assetId"]
       58 LOADB                            R11 1
       59 SETTABLEKS                       R11 R10 K24 ["isHovered"]
       61 LOADN                            R11 1
       62 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K11 ["Asset"]
       67 CALL                             R4 3 -1
       68 SETLIST                          R3 R4 -1 [1]
       70 CALL                             R0 3 0
       71 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Src"]
       18 GETTABLEKS                       R4 R4 K8 ["Components"]
       20 GETTABLEKS                       R4 R4 K9 ["Asset"]
       22 GETTABLEKS                       R4 R4 K9 ["Asset"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Stories"]
       29 GETTABLEKS                       R5 R5 K11 ["ToolboxStoryWrapper"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["TestUtils"]
       36 GETTABLEKS                       R6 R6 K13 ["MockItems"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K7 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Actions"]
       45 GETTABLEKS                       R7 R7 K15 ["GetAssets"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K16 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 GETTABLEKS                       R8 R5 K17 ["getSimpleAsset"]
       54 LOADK                            R9 K18 [123456]
       55 CALL                             R8 1 1
       56 DUPTABLE                         R9 K22 [{"name", "summary", "stories"}]
       57 LOADK                            R10 K9 ["Asset"]
       58 SETTABLEKS                       R10 R9 K19 ["name"]
       60 LOADK                            R10 K23 ["An asset used in the grid view."]
       61 SETTABLEKS                       R10 R9 K20 ["summary"]
       63 NEWTABLE                         R10 0 2
       65 DUPTABLE                         R11 K25 [{"name", "story"}]
       66 LOADK                            R12 K9 ["Asset"]
       67 SETTABLEKS                       R12 R11 K19 ["name"]
       69 DUPCLOSURE                       R12 K26 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R12 R11 K24 ["story"]
       76 DUPTABLE                         R12 K25 [{"name", "story"}]
       77 LOADK                            R13 K27 ["Asset hovered"]
       78 SETTABLEKS                       R13 R12 K19 ["name"]
       80 DUPCLOSURE                       R13 K28 [PROTO_3]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R13 R12 K24 ["story"]
       87 SETLIST                          R10 R11 2 [1]
       89 SETTABLEKS                       R10 R9 K21 ["stories"]
       91 RETURN                           R9 1
