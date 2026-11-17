PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnClickBack"]
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R2 R1
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K2 ["Y"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
       19 GETTABLEKS                       R11 R7 K4 ["thumbnail"]
       21 GETTABLEKS                       R11 R11 K8 ["backgroundColor"]
       23 CALL                             R10 1 1
       24 MOVE                             R8 R10
       25 GETTABLEKS                       R10 R7 K4 ["thumbnail"]
       27 GETTABLEKS                       R10 R10 K9 ["assetId"]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R11 R11 K10 ["constructAssetThumbnailUrl"]
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
       50 GETTABLEKS                       R12 R0 K15 ["Stylizer"]
       52 GETTABLEKS                       R12 R12 K16 ["wideIconButtonPadding"]
       54 SETTABLEKS                       R12 R10 K17 ["ContentsPadding"]
       56 GETUPVAL                         R12 4
       57 SETTABLEKS                       R12 R10 K18 ["ImageSize"]
       59 GETTABLEKS                       R12 R7 K14 ["name"]
       61 GETUPVAL                         R13 5
       62 GETTABLEKS                       R13 R13 K19 ["createElement"]
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
       92 GETUPVAL                         R16 0
       93 GETTABLEKS                       R16 R16 K29 ["onClickSubcategory"]
       95 SETTABLEKS                       R16 R15 K24 ["OnClick"]
       97 GETTABLEKS                       R16 R7 K30 ["displayName"]
       99 SETTABLEKS                       R16 R15 K25 ["Title"]
      101 GETUPVAL                         R16 0
      102 GETTABLEKS                       R16 R16 K31 ["onTileSizeChanged"]
      104 SETTABLEKS                       R16 R15 K26 ["OnAbsoluteSizeChanged"]
      106 CALL                             R13 2 1
      107 SETTABLE                         R13 R2 R12
      108 FORGLOOP                         R3 2 ; [-97]
      110 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{[1] = 0}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["onClickBack"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onClickSubcategory"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K6 ["onTileSizeChanged"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 SETTABLEKS                       R2 R0 K7 ["getSubcategoryElements"]
       25 RETURN                           R0 0

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
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K15 ["createElement"]
       36 LOADK                            R11 K16 ["Frame"]
       37 DUPTABLE                         R12 K18 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
       38 GETTABLEKS                       R13 R7 K19 ["backgroundColor"]
       40 SETTABLEKS                       R13 R12 K17 ["BackgroundColor3"]
       42 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
       44 SETTABLEKS                       R5 R12 K4 ["Position"]
       46 SETTABLEKS                       R6 R12 K5 ["Size"]
       48 DUPTABLE                         R13 K21 [{"ScrollingFrame"}]
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R14 R14 K15 ["createElement"]
       52 GETUPVAL                         R15 2
       53 DUPTABLE                         R16 K30 [{["AutoSizeCanvas"] = True, ["AutomaticCanvasSize"], ["CanvasSize"], ["Layout"], ["EnableScrollBarBackground"] = True, ["Padding"], ["Size"], ["Spacing"]}]
       54 GETIMPORT                        R17 K34 [Enum.AutomaticSize.Y]
       56 SETTABLEKS                       R17 R16 K24 ["AutomaticCanvasSize"]
       58 GETIMPORT                        R17 K37 [UDim2.new]
       60 LOADN                            R18 1
       61 LOADN                            R19 0
       62 LOADN                            R20 0
       63 LOADN                            R21 0
       64 CALL                             R17 4 1
       65 SETTABLEKS                       R17 R16 K25 ["CanvasSize"]
       67 GETIMPORT                        R17 K40 [Enum.FillDirection.Vertical]
       69 SETTABLEKS                       R17 R16 K26 ["Layout"]
       71 GETUPVAL                         R17 3
       72 GETTABLEKS                       R17 R17 K41 ["MAIN_VIEW_PADDING"]
       74 SETTABLEKS                       R17 R16 K28 ["Padding"]
       76 SETTABLEKS                       R6 R16 K5 ["Size"]
       78 GETIMPORT                        R17 K43 [UDim.new]
       80 LOADN                            R18 0
       81 GETUPVAL                         R19 4
       82 CALL                             R17 2 1
       83 SETTABLEKS                       R17 R16 K29 ["Spacing"]
       85 DUPTABLE                         R17 K46 [{"BackButton", "InnerGrid"}]
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R18 R18 K15 ["createElement"]
       89 GETUPVAL                         R19 5
       90 DUPTABLE                         R20 K52 [{["LayoutOrder"] = 1, ["OnClick"], ["Style"] = "Unobtrusive", ["Text"]}]
       91 GETTABLEKS                       R21 R0 K53 ["onClickBack"]
       93 SETTABLEKS                       R21 R20 K48 ["OnClick"]
       95 SETTABLEKS                       R9 R20 K51 ["Text"]
       97 CALL                             R18 2 1
       98 SETTABLEKS                       R18 R17 K44 ["BackButton"]
      100 GETUPVAL                         R18 1
      101 GETTABLEKS                       R18 R18 K15 ["createElement"]
      103 GETUPVAL                         R19 6
      104 DUPTABLE                         R20 K57 [{["AutomaticSize"], ["CutOffs"], ["ItemHeight"], ["LayoutOrder"] = 2, ["Size"]}]
      105 GETIMPORT                        R21 K34 [Enum.AutomaticSize.Y]
      107 SETTABLEKS                       R21 R20 K32 ["AutomaticSize"]
      109 NEWTABLE                         R21 0 3
      111 DUPTABLE                         R22 K61 [{["ColumnCount"] = 1, ["MinWidth"] = 0}]
      112 DUPTABLE                         R23 K63 [{["ColumnCount"] = 2, ["MinWidth"] = 376}]
      113 DUPTABLE                         R24 K66 [{["ColumnCount"] = 3, ["MinWidth"] = 736}]
      114 SETLIST                          R21 R22 3 [1]
      116 SETTABLEKS                       R21 R20 K54 ["CutOffs"]
      118 GETIMPORT                        R21 K43 [UDim.new]
      120 LOADN                            R22 0
      121 GETTABLEKS                       R23 R2 K67 ["maxTileHeight"]
      123 CALL                             R21 2 1
      124 SETTABLEKS                       R21 R20 K55 ["ItemHeight"]
      126 GETIMPORT                        R21 K37 [UDim2.new]
      128 LOADN                            R22 1
      129 LOADN                            R23 0
      130 LOADN                            R24 0
      131 LOADN                            R25 0
      132 CALL                             R21 4 1
      133 SETTABLEKS                       R21 R20 K5 ["Size"]
      135 MOVE                             R21 R8
      136 CALL                             R18 3 1
      137 SETTABLEKS                       R18 R17 K45 ["InnerGrid"]
      139 CALL                             R14 3 1
      140 SETTABLEKS                       R14 R13 K20 ["ScrollingFrame"]
      142 CALL                             R10 3 -1
      143 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Constants"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K11 ["Urls"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R2 K12 ["ContextServices"]
       39 GETTABLEKS                       R8 R7 K13 ["withContext"]
       41 GETIMPORT                        R9 K5 [require]
       43 GETTABLEKS                       R10 R0 K8 ["Src"]
       45 GETTABLEKS                       R10 R10 K14 ["Localization"]
       47 GETTABLEKS                       R10 R10 K15 ["getLocalizedCategoryMap"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R0 K8 ["Src"]
       54 GETTABLEKS                       R11 R11 K16 ["Components"]
       56 GETTABLEKS                       R11 R11 K17 ["Categorization"]
       58 GETTABLEKS                       R11 R11 K18 ["IconTile"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R2 K19 ["UI"]
       63 GETTABLEKS                       R11 R11 K20 ["LinkText"]
       65 GETTABLEKS                       R12 R2 K19 ["UI"]
       67 GETTABLEKS                       R12 R12 K21 ["ResponsiveGrid"]
       69 GETTABLEKS                       R13 R2 K19 ["UI"]
       71 GETTABLEKS                       R13 R13 K22 ["ScrollingFrame"]
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R15 R0 K8 ["Src"]
       77 GETTABLEKS                       R15 R15 K23 ["Types"]
       79 GETTABLEKS                       R15 R15 K24 ["HomeTypes"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K27 [UDim2.fromOffset]
       84 LOADN                            R16 75
       85 LOADN                            R17 63
       86 CALL                             R15 2 1
       87 GETTABLEKS                       R16 R5 K28 ["MAIN_VIEW_PADDING"]
       89 GETTABLEKS                       R17 R5 K29 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       91 GETTABLEKS                       R18 R5 K30 ["DISCOVER_NEW_AUDIO_SWIMLANE_TILES"]
       93 GETTABLEKS                       R18 R18 K31 ["__tbl"]
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
