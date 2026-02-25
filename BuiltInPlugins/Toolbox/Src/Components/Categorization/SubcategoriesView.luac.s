PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnClickBack"]
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R2 R1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        5 GETTABLEKS                       R3 R1 K2 ["OnClickSubcategory"]
        7 GETTABLEKS                       R4 R1 K3 ["OnClickSeeAllAssets"]
        9 GETTABLEKS                       R5 R1 K4 ["SortName"]
       11 GETTABLEKS                       R6 R1 K5 ["SubcategoryDict"]
       13 GETTABLE                         R7 R6 R0
       14 GETTABLEKS                       R8 R7 K6 ["childCount"]
       16 JUMPIFNOTEQKN                    R8 K7 [0] ; [+13]
       18 JUMPIFNOT                        R4 ; [+11]
       19 MOVE                             R8 R4
       20 LOADNIL                          R9
       21 MOVE                             R10 R2
       22 MOVE                             R11 R5
       23 LOADNIL                          R12
       24 GETTABLEKS                       R13 R7 K8 ["queryParams"]
       26 GETTABLEKS                       R14 R7 K9 ["name"]
       28 CALL                             R8 6 0
       29 RETURN                           R0 0
       30 JUMPIFNOT                        R3 ; [+13]
       31 MOVE                             R8 R3
       32 NEWTABLE                         R9 0 1
       34 MOVE                             R10 R0
       35 SETLIST                          R9 R10 1 [1]
       37 GETTABLEKS                       R10 R7 K10 ["children"]
       39 MOVE                             R11 R2
       40 MOVE                             R12 R5
       41 GETTABLEKS                       R13 R7 K8 ["queryParams"]
       43 CALL                             R8 5 0
       44 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"maxTileHeight"}]
        1 GETTABLEKS                       R3 R0 K0 ["maxTileHeight"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K2 ["Y"]
        6 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [math.max]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K0 ["maxTileHeight"]
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SubcategoryDict"]
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K3 [pairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 GETTABLEKS                       R10 R7 K4 ["thumbnail"]
       16 JUMPIFNOT                        R10 ; [+20]
       17 GETIMPORT                        R10 K7 [Color3.fromHex]
       19 GETTABLEKS                       R12 R7 K4 ["thumbnail"]
       21 GETTABLEKS                       R11 R12 K8 ["backgroundColor"]
       23 CALL                             R10 1 1
       24 MOVE                             R8 R10
       25 GETTABLEKS                       R11 R7 K4 ["thumbnail"]
       27 GETTABLEKS                       R10 R11 K9 ["assetId"]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R11 R12 K10 ["constructAssetThumbnailUrl"]
       32 MOVE                             R12 R10
       33 GETUPVAL                         R13 2
       34 GETUPVAL                         R14 2
       35 CALL                             R11 3 1
       36 MOVE                             R9 R11
       37 NEWTABLE                         R10 2 0
       39 GETIMPORT                        R12 K13 [table.find]
       41 GETUPVAL                         R13 3
       42 GETTABLEKS                       R14 R7 K14 ["name"]
       44 CALL                             R12 2 1
       45 JUMPIFNOTEQKNIL                  R12 ; [+2]
       47 LOADB                            R11 0 +1
       48 LOADB                            R11 1
       49 JUMPIFNOT                        R11 ; [+9]
       50 GETTABLEKS                       R13 R0 K15 ["Stylizer"]
       52 GETTABLEKS                       R12 R13 K16 ["wideIconButtonPadding"]
       54 SETTABLEKS                       R12 R10 K17 ["ContentsPadding"]
       56 GETUPVAL                         R12 4
       57 SETTABLEKS                       R12 R10 K18 ["ImageSize"]
       59 GETTABLEKS                       R12 R7 K14 ["name"]
       61 GETUPVAL                         R14 5
       62 GETTABLEKS                       R13 R14 K19 ["createElement"]
       64 GETUPVAL                         R14 6
       65 DUPTABLE                         R15 K27 [{"BackgroundColor", "ContentsPadding", "Image", "ImageSize", "Key", "LayoutOrder", "OnClick", "Title", "OnAbsoluteSizeChanged"}]
       66 SETTABLEKS                       R8 R15 K20 ["BackgroundColor"]
       68 JUMPIFNOT                        R11 ; [+3]
       69 GETTABLEKS                       R16 R10 K17 ["ContentsPadding"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R16
       73 SETTABLEKS                       R16 R15 K17 ["ContentsPadding"]
       75 SETTABLEKS                       R9 R15 K21 ["Image"]
       77 JUMPIFNOT                        R11 ; [+3]
       78 GETTABLEKS                       R16 R10 K18 ["ImageSize"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R16
       82 SETTABLEKS                       R16 R15 K18 ["ImageSize"]
       84 GETTABLEKS                       R16 R7 K14 ["name"]
       86 SETTABLEKS                       R16 R15 K22 ["Key"]
       88 GETTABLEKS                       R16 R7 K28 ["index"]
       90 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
       92 GETUPVAL                         R17 0
       93 GETTABLEKS                       R16 R17 K29 ["onClickSubcategory"]
       95 SETTABLEKS                       R16 R15 K24 ["OnClick"]
       97 GETTABLEKS                       R16 R7 K30 ["displayName"]
       99 SETTABLEKS                       R16 R15 K25 ["Title"]
      101 GETUPVAL                         R17 0
      102 GETTABLEKS                       R16 R17 K31 ["onTileSizeChanged"]
      104 SETTABLEKS                       R16 R15 K26 ["OnAbsoluteSizeChanged"]
      106 CALL                             R13 2 1
      107 SETTABLE                         R13 R2 R12
      108 FORGLOOP                         R3 2 ; [-97]
      110 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"maxTileHeight"}]
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["maxTileHeight"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["onClickBack"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onClickSubcategory"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["onTileSizeChanged"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 SETTABLEKS                       R2 R0 K6 ["getSubcategoryElements"]
       28 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["Stylizer"]
       14 GETTABLEKS                       R8 R0 K7 ["getSubcategoryElements"]
       16 CALL                             R8 0 1
       17 LOADK                            R10 K8 ["< "]
       18 LOADK                            R13 K9 ["General"]
       19 LOADK                            R14 K10 ["BackToHome"]
       20 DUPTABLE                         R15 K12 [{"assetType"}]
       21 GETUPVAL                         R17 0
       22 MOVE                             R18 R3
       23 CALL                             R17 1 1
       24 GETTABLEKS                       R18 R1 K13 ["CategoryName"]
       26 GETTABLE                         R16 R17 R18
       27 SETTABLEKS                       R16 R15 K11 ["assetType"]
       29 NAMECALL                         R11 R3 K14 ["getText"]
       31 CALL                             R11 4 1
       32 CONCAT                           R9 R10 R11
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R10 R11 K15 ["createElement"]
       36 LOADK                            R11 K16 ["Frame"]
       37 DUPTABLE                         R12 K18 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
       38 GETTABLEKS                       R13 R7 K19 ["backgroundColor"]
       40 SETTABLEKS                       R13 R12 K17 ["BackgroundColor3"]
       42 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
       44 SETTABLEKS                       R5 R12 K4 ["Position"]
       46 SETTABLEKS                       R6 R12 K5 ["Size"]
       48 DUPTABLE                         R13 K21 [{"ScrollingFrame"}]
       49 GETUPVAL                         R15 1
       50 GETTABLEKS                       R14 R15 K15 ["createElement"]
       52 GETUPVAL                         R15 2
       53 DUPTABLE                         R16 K29 [{"AutoSizeCanvas", "AutomaticCanvasSize", "CanvasSize", "Layout", "EnableScrollBarBackground", "Padding", "Size", "Spacing"}]
       54 LOADB                            R17 1
       55 SETTABLEKS                       R17 R16 K22 ["AutoSizeCanvas"]
       57 GETIMPORT                        R17 K33 [Enum.AutomaticSize.Y]
       59 SETTABLEKS                       R17 R16 K23 ["AutomaticCanvasSize"]
       61 GETIMPORT                        R17 K36 [UDim2.new]
       63 LOADN                            R18 1
       64 LOADN                            R19 0
       65 LOADN                            R20 0
       66 LOADN                            R21 0
       67 CALL                             R17 4 1
       68 SETTABLEKS                       R17 R16 K24 ["CanvasSize"]
       70 GETIMPORT                        R17 K39 [Enum.FillDirection.Vertical]
       72 SETTABLEKS                       R17 R16 K25 ["Layout"]
       74 LOADB                            R17 1
       75 SETTABLEKS                       R17 R16 K26 ["EnableScrollBarBackground"]
       77 GETUPVAL                         R18 3
       78 GETTABLEKS                       R17 R18 K40 ["MAIN_VIEW_PADDING"]
       80 SETTABLEKS                       R17 R16 K27 ["Padding"]
       82 SETTABLEKS                       R6 R16 K5 ["Size"]
       84 GETIMPORT                        R17 K42 [UDim.new]
       86 LOADN                            R18 0
       87 GETUPVAL                         R19 4
       88 CALL                             R17 2 1
       89 SETTABLEKS                       R17 R16 K28 ["Spacing"]
       91 DUPTABLE                         R17 K45 [{"BackButton", "InnerGrid"}]
       92 GETUPVAL                         R19 1
       93 GETTABLEKS                       R18 R19 K15 ["createElement"]
       95 GETUPVAL                         R19 5
       96 DUPTABLE                         R20 K49 [{"LayoutOrder", "OnClick", "Style", "Text"}]
       97 LOADN                            R21 1
       98 SETTABLEKS                       R21 R20 K3 ["LayoutOrder"]
      100 GETTABLEKS                       R21 R0 K50 ["onClickBack"]
      102 SETTABLEKS                       R21 R20 K46 ["OnClick"]
      104 LOADK                            R21 K51 ["Unobtrusive"]
      105 SETTABLEKS                       R21 R20 K47 ["Style"]
      107 SETTABLEKS                       R9 R20 K48 ["Text"]
      109 CALL                             R18 2 1
      110 SETTABLEKS                       R18 R17 K43 ["BackButton"]
      112 GETUPVAL                         R19 1
      113 GETTABLEKS                       R18 R19 K15 ["createElement"]
      115 GETUPVAL                         R19 6
      116 DUPTABLE                         R20 K54 [{"AutomaticSize", "CutOffs", "ItemHeight", "LayoutOrder", "Size"}]
      117 GETIMPORT                        R21 K33 [Enum.AutomaticSize.Y]
      119 SETTABLEKS                       R21 R20 K31 ["AutomaticSize"]
      121 NEWTABLE                         R21 0 3
      123 DUPTABLE                         R22 K57 [{"ColumnCount", "MinWidth"}]
      124 LOADN                            R23 1
      125 SETTABLEKS                       R23 R22 K55 ["ColumnCount"]
      127 LOADN                            R23 0
      128 SETTABLEKS                       R23 R22 K56 ["MinWidth"]
      130 DUPTABLE                         R23 K57 [{"ColumnCount", "MinWidth"}]
      131 LOADN                            R24 2
      132 SETTABLEKS                       R24 R23 K55 ["ColumnCount"]
      134 LOADN                            R24 120
      135 SETTABLEKS                       R24 R23 K56 ["MinWidth"]
      137 DUPTABLE                         R24 K57 [{"ColumnCount", "MinWidth"}]
      138 LOADN                            R25 3
      139 SETTABLEKS                       R25 R24 K55 ["ColumnCount"]
      141 LOADN                            R25 224
      142 SETTABLEKS                       R25 R24 K56 ["MinWidth"]
      144 SETLIST                          R21 R22 3 [1]
      146 SETTABLEKS                       R21 R20 K52 ["CutOffs"]
      148 GETIMPORT                        R21 K42 [UDim.new]
      150 LOADN                            R22 0
      151 GETTABLEKS                       R23 R2 K58 ["maxTileHeight"]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K53 ["ItemHeight"]
      156 LOADN                            R21 2
      157 SETTABLEKS                       R21 R20 K3 ["LayoutOrder"]
      159 GETIMPORT                        R21 K36 [UDim2.new]
      161 LOADN                            R22 1
      162 LOADN                            R23 0
      163 LOADN                            R24 0
      164 LOADN                            R25 0
      165 CALL                             R21 4 1
      166 SETTABLEKS                       R21 R20 K5 ["Size"]
      168 MOVE                             R21 R8
      169 CALL                             R18 3 1
      170 SETTABLEKS                       R18 R17 K44 ["InnerGrid"]
      172 CALL                             R14 3 1
      173 SETTABLEKS                       R14 R13 K20 ["ScrollingFrame"]
      175 CALL                             R10 3 -1
      176 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R5 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Constants"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K11 ["Urls"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R2 K12 ["ContextServices"]
       39 GETTABLEKS                       R8 R7 K13 ["withContext"]
       41 GETIMPORT                        R9 K5 [require]
       43 GETTABLEKS                       R12 R0 K8 ["Src"]
       45 GETTABLEKS                       R11 R12 K14 ["Localization"]
       47 GETTABLEKS                       R10 R11 K15 ["getLocalizedCategoryMap"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R14 R0 K8 ["Src"]
       54 GETTABLEKS                       R13 R14 K16 ["Components"]
       56 GETTABLEKS                       R12 R13 K17 ["Categorization"]
       58 GETTABLEKS                       R11 R12 K18 ["IconTile"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R12 R2 K19 ["UI"]
       63 GETTABLEKS                       R11 R12 K20 ["LinkText"]
       65 GETTABLEKS                       R13 R2 K19 ["UI"]
       67 GETTABLEKS                       R12 R13 K21 ["ResponsiveGrid"]
       69 GETTABLEKS                       R14 R2 K19 ["UI"]
       71 GETTABLEKS                       R13 R14 K22 ["ScrollingFrame"]
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R17 R0 K8 ["Src"]
       77 GETTABLEKS                       R16 R17 K23 ["Types"]
       79 GETTABLEKS                       R15 R16 K24 ["HomeTypes"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K27 [UDim2.fromOffset]
       84 LOADN                            R16 75
       85 LOADN                            R17 63
       86 CALL                             R15 2 1
       87 GETTABLEKS                       R16 R5 K28 ["MAIN_VIEW_PADDING"]
       89 GETTABLEKS                       R17 R5 K29 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       91 GETTABLEKS                       R19 R5 K30 ["DISCOVER_NEW_AUDIO_SWIMLANE_TILES"]
       93 GETTABLEKS                       R18 R19 K31 ["__tbl"]
       95 GETTABLEKS                       R19 R3 K32 ["PureComponent"]
       97 LOADK                            R21 K33 ["SubcategoriesView"]
       98 NAMECALL                         R19 R19 K34 ["extend"]
      100 CALL                             R19 2 1
      101 DUPTABLE                         R20 K36 [{"Size"}]
      102 GETIMPORT                        R21 K38 [UDim2.new]
      104 LOADN                            R22 1
      105 LOADN                            R23 0
      106 LOADN                            R24 0
      107 LOADN                            R25 0
      108 CALL                             R21 4 1
      109 SETTABLEKS                       R21 R20 K35 ["Size"]
      111 SETTABLEKS                       R20 R19 K39 ["defaultProps"]
      113 DUPCLOSURE                       R20 K40 [PROTO_5]
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R10
      120 SETTABLEKS                       R20 R19 K41 ["init"]
      122 DUPCLOSURE                       R20 K42 [PROTO_6]
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R12
      130 SETTABLEKS                       R20 R19 K43 ["render"]
      132 MOVE                             R20 R8
      133 DUPTABLE                         R21 K45 [{"Localization", "Stylizer"}]
      134 GETTABLEKS                       R22 R7 K14 ["Localization"]
      136 SETTABLEKS                       R22 R21 K14 ["Localization"]
      138 GETTABLEKS                       R22 R7 K44 ["Stylizer"]
      140 SETTABLEKS                       R22 R21 K44 ["Stylizer"]
      142 CALL                             R20 1 1
      143 MOVE                             R21 R19
      144 CALL                             R20 1 1
      145 MOVE                             R19 R20
      146 RETURN                           R19 1
