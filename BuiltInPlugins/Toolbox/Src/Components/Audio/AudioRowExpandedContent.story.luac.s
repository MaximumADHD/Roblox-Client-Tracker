PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["OnAssetPreviewButtonClicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Audio End"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Insert Asset"]
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
       28 DUPTABLE                         R7 K15 [{"List", "Padding"}]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K0 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K22 [{"AudioDetails", "AssetInfo", "IsPlaying", "OnAssetPreviewButtonClicked", "OnAudioEnd", "OnInsertClicked"}]
       34 GETUPVAL                         R12 3
       35 GETTABLEKS                       R11 R12 K16 ["AudioDetails"]
       37 SETTABLEKS                       R11 R10 K16 ["AudioDetails"]
       39 GETUPVAL                         R11 3
       40 SETTABLEKS                       R11 R10 K17 ["AssetInfo"]
       42 LOADB                            R11 0
       43 SETTABLEKS                       R11 R10 K18 ["IsPlaying"]
       45 DUPCLOSURE                       R11 K23 [PROTO_0]
       46 SETTABLEKS                       R11 R10 K19 ["OnAssetPreviewButtonClicked"]
       48 DUPCLOSURE                       R11 K24 [PROTO_1]
       49 SETTABLEKS                       R11 R10 K20 ["OnAudioEnd"]
       51 DUPCLOSURE                       R11 K25 [PROTO_2]
       52 SETTABLEKS                       R11 R10 K21 ["OnInsertClicked"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K13 ["List"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R8 R9 K0 ["createElement"]
       60 LOADK                            R9 K26 ["UIPadding"]
       61 DUPTABLE                         R10 K31 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       62 GETIMPORT                        R11 K33 [UDim.new]
       64 LOADN                            R12 0
       65 LOADN                            R13 10
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K27 ["PaddingTop"]
       69 GETIMPORT                        R11 K33 [UDim.new]
       71 LOADN                            R12 0
       72 LOADN                            R13 10
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K28 ["PaddingBottom"]
       76 GETIMPORT                        R11 K33 [UDim.new]
       78 LOADN                            R12 0
       79 LOADN                            R13 10
       80 CALL                             R11 2 1
       81 SETTABLEKS                       R11 R10 K29 ["PaddingLeft"]
       83 GETIMPORT                        R11 K33 [UDim.new]
       85 LOADN                            R12 0
       86 LOADN                            R13 10
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K30 ["PaddingRight"]
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K14 ["Padding"]
       93 CALL                             R4 3 1
       94 SETTABLEKS                       R4 R3 K1 ["Frame"]
       96 CALL                             R0 3 -1
       97 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["AudioRowExpandedContent"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["TestUtils"]
       20 GETTABLEKS                       R3 R4 K9 ["MockItems"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Roact"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Stories"]
       34 GETTABLEKS                       R5 R6 K13 ["ToolboxStoryWrapper"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["getSimpleAudioAsset"]
       39 LOADK                            R6 K15 [11322590111]
       40 LOADK                            R7 K16 ["Roboto"]
       41 CALL                             R5 2 1
       42 DUPTABLE                         R6 K20 [{"name", "summary", "story"}]
       43 LOADK                            R7 K7 ["AudioRowExpandedContent"]
       44 SETTABLEKS                       R7 R6 K17 ["name"]
       46 LOADK                            R7 K21 ["Expanded content component used in the AudioRow"]
       47 SETTABLEKS                       R7 R6 K18 ["summary"]
       49 DUPCLOSURE                       R7 K22 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 SETTABLEKS                       R7 R6 K19 ["story"]
       56 RETURN                           R6 1
