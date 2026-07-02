PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        4 NAMECALL                         R0 R0 K1 ["setAssetTypeFilter"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["createElement"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["Chip"]
       14 DUPTABLE                         R5 K9 [{"LayoutOrder", "text", "size", "isChecked", "onActivated", "testId"}]
       15 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       19 LOADK                            R8 K10 ["AssetType"]
       20 GETTABLEKS                       R9 R0 K10 ["AssetType"]
       22 NAMECALL                         R6 R1 K11 ["getText"]
       24 CALL                             R6 3 1
       25 SETTABLEKS                       R6 R5 K4 ["text"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K12 ["Enums"]
       30 GETTABLEKS                       R6 R6 K13 ["ChipSize"]
       32 GETTABLEKS                       R6 R6 K14 ["Small"]
       34 SETTABLEKS                       R6 R5 K5 ["size"]
       36 GETTABLEKS                       R6 R0 K15 ["IsChecked"]
       38 SETTABLEKS                       R6 R5 K6 ["isChecked"]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       45 LOADK                            R7 K16 ["asset-type-chip-%*"]
       46 GETTABLEKS                       R9 R0 K10 ["AssetType"]
       48 NAMECALL                         R7 R7 K17 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 SETTABLEKS                       R6 R5 K8 ["testId"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Disabled"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETTABLEKS                       R2 R0 K1 ["Key"]
        6 GETUPVAL                         R3 0
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Key"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["append"]
        4 NEWTABLE                         R2 0 1
        6 MOVE                             R3 R0
        7 SETLIST                          R2 R3 1 [1]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["map"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["filter"]
       15 GETUPVAL                         R5 2
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R0
       18 CALL                             R4 2 1
       19 DUPCLOSURE                       R5 K3 [PROTO_3]
       20 CALL                             R3 2 -1
       21 CALL                             R1 -1 -1
       22 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"LayoutOrder", "AssetType", "IsChecked"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R0 R4 K2 ["AssetType"]
        9 GETUPVAL                         R6 2
       10 JUMPIFEQ                         R0 R6 ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 SETTABLEKS                       R5 R4 K3 ["IsChecked"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 NEWTABLE                         R5 0 1
       11 MOVE                             R6 R2
       12 SETLIST                          R5 R6 1 [1]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["createElement"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K2 ["ScrollView"]
       21 DUPTABLE                         R6 K8 [{["LayoutOrder"], ["layout"], ["scroll"], ["tag"] = "size-full-700"}]
       22 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
       24 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       26 DUPTABLE                         R7 K10 [{"FillDirection"}]
       27 GETIMPORT                        R8 K13 [Enum.FillDirection.Horizontal]
       29 SETTABLEKS                       R8 R7 K9 ["FillDirection"]
       31 SETTABLEKS                       R7 R6 K4 ["layout"]
       33 DUPTABLE                         R7 K17 [{"AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
       34 GETIMPORT                        R8 K20 [Enum.AutomaticSize.XY]
       36 SETTABLEKS                       R8 R7 K14 ["AutomaticCanvasSize"]
       38 GETIMPORT                        R8 K22 [Enum.ScrollingDirection.X]
       40 SETTABLEKS                       R8 R7 K15 ["ScrollingDirection"]
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R8 R8 K23 ["Enums"]
       45 GETTABLEKS                       R8 R8 K24 ["Visibility"]
       47 GETTABLEKS                       R8 R8 K25 ["None"]
       49 SETTABLEKS                       R8 R7 K16 ["scrollBarVisibility"]
       51 SETTABLEKS                       R7 R6 K5 ["scroll"]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K1 ["createElement"]
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R8 R8 K26 ["View"]
       59 DUPTABLE                         R9 K28 [{["tag"] = "row gap-small auto-xy padding-left-xsmall padding-right-xsmall"}]
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K29 ["map"]
       63 MOVE                             R11 R3
       64 NEWCLOSURE                       R12 P1
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R1
       68 CALL                             R10 2 -1
       69 CALL                             R7 -1 -1
       70 CALL                             R4 -1 -1
       71 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["Dash"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K14 ["Localization"]
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Controllers"]
       52 GETTABLEKS                       R9 R9 K16 ["SearchController"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Src"]
       59 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       61 GETTABLEKS                       R10 R10 K18 ["useSearchFilters"]
       63 CALL                             R9 1 1
       64 DUPCLOSURE                       R10 K19 [PROTO_1]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R11 K20 [PROTO_6]
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R10
       75 RETURN                           R11 1
