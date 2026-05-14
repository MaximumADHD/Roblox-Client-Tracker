PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isIconHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isIconHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isIconHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isIconHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CanInsertAsset"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["InsertAsset"]
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        8 GETTABLEKS                       R1 R1 K2 ["Creator"]
       10 GETTABLEKS                       R2 R0 K3 ["OnSearchByCreator"]
       12 JUMPIFNOT                        R2 ; [+43]
       13 GETTABLEKS                       R2 R0 K3 ["OnSearchByCreator"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["props"]
       21 GETTABLEKS                       R1 R1 K4 ["Network"]
       23 GETTABLEKS                       R1 R1 K5 ["networkInterface"]
       25 GETTABLEKS                       R2 R0 K6 ["Settings"]
       27 LOADK                            R4 K7 ["Plugin"]
       28 NAMECALL                         R2 R2 K8 ["get"]
       30 CALL                             R2 2 1
       31 DUPTABLE                         R3 K9 [{"Creator"}]
       32 GETTABLEKS                       R5 R0 K1 ["AssetInfo"]
       34 GETTABLEKS                       R5 R5 K2 ["Creator"]
       36 JUMPIFNOT                        R5 ; [+7]
       37 GETTABLEKS                       R4 R0 K1 ["AssetInfo"]
       39 GETTABLEKS                       R4 R4 K2 ["Creator"]
       41 GETTABLEKS                       R4 R4 K10 ["Name"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K2 ["Creator"]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K0 ["props"]
       50 GETTABLEKS                       R4 R4 K11 ["searchWithOptions"]
       52 MOVE                             R5 R1
       53 MOVE                             R6 R2
       54 MOVE                             R7 R3
       55 CALL                             R4 3 0
       56 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"isHovered"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["getLocale"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["AssetInfo"]
       10 GETTABLEKS                       R2 R2 K4 ["Asset"]
       12 GETTABLEKS                       R4 R0 K3 ["AssetInfo"]
       14 GETTABLEKS                       R4 R4 K5 ["Creator"]
       16 JUMPIFNOT                        R4 ; [+7]
       17 GETTABLEKS                       R3 R0 K3 ["AssetInfo"]
       19 GETTABLEKS                       R3 R3 K5 ["Creator"]
       21 GETTABLEKS                       R3 R3 K6 ["Name"]
       23 JUMP                             ; [+1]
       24 LOADK                            R3 K7 ["---"]
       25 GETTABLEKS                       R5 R2 K8 ["Created"]
       27 JUMPIFNOT                        R5 ; [+3]
       28 GETTABLEKS                       R4 R2 K8 ["Created"]
       30 JUMP                             ; [+1]
       31 LOADK                            R4 K7 ["---"]
       32 GETTABLEKS                       R6 R2 K9 ["Updated"]
       34 JUMPIFNOT                        R6 ; [+3]
       35 GETTABLEKS                       R5 R2 K9 ["Updated"]
       37 JUMP                             ; [+1]
       38 LOADK                            R5 K7 ["---"]
       39 GETTABLEKS                       R6 R0 K10 ["AbsoluteSize"]
       41 JUMPIFNOT                        R6 ; [+5]
       42 GETTABLEKS                       R7 R0 K10 ["AbsoluteSize"]
       44 GETTABLEKS                       R7 R7 K11 ["X"]
       46 JUMP                             ; [+1]
       47 LOADN                            R7 0
       48 GETUPVAL                         R8 1
       49 MOVE                             R9 R7
       50 CALL                             R8 1 2
       51 NEWTABLE                         R10 0 3
       53 DUPTABLE                         R11 K17 [{"DevLabel", "OnClick", "Size", "Text", "TextTruncate"}]
       54 LOADK                            R12 K5 ["Creator"]
       55 SETTABLEKS                       R12 R11 K12 ["DevLabel"]
       57 JUMPIFEQKS                       R3 K7 ["---"] ; [+5]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K18 ["onSearchByCreator"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R12
       64 SETTABLEKS                       R12 R11 K13 ["OnClick"]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R13 R13 K19 ["ASSET_ROW_COLUMNS"]
       69 GETTABLEKS                       R13 R13 K20 ["CREATOR"]
       71 GETTABLE                         R12 R8 R13
       72 SETTABLEKS                       R12 R11 K14 ["Size"]
       74 SETTABLEKS                       R3 R11 K15 ["Text"]
       76 GETIMPORT                        R12 K23 [Enum.TextTruncate.AtEnd]
       78 SETTABLEKS                       R12 R11 K16 ["TextTruncate"]
       80 DUPTABLE                         R12 K24 [{"DevLabel", "Size", "Text", "TextTruncate"}]
       81 LOADK                            R13 K25 ["DateUpdated"]
       82 SETTABLEKS                       R13 R12 K12 ["DevLabel"]
       84 GETUPVAL                         R14 2
       85 GETTABLEKS                       R14 R14 K19 ["ASSET_ROW_COLUMNS"]
       87 GETTABLEKS                       R14 R14 K26 ["DATE_UPDATED"]
       89 GETTABLE                         R13 R8 R14
       90 SETTABLEKS                       R13 R12 K14 ["Size"]
       92 GETUPVAL                         R13 3
       93 MOVE                             R14 R5
       94 LOADK                            R15 K27 ["MMM D, YYYY"]
       95 MOVE                             R16 R1
       96 CALL                             R13 3 1
       97 SETTABLEKS                       R13 R12 K15 ["Text"]
       99 GETIMPORT                        R13 K29 [Enum.TextTruncate.None]
      101 SETTABLEKS                       R13 R12 K16 ["TextTruncate"]
      103 DUPTABLE                         R13 K31 [{"DevLabel", "Hidden", "Size", "Text", "TextTruncate"}]
      104 LOADK                            R14 K32 ["DateCreated"]
      105 SETTABLEKS                       R14 R13 K12 ["DevLabel"]
      107 GETUPVAL                         R16 2
      108 GETTABLEKS                       R16 R16 K19 ["ASSET_ROW_COLUMNS"]
      110 GETTABLEKS                       R16 R16 K33 ["DATE_CREATED"]
      112 GETTABLE                         R15 R8 R16
      113 JUMPIFEQKNIL                     R15 ; [+2]
      115 LOADB                            R14 0 +1
      116 LOADB                            R14 1
      117 SETTABLEKS                       R14 R13 K30 ["Hidden"]
      119 GETUPVAL                         R15 2
      120 GETTABLEKS                       R15 R15 K19 ["ASSET_ROW_COLUMNS"]
      122 GETTABLEKS                       R15 R15 K33 ["DATE_CREATED"]
      124 GETTABLE                         R14 R8 R15
      125 SETTABLEKS                       R14 R13 K14 ["Size"]
      127 GETUPVAL                         R14 3
      128 MOVE                             R15 R4
      129 LOADK                            R16 K27 ["MMM D, YYYY"]
      130 MOVE                             R17 R1
      131 CALL                             R14 3 1
      132 SETTABLEKS                       R14 R13 K15 ["Text"]
      134 GETIMPORT                        R14 K29 [Enum.TextTruncate.None]
      136 SETTABLEKS                       R14 R13 K16 ["TextTruncate"]
      138 SETLIST                          R10 R11 3 [1]
      140 RETURN                           R10 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R0 K2 ["AssetInfo"]
        8 GETTABLEKS                       R3 R1 K3 ["isIconHovered"]
       10 GETTABLEKS                       R4 R1 K4 ["isHovered"]
       12 JUMPIFNOT                        R4 ; [+4]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K5 ["MAGNIFIER_PH"]
       16 JUMP                             ; [+14]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["constructAssetThumbnailUrl"]
       20 GETTABLEKS                       R6 R2 K7 ["Asset"]
       22 GETTABLEKS                       R6 R6 K8 ["Id"]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K9 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K9 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       30 CALL                             R5 3 1
       31 NEWTABLE                         R6 8 0
       33 LOADN                            R7 1
       34 SETTABLEKS                       R7 R6 K10 ["BackgroundTransparency"]
       36 SETTABLEKS                       R5 R6 K11 ["Image"]
       38 JUMPIFNOT                        R3 ; [+6]
       39 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       41 LOADN                            R8 20
       42 LOADN                            R9 20
       43 CALL                             R7 2 1
       44 JUMP                             ; [+13]
       45 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K15 ["ASSET_ROW"]
       50 GETTABLEKS                       R8 R8 K16 ["ICON_SIZE"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K15 ["ASSET_ROW"]
       55 GETTABLEKS                       R9 R9 K16 ["ICON_SIZE"]
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K17 ["Size"]
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R7 R7 K18 ["Event"]
       63 GETTABLEKS                       R7 R7 K19 ["MouseEnter"]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R8 R8 K20 ["onIconMouseEnter"]
       68 SETTABLE                         R8 R6 R7
       69 GETUPVAL                         R7 4
       70 GETTABLEKS                       R7 R7 K18 ["Event"]
       72 GETTABLEKS                       R7 R7 K21 ["MouseLeave"]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K22 ["onIconMouseLeave"]
       77 SETTABLE                         R8 R6 R7
       78 GETUPVAL                         R7 4
       79 GETTABLEKS                       R7 R7 K18 ["Event"]
       81 GETTABLEKS                       R7 R7 K23 ["Activated"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K24 ["onAssetPreviewButtonClicked"]
       86 SETTABLE                         R8 R6 R7
       87 GETUPVAL                         R7 4
       88 GETTABLEKS                       R7 R7 K25 ["createElement"]
       90 GETUPVAL                         R8 5
       91 DUPTABLE                         R9 K29 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size"}]
       92 GETIMPORT                        R10 K33 [Enum.FillDirection.Vertical]
       94 SETTABLEKS                       R10 R9 K26 ["Layout"]
       96 GETIMPORT                        R10 K35 [Enum.HorizontalAlignment.Center]
       98 SETTABLEKS                       R10 R9 K27 ["HorizontalAlignment"]
      100 GETIMPORT                        R10 K36 [Enum.VerticalAlignment.Center]
      102 SETTABLEKS                       R10 R9 K28 ["VerticalAlignment"]
      104 GETIMPORT                        R10 K38 [UDim2.new]
      106 LOADN                            R11 0
      107 GETUPVAL                         R13 3
      108 GETTABLEKS                       R13 R13 K15 ["ASSET_ROW"]
      110 GETTABLEKS                       R13 R13 K16 ["ICON_SIZE"]
      112 GETUPVAL                         R15 3
      113 GETTABLEKS                       R15 R15 K39 ["ITEM_ROW"]
      115 GETTABLEKS                       R15 R15 K40 ["LEFT_RIGHT_PADDING"]
      117 GETUPVAL                         R16 3
      118 GETTABLEKS                       R16 R16 K15 ["ASSET_ROW"]
      120 GETTABLEKS                       R16 R16 K41 ["LEFT_MOST_PADDING"]
      122 ADD                              R14 R15 R16
      123 ADD                              R12 R13 R14
      124 LOADN                            R13 1
      125 LOADN                            R14 0
      126 CALL                             R10 4 1
      127 SETTABLEKS                       R10 R9 K17 ["Size"]
      129 DUPTABLE                         R10 K43 [{"IconButton"}]
      130 GETUPVAL                         R11 4
      131 GETTABLEKS                       R11 R11 K25 ["createElement"]
      133 LOADK                            R12 K44 ["ImageButton"]
      134 MOVE                             R13 R6
      135 DUPTABLE                         R14 K46 [{"HoverArea"}]
      136 GETUPVAL                         R15 4
      137 GETTABLEKS                       R15 R15 K25 ["createElement"]
      139 GETUPVAL                         R16 6
      140 DUPTABLE                         R17 K48 [{"Cursor"}]
      141 LOADK                            R18 K49 ["PointingHand"]
      142 SETTABLEKS                       R18 R17 K47 ["Cursor"]
      144 CALL                             R15 2 1
      145 SETTABLEKS                       R15 R14 K45 ["HoverArea"]
      147 CALL                             R11 3 1
      148 SETTABLEKS                       R11 R10 K42 ["IconButton"]
      150 CALL                             R7 3 -1
      151 RETURN                           R7 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["props"]
        6 GETTABLEKS                       R1 R1 K1 ["AssetInfo"]
        8 GETTABLEKS                       R2 R0 K2 ["OnExpanded"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 GETTABLEKS                       R2 R0 K3 ["IsExpanded"]
       13 JUMPIF                           R2 ; [+7]
       14 GETTABLEKS                       R2 R0 K2 ["OnExpanded"]
       16 GETTABLEKS                       R3 R1 K4 ["Asset"]
       18 GETTABLEKS                       R3 R3 K5 ["Id"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["props"]
       24 GETTABLEKS                       R2 R2 K6 ["OnAssetPreviewButtonClicked"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K5 [{"AssetInfo", "OnAssetPreviewButtonClicked", "OnInsertClicked"}]
        8 GETTABLEKS                       R4 R0 K2 ["AssetInfo"]
       10 SETTABLEKS                       R4 R3 K2 ["AssetInfo"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K6 ["onAssetPreviewButtonClicked"]
       15 SETTABLEKS                       R4 R3 K3 ["OnAssetPreviewButtonClicked"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K7 ["onClick"]
       20 SETTABLEKS                       R4 R3 K4 ["OnInsertClicked"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_10:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["wasAssetBoundsWithinScrollingBounds"]
        3 DUPTABLE                         R1 K3 [{"isHovered", "isIconHovered"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isHovered"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isIconHovered"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onIconMouseEnter"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["onIconMouseLeave"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onClick"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 SETTABLEKS                       R1 R0 K8 ["onSearchByCreator"]
       29 NEWCLOSURE                       R1 P4
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K9 ["onHoverChanged"]
       33 NEWCLOSURE                       R1 P5
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 SETTABLEKS                       R1 R0 K10 ["getColumns"]
       40 NEWCLOSURE                       R1 P6
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 SETTABLEKS                       R1 R0 K11 ["renderIcon"]
       50 NEWCLOSURE                       R1 P7
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K12 ["onAssetPreviewButtonClicked"]
       54 NEWCLOSURE                       R1 P8
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U9
       58 SETTABLEKS                       R1 R0 K13 ["renderExpandedContent"]
       60 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AbsoluteSize"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R3 R1 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R3 K2 ["X"]
        9 JUMP                             ; [+1]
       10 LOADN                            R3 0
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["createElement"]
       17 GETUPVAL                         R6 2
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K4 ["join"]
       21 DUPTABLE                         R8 K10 [{"AutomaticSize", "LayoutOrder", "Position", "Size", "ZIndex"}]
       22 GETIMPORT                        R9 K13 [Enum.AutomaticSize.XY]
       24 SETTABLEKS                       R9 R8 K5 ["AutomaticSize"]
       26 GETTABLEKS                       R9 R1 K6 ["LayoutOrder"]
       28 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       30 GETTABLEKS                       R9 R1 K7 ["Position"]
       32 SETTABLEKS                       R9 R8 K7 ["Position"]
       34 GETIMPORT                        R9 K16 [UDim2.new]
       36 LOADN                            R10 1
       37 LOADN                            R11 0
       38 LOADN                            R12 0
       39 LOADN                            R13 0
       40 CALL                             R9 4 1
       41 SETTABLEKS                       R9 R8 K8 ["Size"]
       43 GETTABLEKS                       R9 R1 K9 ["ZIndex"]
       45 SETTABLEKS                       R9 R8 K9 ["ZIndex"]
       47 GETTABLEKS                       R9 R1 K17 ["WrapperProps"]
       49 CALL                             R7 2 1
       50 DUPTABLE                         R8 K19 [{"ItemRow"}]
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R9 R9 K20 ["Generator"]
       54 DUPTABLE                         R10 K34 [{"AutomaticSize", "Columns", "RenderExpandedContent", "RenderIcon", "TitleSize", "AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "LayoutOrder", "LogImpression", "OnExpanded", "OnHoverChanged", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
       55 GETIMPORT                        R11 K36 [Enum.AutomaticSize.Y]
       57 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
       59 GETTABLEKS                       R11 R0 K37 ["getColumns"]
       61 CALL                             R11 0 1
       62 SETTABLEKS                       R11 R10 K21 ["Columns"]
       64 GETTABLEKS                       R11 R0 K38 ["renderExpandedContent"]
       66 SETTABLEKS                       R11 R10 K22 ["RenderExpandedContent"]
       68 GETTABLEKS                       R11 R0 K39 ["renderIcon"]
       70 SETTABLEKS                       R11 R10 K23 ["RenderIcon"]
       72 GETUPVAL                         R12 5
       73 GETTABLEKS                       R12 R12 K40 ["ASSET_ROW_COLUMNS"]
       75 GETTABLEKS                       R12 R12 K41 ["NAME"]
       77 GETTABLE                         R11 R4 R12
       78 SETTABLEKS                       R11 R10 K24 ["TitleSize"]
       80 GETTABLEKS                       R11 R1 K25 ["AssetInfo"]
       82 SETTABLEKS                       R11 R10 K25 ["AssetInfo"]
       84 GETTABLEKS                       R11 R1 K26 ["CanInsertAsset"]
       86 SETTABLEKS                       R11 R10 K26 ["CanInsertAsset"]
       88 GETTABLEKS                       R11 R1 K27 ["InsertAsset"]
       90 SETTABLEKS                       R11 R10 K27 ["InsertAsset"]
       92 GETTABLEKS                       R11 R1 K28 ["IsExpanded"]
       94 SETTABLEKS                       R11 R10 K28 ["IsExpanded"]
       96 GETTABLEKS                       R11 R1 K6 ["LayoutOrder"]
       98 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      100 GETTABLEKS                       R11 R1 K29 ["LogImpression"]
      102 SETTABLEKS                       R11 R10 K29 ["LogImpression"]
      104 GETTABLEKS                       R11 R1 K30 ["OnExpanded"]
      106 SETTABLEKS                       R11 R10 K30 ["OnExpanded"]
      108 GETTABLEKS                       R11 R0 K42 ["onHoverChanged"]
      110 SETTABLEKS                       R11 R10 K31 ["OnHoverChanged"]
      112 GETTABLEKS                       R11 R1 K32 ["ParentAbsoluteSize"]
      114 SETTABLEKS                       R11 R10 K32 ["ParentAbsoluteSize"]
      116 GETTABLEKS                       R11 R1 K33 ["TryOpenAssetConfig"]
      118 SETTABLEKS                       R11 R10 K33 ["TryOpenAssetConfig"]
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K18 ["ItemRow"]
      123 CALL                             R5 3 -1
      124 RETURN                           R5 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"searchWithOptions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["searchWithOptions"]
        6 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["Util"]
       26 GETTABLEKS                       R5 R5 K11 ["formatLocalDateTime"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R1 K12 ["Dash"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R4 K13 ["UI"]
       35 GETTABLEKS                       R7 R7 K14 ["HoverArea"]
       37 GETTABLEKS                       R8 R4 K13 ["UI"]
       39 GETTABLEKS                       R8 R8 K15 ["Pane"]
       41 GETTABLEKS                       R9 R4 K16 ["Wrappers"]
       43 GETTABLEKS                       R9 R9 K17 ["withAbsoluteSize"]
       45 GETTABLEKS                       R10 R0 K18 ["Src"]
       47 GETTABLEKS                       R10 R10 K10 ["Util"]
       49 GETIMPORT                        R11 K6 [require]
       51 GETTABLEKS                       R12 R10 K19 ["Constants"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K6 [require]
       56 GETTABLEKS                       R13 R10 K20 ["Images"]
       58 CALL                             R12 1 1
       59 GETTABLEKS                       R13 R4 K21 ["ContextServices"]
       61 GETTABLEKS                       R14 R13 K22 ["withContext"]
       63 GETIMPORT                        R15 K6 [require]
       65 GETTABLEKS                       R16 R0 K18 ["Src"]
       67 GETTABLEKS                       R16 R16 K23 ["Components"]
       69 GETTABLEKS                       R16 R16 K24 ["AssetLogicWrapper"]
       71 CALL                             R15 1 1
       72 GETIMPORT                        R16 K6 [require]
       74 GETTABLEKS                       R17 R0 K18 ["Src"]
       76 GETTABLEKS                       R17 R17 K25 ["Networking"]
       78 GETTABLEKS                       R17 R17 K26 ["Requests"]
       80 GETTABLEKS                       R17 R17 K27 ["SearchWithOptions"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K6 [require]
       85 GETTABLEKS                       R18 R0 K18 ["Src"]
       87 GETTABLEKS                       R18 R18 K21 ["ContextServices"]
       89 GETTABLEKS                       R18 R18 K28 ["Settings"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K6 [require]
       94 GETTABLEKS                       R19 R0 K18 ["Src"]
       96 GETTABLEKS                       R19 R19 K21 ["ContextServices"]
       98 GETTABLEKS                       R19 R19 K29 ["NetworkContext"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K6 [require]
      103 GETTABLEKS                       R20 R0 K18 ["Src"]
      105 GETTABLEKS                       R20 R20 K23 ["Components"]
      107 GETTABLEKS                       R20 R20 K30 ["ItemRow"]
      109 GETTABLEKS                       R20 R20 K30 ["ItemRow"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K6 [require]
      114 GETTABLEKS                       R21 R0 K18 ["Src"]
      116 GETTABLEKS                       R21 R21 K23 ["Components"]
      118 GETTABLEKS                       R21 R21 K31 ["AssetRow"]
      120 GETTABLEKS                       R21 R21 K32 ["AssetRowExpandedContent"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K6 [require]
      125 GETTABLEKS                       R22 R10 K33 ["Urls"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K6 [require]
      130 GETTABLEKS                       R23 R0 K18 ["Src"]
      132 GETTABLEKS                       R23 R23 K34 ["Models"]
      134 GETTABLEKS                       R23 R23 K35 ["AssetInfo"]
      136 CALL                             R22 1 1
      137 GETIMPORT                        R23 K6 [require]
      139 GETTABLEKS                       R24 R0 K18 ["Src"]
      141 GETTABLEKS                       R24 R24 K23 ["Components"]
      143 GETTABLEKS                       R24 R24 K36 ["AssetTable"]
      145 GETTABLEKS                       R24 R24 K37 ["GetAssetTableSizes"]
      147 CALL                             R23 1 1
      148 GETIMPORT                        R24 K6 [require]
      150 GETTABLEKS                       R25 R0 K18 ["Src"]
      152 GETTABLEKS                       R25 R25 K10 ["Util"]
      154 GETTABLEKS                       R25 R25 K38 ["SharedFlags"]
      156 GETTABLEKS                       R25 R25 K39 ["getFFlagToolboxEnableAssetRows"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K6 [require]
      161 GETTABLEKS                       R26 R0 K18 ["Src"]
      163 GETTABLEKS                       R26 R26 K10 ["Util"]
      165 GETTABLEKS                       R26 R26 K38 ["SharedFlags"]
      167 GETTABLEKS                       R26 R26 K40 ["getFFlagToolboxFixInventoryCreatorFilter"]
      169 CALL                             R25 1 1
      170 GETTABLEKS                       R26 R2 K41 ["PureComponent"]
      172 LOADK                            R28 K31 ["AssetRow"]
      173 NAMECALL                         R26 R26 K42 ["extend"]
      175 CALL                             R26 2 1
      176 MOVE                             R27 R24
      177 CALL                             R27 0 1
      178 JUMPIF                           R27 ; [+2]
      179 CLOSEUPVALS                      R26
      180 RETURN                           R26 1
      181 DUPCLOSURE                       R27 K43 [PROTO_10]
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R20
      192 SETTABLEKS                       R27 R26 K44 ["init"]
      194 DUPCLOSURE                       R27 K45 [PROTO_11]
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R11
      201 SETTABLEKS                       R27 R26 K46 ["render"]
      203 MOVE                             R27 R14
      204 DUPTABLE                         R28 K51 [{"Stylizer", "Localization", "Plugin", "Settings", "Network"}]
      205 GETTABLEKS                       R29 R13 K47 ["Stylizer"]
      207 SETTABLEKS                       R29 R28 K47 ["Stylizer"]
      209 GETTABLEKS                       R29 R13 K48 ["Localization"]
      211 SETTABLEKS                       R29 R28 K48 ["Localization"]
      213 GETTABLEKS                       R29 R13 K49 ["Plugin"]
      215 SETTABLEKS                       R29 R28 K49 ["Plugin"]
      217 SETTABLEKS                       R17 R28 K28 ["Settings"]
      219 SETTABLEKS                       R18 R28 K50 ["Network"]
      221 CALL                             R27 1 1
      222 MOVE                             R28 R26
      223 CALL                             R27 1 1
      224 MOVE                             R26 R27
      225 DUPCLOSURE                       R27 K52 [PROTO_13]
      226 CAPTURE                          VAL R16
      227 GETTABLEKS                       R28 R3 K53 ["connect"]
      229 LOADNIL                          R29
      230 MOVE                             R30 R27
      231 CALL                             R28 2 1
      232 MOVE                             R29 R26
      233 CALL                             R28 1 1
      234 MOVE                             R26 R28
      235 NEWCLOSURE                       R28 P3
      236 CAPTURE                          VAL R2
      237 CAPTURE                          REF R26
      238 SETGLOBAL                        R28 K54 ["TypedComponent"]
      240 MOVE                             R28 R9
      241 GETGLOBAL                        R29 K54 ["TypedComponent"]
      243 CALL                             R28 1 -1
      244 CLOSEUPVALS                      R26
      245 RETURN                           R28 -1
