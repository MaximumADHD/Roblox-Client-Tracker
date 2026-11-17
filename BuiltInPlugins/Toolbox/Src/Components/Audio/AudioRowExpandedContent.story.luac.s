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
       25 DUPTABLE                         R7 K16 [{"List", "Padding"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["createElement"]
       29 GETUPVAL                         R9 2
       30 DUPTABLE                         R10 K24 [{["AudioDetails"], ["AssetInfo"], ["IsPlaying"] = False, ["OnAssetPreviewButtonClicked"], ["OnAudioEnd"], ["OnInsertClicked"]}]
       31 GETUPVAL                         R11 3
       32 GETTABLEKS                       R11 R11 K17 ["AudioDetails"]
       34 SETTABLEKS                       R11 R10 K17 ["AudioDetails"]
       36 GETUPVAL                         R11 3
       37 SETTABLEKS                       R11 R10 K18 ["AssetInfo"]
       39 DUPCLOSURE                       R11 K25 [PROTO_0]
       40 SETTABLEKS                       R11 R10 K21 ["OnAssetPreviewButtonClicked"]
       42 DUPCLOSURE                       R11 K26 [PROTO_1]
       43 SETTABLEKS                       R11 R10 K22 ["OnAudioEnd"]
       45 DUPCLOSURE                       R11 K27 [PROTO_2]
       46 SETTABLEKS                       R11 R10 K23 ["OnInsertClicked"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K14 ["List"]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K0 ["createElement"]
       54 LOADK                            R9 K28 ["UIPadding"]
       55 DUPTABLE                         R10 K33 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       56 GETIMPORT                        R11 K35 [UDim.new]
       58 LOADN                            R12 0
       59 LOADN                            R13 10
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K29 ["PaddingTop"]
       63 GETIMPORT                        R11 K35 [UDim.new]
       65 LOADN                            R12 0
       66 LOADN                            R13 10
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K30 ["PaddingBottom"]
       70 GETIMPORT                        R11 K35 [UDim.new]
       72 LOADN                            R12 0
       73 LOADN                            R13 10
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K31 ["PaddingLeft"]
       77 GETIMPORT                        R11 K35 [UDim.new]
       79 LOADN                            R12 0
       80 LOADN                            R13 10
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K32 ["PaddingRight"]
       84 CALL                             R8 2 1
       85 SETTABLEKS                       R8 R7 K15 ["Padding"]
       87 CALL                             R4 3 1
       88 SETTABLEKS                       R4 R3 K1 ["Frame"]
       90 CALL                             R0 3 -1
       91 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AudioRowExpandedContent"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["TestUtils"]
       20 GETTABLEKS                       R3 R3 K9 ["MockItems"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Roact"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Stories"]
       34 GETTABLEKS                       R5 R5 K13 ["ToolboxStoryWrapper"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["getSimpleAudioAsset"]
       39 LOADK                            R6 K15 [11322590111]
       40 LOADK                            R7 K16 ["Roboto"]
       41 CALL                             R5 2 1
       42 DUPTABLE                         R6 K21 [{["name"] = "AudioRowExpandedContent", ["summary"] = "Expanded content component used in the AudioRow", ["story"]}]
       43 DUPCLOSURE                       R7 K22 [PROTO_3]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R7 R6 K20 ["story"]
       50 RETURN                           R6 1
