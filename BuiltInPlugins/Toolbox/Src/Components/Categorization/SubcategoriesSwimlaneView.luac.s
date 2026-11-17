PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnClickBack"]
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R3 R2
        7 CALL                             R3 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["props"]
        3 GETTABLEKS                       R6 R5 K1 ["CategoryName"]
        5 GETTABLEKS                       R7 R5 K2 ["OnClickSeeAllAssets"]
        7 GETTABLEKS                       R8 R5 K3 ["SortName"]
        9 JUMPIFNOT                        R7 ; [+8]
       10 MOVE                             R9 R7
       11 LOADNIL                          R10
       12 MOVE                             R11 R6
       13 MOVE                             R12 R8
       14 LOADNIL                          R13
       15 GETTABLEKS                       R14 R4 K4 ["queryParams"]
       17 CALL                             R9 5 0
       18 RETURN                           R0 0

PROTO_2:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["onClickSeeAllAssets"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 LOADNIL                          R8
        7 GETUPVAL                         R9 1
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R10 R10 K1 ["queryParams"]
       11 CALL                             R4 6 -1
       12 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R0 K2 ["CategoryName"]
        8 GETTABLEKS                       R3 R0 K3 ["Localization"]
       10 GETTABLEKS                       R4 R0 K4 ["Size"]
       12 GETTABLEKS                       R5 R0 K5 ["SectionName"]
       14 GETTABLEKS                       R6 R0 K6 ["SortName"]
       16 JUMPIF                           R6 ; [+5]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K7 ["getDefaultSortNameForCategory"]
       20 MOVE                             R7 R2
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R0 K8 ["SubcategoryDict"]
       24 GETTABLEKS                       R8 R0 K9 ["Stylizer"]
       26 GETTABLEKS                       R9 R0 K10 ["IncludeUnverifiedCreators"]
       28 GETTABLEKS                       R10 R0 K11 ["CanInsertAsset"]
       30 GETTABLEKS                       R11 R0 K12 ["TryInsert"]
       32 GETTABLEKS                       R12 R0 K13 ["TryOpenAssetConfig"]
       34 GETTABLEKS                       R13 R0 K14 ["OnClickSeeAllAssets"]
       36 GETUPVAL                         R14 2
       37 GETTABLEKS                       R14 R14 K15 ["getSwimlaneWidth"]
       39 GETTABLEKS                       R15 R0 K16 ["AbsoluteSize"]
       41 GETTABLEKS                       R15 R15 K17 ["X"]
       43 CALL                             R14 1 1
       44 GETTABLEKS                       R15 R0 K18 ["OnAssetPreviewButtonClicked"]
       46 NEWTABLE                         R16 0 0
       48 GETUPVAL                         R17 3
       49 GETTABLEKS                       R17 R17 K19 ["reduce"]
       51 MOVE                             R18 R7
       52 DUPCLOSURE                       R19 K20 [PROTO_2]
       53 LOADN                            R20 1
       54 CALL                             R17 3 1
       55 GETIMPORT                        R18 K22 [pairs]
       57 MOVE                             R19 R7
       58 CALL                             R18 1 3
       59 FORGPREP_NEXT                    R18
       60 LOADK                            R24 K23 ["AssetSwimlane_"]
       61 MOVE                             R25 R21
       62 CONCAT                           R23 R24 R25
       63 GETUPVAL                         R24 4
       64 GETTABLEKS                       R24 R24 K24 ["createElement"]
       66 GETUPVAL                         R25 5
       67 DUPTABLE                         R26 K44 [{["CanInsertAsset"], ["CategoryName"], ["SwimlaneCategory"], ["OnClickSeeAll"], ["NetworkInterface"], ["ShouldLogAssetOnMount"] = False, ["SortName"], ["SearchTerm"], ["IncludeUnverifiedCreators"], ["QueryParams"], ["InitialPageSize"] = 20, ["LayoutOrder"], ["LogAssetImpression"], ["OnClickSeeAllAssets"], ["OnAssetPreviewButtonClicked"], ["OnSearchByCreator"], ["PathName"], ["ParentAbsolutePosition"], ["ParentAbsoluteSize"], ["SwimlaneWidth"], ["Title"], ["TryInsert"], ["TryOpenAssetConfig"], ["ZIndex"], ["searchSource"]}]
       68 SETTABLEKS                       R10 R26 K11 ["CanInsertAsset"]
       70 SETTABLEKS                       R2 R26 K2 ["CategoryName"]
       72 GETTABLEKS                       R27 R22 K45 ["name"]
       74 SETTABLEKS                       R27 R26 K25 ["SwimlaneCategory"]
       76 NEWCLOSURE                       R27 P1
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R22
       79 SETTABLEKS                       R27 R26 K26 ["OnClickSeeAll"]
       81 GETTABLEKS                       R27 R0 K46 ["Network"]
       83 GETTABLEKS                       R27 R27 K47 ["networkInterface"]
       85 SETTABLEKS                       R27 R26 K27 ["NetworkInterface"]
       87 SETTABLEKS                       R6 R26 K6 ["SortName"]
       89 GETTABLEKS                       R27 R22 K48 ["searchKeywords"]
       91 SETTABLEKS                       R27 R26 K30 ["SearchTerm"]
       93 SETTABLEKS                       R9 R26 K10 ["IncludeUnverifiedCreators"]
       95 GETTABLEKS                       R27 R22 K49 ["queryParams"]
       97 SETTABLEKS                       R27 R26 K31 ["QueryParams"]
       99 GETTABLEKS                       R27 R22 K50 ["index"]
      101 SETTABLEKS                       R27 R26 K34 ["LayoutOrder"]
      103 GETTABLEKS                       R27 R0 K35 ["LogAssetImpression"]
      105 SETTABLEKS                       R27 R26 K35 ["LogAssetImpression"]
      107 SETTABLEKS                       R13 R26 K14 ["OnClickSeeAllAssets"]
      109 SETTABLEKS                       R15 R26 K18 ["OnAssetPreviewButtonClicked"]
      111 GETUPVAL                         R28 6
      112 CALL                             R28 0 1
      113 JUMPIFNOT                        R28 ; [+3]
      114 GETTABLEKS                       R27 R0 K36 ["OnSearchByCreator"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R27
      118 SETTABLEKS                       R27 R26 K36 ["OnSearchByCreator"]
      120 GETTABLEKS                       R27 R22 K45 ["name"]
      122 SETTABLEKS                       R27 R26 K37 ["PathName"]
      124 GETTABLEKS                       R27 R0 K51 ["AbsolutePosition"]
      126 SETTABLEKS                       R27 R26 K38 ["ParentAbsolutePosition"]
      128 GETTABLEKS                       R27 R0 K16 ["AbsoluteSize"]
      130 SETTABLEKS                       R27 R26 K39 ["ParentAbsoluteSize"]
      132 SETTABLEKS                       R14 R26 K40 ["SwimlaneWidth"]
      134 GETTABLEKS                       R27 R22 K52 ["displayName"]
      136 SETTABLEKS                       R27 R26 K41 ["Title"]
      138 SETTABLEKS                       R11 R26 K12 ["TryInsert"]
      140 SETTABLEKS                       R12 R26 K13 ["TryOpenAssetConfig"]
      142 GETTABLEKS                       R28 R22 K50 ["index"]
      144 SUB                              R27 R17 R28
      145 SETTABLEKS                       R27 R26 K42 ["ZIndex"]
      147 GETUPVAL                         R27 7
      148 GETTABLEKS                       R27 R27 K53 ["SEARCH_SOURCE"]
      150 GETTABLEKS                       R27 R27 K54 ["CATEGORY"]
      152 SETTABLEKS                       R27 R26 K43 ["searchSource"]
      154 CALL                             R24 2 1
      155 SETTABLE                         R24 R16 R23
      156 FORGLOOP                         R18 2 ; [-97]
      158 RETURN                           R16 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClickBack"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onClickSeeAllAssets"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 SETTABLEKS                       R1 R0 K2 ["renderSwimlanes"]
       19 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["SectionName"]
       12 GETTABLEKS                       R7 R1 K6 ["SortName"]
       14 JUMPIF                           R7 ; [+5]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K7 ["getDefaultSortNameForCategory"]
       18 MOVE                             R8 R2
       19 CALL                             R7 1 1
       20 GETTABLEKS                       R8 R1 K8 ["SubcategoryDict"]
       22 GETTABLEKS                       R9 R1 K9 ["Stylizer"]
       24 GETTABLEKS                       R10 R1 K10 ["CanInsertAsset"]
       26 GETTABLEKS                       R11 R1 K11 ["TryInsert"]
       28 GETTABLEKS                       R12 R1 K12 ["TryOpenAssetConfig"]
       30 GETTABLEKS                       R13 R1 K13 ["OnClickSeeAllAssets"]
       32 GETTABLEKS                       R14 R0 K14 ["renderSwimlanes"]
       34 CALL                             R14 0 1
       35 LOADK                            R16 K15 ["< "]
       36 LOADK                            R19 K16 ["General"]
       37 LOADK                            R20 K17 ["BackToHome"]
       38 DUPTABLE                         R21 K19 [{"assetType"}]
       39 GETUPVAL                         R23 1
       40 MOVE                             R24 R4
       41 CALL                             R23 1 1
       42 GETTABLEKS                       R24 R1 K1 ["CategoryName"]
       44 GETTABLE                         R22 R23 R24
       45 SETTABLEKS                       R22 R21 K18 ["assetType"]
       47 NAMECALL                         R17 R4 K20 ["getText"]
       49 CALL                             R17 4 1
       50 CONCAT                           R15 R16 R17
       51 GETUPVAL                         R16 2
       52 GETTABLEKS                       R16 R16 K21 ["join"]
       54 DUPTABLE                         R17 K23 [{"BackgroundColor3", "LayoutOrder", "Size"}]
       55 GETTABLEKS                       R18 R9 K24 ["backgroundColor"]
       57 SETTABLEKS                       R18 R17 K22 ["BackgroundColor3"]
       59 SETTABLEKS                       R3 R17 K2 ["LayoutOrder"]
       61 SETTABLEKS                       R5 R17 K4 ["Size"]
       63 GETTABLEKS                       R18 R1 K25 ["WrapperProps"]
       65 CALL                             R16 2 1
       66 GETUPVAL                         R17 3
       67 GETTABLEKS                       R17 R17 K26 ["createElement"]
       69 GETUPVAL                         R18 4
       70 MOVE                             R19 R16
       71 DUPTABLE                         R20 K28 [{"ScrollingFrame"}]
       72 GETUPVAL                         R21 3
       73 GETTABLEKS                       R21 R21 K26 ["createElement"]
       75 GETUPVAL                         R22 5
       76 DUPTABLE                         R23 K33 [{["AutoSizeCanvas"] = True, ["EnableScrollBarBackground"] = True, ["LayoutOrder"], ["Padding"], ["Size"]}]
       77 SETTABLEKS                       R3 R23 K2 ["LayoutOrder"]
       79 GETUPVAL                         R24 6
       80 GETTABLEKS                       R24 R24 K34 ["MAIN_VIEW_PADDING"]
       82 SETTABLEKS                       R24 R23 K32 ["Padding"]
       84 SETTABLEKS                       R5 R23 K4 ["Size"]
       86 DUPTABLE                         R24 K36 [{"Contents"}]
       87 GETUPVAL                         R25 3
       88 GETTABLEKS                       R25 R25 K26 ["createElement"]
       90 GETUPVAL                         R26 4
       91 DUPTABLE                         R27 K44 [{["AutomaticSize"], ["BackgroundColor3"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Spacing"] = 20, ["Size"], ["VerticalAlignment"]}]
       92 GETIMPORT                        R28 K47 [Enum.AutomaticSize.Y]
       94 SETTABLEKS                       R28 R27 K37 ["AutomaticSize"]
       96 GETTABLEKS                       R28 R9 K24 ["backgroundColor"]
       98 SETTABLEKS                       R28 R27 K22 ["BackgroundColor3"]
      100 GETIMPORT                        R28 K49 [Enum.HorizontalAlignment.Left]
      102 SETTABLEKS                       R28 R27 K38 ["HorizontalAlignment"]
      104 GETIMPORT                        R28 K52 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R28 R27 K39 ["Layout"]
      108 GETIMPORT                        R28 K55 [UDim2.new]
      110 LOADN                            R29 1
      111 LOADN                            R30 0
      112 LOADN                            R31 0
      113 LOADN                            R32 0
      114 CALL                             R28 4 1
      115 SETTABLEKS                       R28 R27 K4 ["Size"]
      117 GETIMPORT                        R28 K57 [Enum.VerticalAlignment.Top]
      119 SETTABLEKS                       R28 R27 K43 ["VerticalAlignment"]
      121 GETUPVAL                         R28 2
      122 GETTABLEKS                       R28 R28 K21 ["join"]
      124 DUPTABLE                         R29 K59 [{"BackButton"}]
      125 GETUPVAL                         R30 3
      126 GETTABLEKS                       R30 R30 K26 ["createElement"]
      128 GETUPVAL                         R31 7
      129 DUPTABLE                         R32 K65 [{["LayoutOrder"] = -1, ["OnClick"], ["Style"] = "Unobtrusive", ["Text"]}]
      130 GETTABLEKS                       R33 R0 K66 ["onClickBack"]
      132 SETTABLEKS                       R33 R32 K61 ["OnClick"]
      134 SETTABLEKS                       R15 R32 K64 ["Text"]
      136 CALL                             R30 2 1
      137 SETTABLEKS                       R30 R29 K58 ["BackButton"]
      139 MOVE                             R30 R14
      140 CALL                             R28 2 -1
      141 CALL                             R25 -1 1
      142 SETTABLEKS                       R25 R24 K35 ["Contents"]
      144 CALL                             R21 3 1
      145 SETTABLEKS                       R21 R20 K27 ["ScrollingFrame"]
      147 CALL                             R17 3 -1
      148 RETURN                           R17 -1

PROTO_7:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K2 [{"IncludeUnverifiedCreators"}]
       11 GETTABLEKS                       R4 R2 K3 ["includeUnverifiedCreators"]
       13 SETTABLEKS                       R4 R3 K1 ["IncludeUnverifiedCreators"]
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Src"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 GETTABLEKS                       R5 R5 K11 ["Sort"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["RoactRodux"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["Dash"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       40 GETTABLEKS                       R8 R7 K15 ["withContext"]
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R0 K9 ["Src"]
       46 GETTABLEKS                       R10 R10 K14 ["ContextServices"]
       48 GETTABLEKS                       R10 R10 K16 ["NetworkContext"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R10 R3 K17 ["UI"]
       53 GETTABLEKS                       R10 R10 K18 ["LinkText"]
       55 GETTABLEKS                       R11 R3 K17 ["UI"]
       57 GETTABLEKS                       R11 R11 K19 ["Pane"]
       59 GETIMPORT                        R12 K6 [require]
       61 GETTABLEKS                       R13 R0 K9 ["Src"]
       63 GETTABLEKS                       R13 R13 K20 ["Components"]
       65 GETTABLEKS                       R13 R13 K21 ["AssetLogicWrapper"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K6 [require]
       70 GETTABLEKS                       R14 R0 K9 ["Src"]
       72 GETTABLEKS                       R14 R14 K20 ["Components"]
       74 GETTABLEKS                       R14 R14 K22 ["Categorization"]
       76 GETTABLEKS                       R14 R14 K23 ["AssetSwimlane"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K6 [require]
       81 GETTABLEKS                       R15 R0 K9 ["Src"]
       83 GETTABLEKS                       R15 R15 K10 ["Types"]
       85 GETTABLEKS                       R15 R15 K24 ["HomeTypes"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K6 [require]
       90 GETTABLEKS                       R16 R0 K9 ["Src"]
       92 GETTABLEKS                       R16 R16 K25 ["Util"]
       94 GETTABLEKS                       R16 R16 K26 ["Layouter"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K6 [require]
       99 GETTABLEKS                       R17 R0 K9 ["Src"]
      101 GETTABLEKS                       R17 R17 K27 ["Localization"]
      103 GETTABLEKS                       R17 R17 K28 ["getLocalizedCategoryMap"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K6 [require]
      108 GETTABLEKS                       R18 R0 K9 ["Src"]
      110 GETTABLEKS                       R18 R18 K29 ["Models"]
      112 GETTABLEKS                       R18 R18 K30 ["AssetInfo"]
      114 CALL                             R17 1 1
      115 GETTABLEKS                       R18 R3 K17 ["UI"]
      117 GETTABLEKS                       R18 R18 K31 ["ScrollingFrame"]
      119 GETTABLEKS                       R19 R0 K9 ["Src"]
      121 GETTABLEKS                       R19 R19 K25 ["Util"]
      123 GETIMPORT                        R20 K6 [require]
      125 GETTABLEKS                       R21 R19 K32 ["Constants"]
      127 CALL                             R20 1 1
      128 GETTABLEKS                       R21 R3 K33 ["Wrappers"]
      130 GETTABLEKS                       R21 R21 K34 ["withAbsoluteSizeAndPosition"]
      132 GETIMPORT                        R22 K6 [require]
      134 GETTABLEKS                       R23 R0 K9 ["Src"]
      136 GETTABLEKS                       R23 R23 K25 ["Util"]
      138 GETTABLEKS                       R23 R23 K35 ["SharedFlags"]
      140 GETTABLEKS                       R23 R23 K36 ["getFFlagToolboxFixInventoryGridSearch"]
      142 CALL                             R22 1 1
      143 GETTABLEKS                       R23 R2 K37 ["PureComponent"]
      145 LOADK                            R25 K38 ["SubcategoriesSwimlaneView"]
      146 NAMECALL                         R23 R23 K39 ["extend"]
      148 CALL                             R23 2 1
      149 DUPTABLE                         R24 K41 [{"Size"}]
      150 GETIMPORT                        R25 K44 [UDim2.new]
      152 LOADN                            R26 1
      153 LOADN                            R27 0
      154 LOADN                            R28 1
      155 LOADN                            R29 0
      156 CALL                             R25 4 1
      157 SETTABLEKS                       R25 R24 K40 ["Size"]
      159 SETTABLEKS                       R24 R23 K45 ["defaultProps"]
      161 DUPCLOSURE                       R24 K46 [PROTO_5]
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R20
      169 SETTABLEKS                       R24 R23 K47 ["init"]
      171 DUPCLOSURE                       R24 K48 [PROTO_6]
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R10
      180 SETTABLEKS                       R24 R23 K49 ["render"]
      182 DUPCLOSURE                       R24 K50 [PROTO_7]
      183 SETGLOBAL                        R24 K51 ["mapStateToProps"]
      185 MOVE                             R24 R8
      186 DUPTABLE                         R25 K54 [{"Localization", "Stylizer", "Network"}]
      187 GETTABLEKS                       R26 R7 K27 ["Localization"]
      189 SETTABLEKS                       R26 R25 K27 ["Localization"]
      191 GETTABLEKS                       R26 R7 K52 ["Stylizer"]
      193 SETTABLEKS                       R26 R25 K52 ["Stylizer"]
      195 SETTABLEKS                       R9 R25 K53 ["Network"]
      197 CALL                             R24 1 1
      198 MOVE                             R25 R23
      199 CALL                             R24 1 1
      200 MOVE                             R23 R24
      201 GETTABLEKS                       R24 R5 K55 ["connect"]
      203 GETGLOBAL                        R25 K51 ["mapStateToProps"]
      205 CALL                             R24 1 1
      206 MOVE                             R25 R23
      207 CALL                             R24 1 1
      208 MOVE                             R23 R24
      209 MOVE                             R24 R21
      210 MOVE                             R25 R23
      211 CALL                             R24 1 -1
      212 RETURN                           R24 -1
