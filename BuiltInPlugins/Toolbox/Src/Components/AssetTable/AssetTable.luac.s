PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["expandedAssetId"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["None"]
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R2 K2 [{"expandedAssetId"}]
       11 SETTABLEKS                       R1 R2 K0 ["expandedAssetId"]
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["props"]
       10 GETTABLEKS                       R2 R1 K2 ["Assets"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["getCategoryByName"]
       15 GETTABLEKS                       R4 R1 K4 ["categoryName"]
       17 CALL                             R3 1 1
       18 DUPTABLE                         R4 K7 [{"assetType", "searchId"}]
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R5 R3 K5 ["assetType"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K5 ["assetType"]
       26 GETTABLEKS                       R5 R1 K6 ["searchId"]
       28 SETTABLEKS                       R5 R4 K6 ["searchId"]
       30 LOADN                            R5 1
       31 MOVE                             R6 R2
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 GETTABLEKS                       R11 R10 K8 ["Asset"]
       37 JUMPIFNOT                        R11 ; [+8]
       38 GETTABLEKS                       R11 R10 K8 ["Asset"]
       40 GETTABLEKS                       R11 R11 K9 ["Id"]
       42 JUMPIFNOTEQ                      R11 R0 ; [+3]
       44 MOVE                             R5 R9
       45 JUMP                             ; [+2]
       46 FORGLOOP                         R6 2 ; [-12]
       48 SUBK                             R8 R5 K11 [1]
       49 DIVK                             R7 R8 K10 [20]
       50 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       51 GETIMPORT                        R6 K14 [math.floor]
       53 CALL                             R6 1 1
       54 SUBK                             R8 R5 K11 [1]
       55 MODK                             R7 R8 K10 [20]
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R8 R8 K15 ["MarketplaceAssetRowExpanded"]
       59 MOVE                             R9 R0
       60 MOVE                             R10 R6
       61 MOVE                             R11 R7
       62 MOVE                             R12 R4
       63 CALL                             R8 4 0
       64 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R3
        5 CALL                             R5 1 1
        6 GETTABLEKS                       R6 R4 K1 ["Stylizer"]
        8 GETTABLEKS                       R6 R6 K2 ["itemRow"]
       10 GETTABLE                         R7 R5 R1
       11 JUMPIFNOT                        R7 ; [+54]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R8 R8 K3 ["createElement"]
       15 GETUPVAL                         R9 3
       16 DUPTABLE                         R10 K11 [{"Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
       17 GETUPVAL                         R11 4
       18 GETTABLEKS                       R11 R11 K12 ["FONT"]
       20 SETTABLEKS                       R11 R10 K4 ["Font"]
       22 SETTABLEKS                       R2 R10 K5 ["LayoutOrder"]
       24 SETTABLEKS                       R7 R10 K6 ["Size"]
       26 SETTABLEKS                       R0 R10 K7 ["Text"]
       28 GETTABLEKS                       R11 R6 K13 ["headerTextColor"]
       30 SETTABLEKS                       R11 R10 K8 ["TextColor"]
       32 GETUPVAL                         R11 4
       33 GETTABLEKS                       R11 R11 K14 ["FONT_SIZE_SMALL"]
       35 SETTABLEKS                       R11 R10 K9 ["TextSize"]
       37 GETIMPORT                        R11 K17 [Enum.TextXAlignment.Left]
       39 SETTABLEKS                       R11 R10 K10 ["TextXAlignment"]
       41 DUPTABLE                         R11 K19 [{"UIPadding"}]
       42 LOADB                            R12 0
       43 JUMPIFEQKN                       R2 K20 [1] ; [+18]
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K3 ["createElement"]
       48 LOADK                            R13 K18 ["UIPadding"]
       49 DUPTABLE                         R14 K22 [{"PaddingLeft"}]
       50 GETIMPORT                        R15 K25 [UDim.new]
       52 LOADN                            R16 0
       53 GETUPVAL                         R17 4
       54 GETTABLEKS                       R17 R17 K26 ["ITEM_ROW"]
       56 GETTABLEKS                       R17 R17 K27 ["LEFT_RIGHT_PADDING"]
       58 CALL                             R15 2 1
       59 SETTABLEKS                       R15 R14 K21 ["PaddingLeft"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K18 ["UIPadding"]
       64 CALL                             R8 3 1
       65 RETURN                           R8 1
       66 LOADNIL                          R8
       67 RETURN                           R8 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TryInsert"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["TryInsert"]
        7 GETUPVAL                         R2 1
        8 ORK                              R3 R0 K1 [False]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["state"]
        6 GETTABLEKS                       R6 R4 K2 ["LogImpression"]
        8 GETTABLEKS                       R7 R4 K3 ["CanInsertAsset"]
       10 GETTABLEKS                       R8 R5 K4 ["expandedAssetId"]
       12 NEWCLOSURE                       R9 P0
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R0
       15 GETTABLEKS                       R11 R0 K5 ["Asset"]
       17 JUMPIFNOT                        R11 ; [+9]
       18 GETTABLEKS                       R11 R0 K5 ["Asset"]
       20 GETTABLEKS                       R11 R11 K6 ["Id"]
       22 JUMPIFEQ                         R11 R8 ; [+2]
       24 LOADB                            R10 0 +1
       25 LOADB                            R10 1
       26 JUMP                             ; [+1]
       27 LOADB                            R10 0
       28 DUPTABLE                         R11 K20 [{"AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "Key", "LayoutOrder", "LogImpression", "OnExpanded", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "ParentAbsoluteSize", "Position", "Size", "TryOpenAssetConfig", "ZIndex"}]
       29 SETTABLEKS                       R0 R11 K7 ["AssetInfo"]
       31 SETTABLEKS                       R7 R11 K3 ["CanInsertAsset"]
       33 SETTABLEKS                       R9 R11 K8 ["InsertAsset"]
       35 SETTABLEKS                       R10 R11 K9 ["IsExpanded"]
       37 JUMPIFNOT                        R0 ; [+8]
       38 GETTABLEKS                       R13 R0 K5 ["Asset"]
       40 JUMPIFNOT                        R13 ; [+5]
       41 GETTABLEKS                       R12 R0 K5 ["Asset"]
       43 GETTABLEKS                       R12 R12 K6 ["Id"]
       45 JUMP                             ; [+1]
       46 MOVE                             R12 R1
       47 SETTABLEKS                       R12 R11 K10 ["Key"]
       49 SETTABLEKS                       R1 R11 K11 ["LayoutOrder"]
       51 SETTABLEKS                       R6 R11 K2 ["LogImpression"]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R12 R12 K21 ["setExpandedAssetId"]
       56 SETTABLEKS                       R12 R11 K12 ["OnExpanded"]
       58 GETTABLEKS                       R12 R4 K13 ["OnAssetPreviewButtonClicked"]
       60 SETTABLEKS                       R12 R11 K13 ["OnAssetPreviewButtonClicked"]
       62 GETUPVAL                         R13 1
       63 CALL                             R13 0 1
       64 JUMPIFNOT                        R13 ; [+3]
       65 GETTABLEKS                       R12 R4 K14 ["OnSearchByCreator"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R12
       69 SETTABLEKS                       R12 R11 K14 ["OnSearchByCreator"]
       71 GETTABLEKS                       R12 R4 K15 ["ParentAbsoluteSize"]
       73 SETTABLEKS                       R12 R11 K15 ["ParentAbsoluteSize"]
       75 SETTABLEKS                       R2 R11 K16 ["Position"]
       77 SETTABLEKS                       R3 R11 K17 ["Size"]
       79 GETTABLEKS                       R12 R4 K18 ["TryOpenAssetConfig"]
       81 SETTABLEKS                       R12 R11 K18 ["TryOpenAssetConfig"]
       83 JUMPIFNOT                        R10 ; [+2]
       84 LOADN                            R12 2
       85 JUMP                             ; [+1]
       86 LOADNIL                          R12
       87 SETTABLEKS                       R12 R11 K19 ["ZIndex"]
       89 RETURN                           R11 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createHeaderElement"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 GETUPVAL                         R7 1
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["Localization"]
        5 GETTABLEKS                       R7 R4 K2 ["AbsoluteSize"]
        7 JUMPIFNOT                        R7 ; [+5]
        8 GETTABLEKS                       R6 R4 K2 ["AbsoluteSize"]
       10 GETTABLEKS                       R6 R6 K3 ["X"]
       12 JUMP                             ; [+1]
       13 LOADN                            R6 0
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K4 ["new"]
       17 CALL                             R7 0 1
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R6
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K5 ["createElement"]
       24 GETUPVAL                         R10 3
       25 DUPTABLE                         R11 K11 [{"LayoutOrder", "Size", "Layout", "Padding", "Position"}]
       26 LOADN                            R12 1
       27 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       29 SETTABLEKS                       R3 R11 K7 ["Size"]
       31 GETIMPORT                        R12 K15 [Enum.FillDirection.Horizontal]
       33 SETTABLEKS                       R12 R11 K8 ["Layout"]
       35 DUPTABLE                         R12 K20 [{"Right", "Left", "Top", "Bottom"}]
       36 GETUPVAL                         R13 4
       37 GETTABLEKS                       R13 R13 K21 ["ITEM_ROW"]
       39 GETTABLEKS                       R13 R13 K22 ["BORDER_SIZE"]
       41 SETTABLEKS                       R13 R12 K16 ["Right"]
       43 GETUPVAL                         R13 4
       44 GETTABLEKS                       R13 R13 K21 ["ITEM_ROW"]
       46 GETTABLEKS                       R13 R13 K22 ["BORDER_SIZE"]
       48 SETTABLEKS                       R13 R12 K17 ["Left"]
       50 GETUPVAL                         R13 4
       51 GETTABLEKS                       R13 R13 K21 ["ITEM_ROW"]
       53 GETTABLEKS                       R13 R13 K22 ["BORDER_SIZE"]
       55 SETTABLEKS                       R13 R12 K18 ["Top"]
       57 GETUPVAL                         R13 4
       58 GETTABLEKS                       R13 R13 K21 ["ITEM_ROW"]
       60 GETTABLEKS                       R13 R13 K22 ["BORDER_SIZE"]
       62 SETTABLEKS                       R13 R12 K19 ["Bottom"]
       64 SETTABLEKS                       R12 R11 K9 ["Padding"]
       66 SETTABLEKS                       R2 R11 K10 ["Position"]
       68 DUPTABLE                         R12 K28 [{"Type", "Name", "Creator", "DateUpdated", "DateCreated"}]
       69 GETUPVAL                         R14 4
       70 GETTABLEKS                       R14 R14 K29 ["ASSET_ROW_COLUMNS"]
       72 GETTABLEKS                       R14 R14 K30 ["ICON"]
       74 NAMECALL                         R15 R7 K31 ["getNextOrder"]
       76 CALL                             R15 1 1
       77 GETUPVAL                         R16 0
       78 GETTABLEKS                       R16 R16 K32 ["createHeaderElement"]
       80 LOADK                            R17 K33 [""]
       81 MOVE                             R18 R14
       82 MOVE                             R19 R15
       83 MOVE                             R20 R6
       84 CALL                             R16 4 1
       85 MOVE                             R13 R16
       86 SETTABLEKS                       R13 R12 K23 ["Type"]
       88 LOADK                            R16 K34 ["AssetTable"]
       89 LOADK                            R17 K24 ["Name"]
       90 NAMECALL                         R14 R5 K35 ["getText"]
       92 CALL                             R14 3 1
       93 NAMECALL                         R14 R14 K36 ["upper"]
       95 CALL                             R14 1 1
       96 GETUPVAL                         R15 4
       97 GETTABLEKS                       R15 R15 K29 ["ASSET_ROW_COLUMNS"]
       99 GETTABLEKS                       R15 R15 K37 ["NAME"]
      101 NAMECALL                         R16 R7 K31 ["getNextOrder"]
      103 CALL                             R16 1 1
      104 GETUPVAL                         R17 0
      105 GETTABLEKS                       R17 R17 K32 ["createHeaderElement"]
      107 MOVE                             R18 R14
      108 MOVE                             R19 R15
      109 MOVE                             R20 R16
      110 MOVE                             R21 R6
      111 CALL                             R17 4 1
      112 MOVE                             R13 R17
      113 SETTABLEKS                       R13 R12 K24 ["Name"]
      115 LOADK                            R16 K34 ["AssetTable"]
      116 LOADK                            R17 K25 ["Creator"]
      117 NAMECALL                         R14 R5 K35 ["getText"]
      119 CALL                             R14 3 1
      120 NAMECALL                         R14 R14 K36 ["upper"]
      122 CALL                             R14 1 1
      123 GETUPVAL                         R15 4
      124 GETTABLEKS                       R15 R15 K29 ["ASSET_ROW_COLUMNS"]
      126 GETTABLEKS                       R15 R15 K38 ["CREATOR"]
      128 NAMECALL                         R16 R7 K31 ["getNextOrder"]
      130 CALL                             R16 1 1
      131 GETUPVAL                         R17 0
      132 GETTABLEKS                       R17 R17 K32 ["createHeaderElement"]
      134 MOVE                             R18 R14
      135 MOVE                             R19 R15
      136 MOVE                             R20 R16
      137 MOVE                             R21 R6
      138 CALL                             R17 4 1
      139 MOVE                             R13 R17
      140 SETTABLEKS                       R13 R12 K25 ["Creator"]
      142 LOADK                            R16 K34 ["AssetTable"]
      143 LOADK                            R17 K26 ["DateUpdated"]
      144 NAMECALL                         R14 R5 K35 ["getText"]
      146 CALL                             R14 3 1
      147 NAMECALL                         R14 R14 K36 ["upper"]
      149 CALL                             R14 1 1
      150 GETUPVAL                         R15 4
      151 GETTABLEKS                       R15 R15 K29 ["ASSET_ROW_COLUMNS"]
      153 GETTABLEKS                       R15 R15 K39 ["DATE_UPDATED"]
      155 NAMECALL                         R16 R7 K31 ["getNextOrder"]
      157 CALL                             R16 1 1
      158 GETUPVAL                         R17 0
      159 GETTABLEKS                       R17 R17 K32 ["createHeaderElement"]
      161 MOVE                             R18 R14
      162 MOVE                             R19 R15
      163 MOVE                             R20 R16
      164 MOVE                             R21 R6
      165 CALL                             R17 4 1
      166 MOVE                             R13 R17
      167 SETTABLEKS                       R13 R12 K26 ["DateUpdated"]
      169 LOADK                            R16 K34 ["AssetTable"]
      170 LOADK                            R17 K27 ["DateCreated"]
      171 NAMECALL                         R14 R5 K35 ["getText"]
      173 CALL                             R14 3 1
      174 NAMECALL                         R14 R14 K36 ["upper"]
      176 CALL                             R14 1 1
      177 GETUPVAL                         R15 4
      178 GETTABLEKS                       R15 R15 K29 ["ASSET_ROW_COLUMNS"]
      180 GETTABLEKS                       R15 R15 K40 ["DATE_CREATED"]
      182 NAMECALL                         R16 R7 K31 ["getNextOrder"]
      184 CALL                             R16 1 1
      185 GETUPVAL                         R17 0
      186 GETTABLEKS                       R17 R17 K32 ["createHeaderElement"]
      188 MOVE                             R18 R14
      189 MOVE                             R19 R15
      190 MOVE                             R20 R16
      191 MOVE                             R21 R6
      192 CALL                             R17 4 1
      193 MOVE                             R13 R17
      194 SETTABLEKS                       R13 R12 K27 ["DateCreated"]
      196 CALL                             R9 3 -1
      197 RETURN                           R9 -1

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"expandedAssetId"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["expandedAssetId"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R1 R0 K3 ["setExpandedAssetId"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 SETTABLEKS                       R1 R0 K4 ["createHeaderElement"]
       21 NEWCLOSURE                       R1 P2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U6
       24 SETTABLEKS                       R1 R0 K5 ["getAssetElementProps"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U5
       32 SETTABLEKS                       R1 R0 K6 ["renderHeader"]
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K1 ["getAssetElementProps"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R1
        9 MOVE                             R9 R2
       10 MOVE                             R10 R3
       11 CALL                             R6 4 -1
       12 CALL                             R4 -1 -1
       13 RETURN                           R4 -1

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+22]
        1 GETTABLEKS                       R2 R1 K0 ["Y"]
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+18]
        6 GETTABLEKS                       R3 R0 K0 ["Y"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R4 K0 ["Y"]
       13 ADD                              R2 R3 R4
       14 GETTABLEKS                       R3 R1 K0 ["Y"]
       16 JUMPIFNOTLE                      R3 R2 ; [+6]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["FetchNextPage"]
       21 LOADN                            R3 20
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Assets"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R6 R1 K4 ["AbsoluteSize"]
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETTABLEKS                       R5 R1 K4 ["AbsoluteSize"]
       13 GETTABLEKS                       R5 R5 K5 ["X"]
       15 JUMP                             ; [+1]
       16 LOADN                            R5 0
       17 NEWTABLE                         R6 1 0
       19 DUPTABLE                         R7 K7 [{"AbsoluteSize", "OnRender"}]
       20 GETIMPORT                        R8 K10 [Vector2.new]
       22 MOVE                             R9 R5
       23 LOADN                            R10 20
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K4 ["AbsoluteSize"]
       27 GETTABLEKS                       R8 R0 K11 ["renderHeader"]
       29 SETTABLEKS                       R8 R7 K6 ["OnRender"]
       31 SETTABLEKS                       R7 R6 K12 ["HEADER"]
       33 GETTABLEKS                       R7 R2 K13 ["expandedAssetId"]
       35 JUMPIFNOT                        R7 ; [+17]
       36 GETTABLEKS                       R7 R2 K13 ["expandedAssetId"]
       38 DUPTABLE                         R8 K7 [{"AbsoluteSize", "OnRender"}]
       39 GETIMPORT                        R9 K10 [Vector2.new]
       41 MOVE                             R10 R5
       42 LOADN                            R11 90
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K4 ["AbsoluteSize"]
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R9 R8 K6 ["OnRender"]
       52 SETTABLE                         R8 R6 R7
       53 GETTABLEKS                       R7 R1 K14 ["Position"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K15 ["createElement"]
       58 GETUPVAL                         R9 2
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R10 R10 K16 ["join"]
       62 DUPTABLE                         R11 K19 [{"LayoutOrder", "Position", "Size", "VerticalAlignment"}]
       63 SETTABLEKS                       R4 R11 K3 ["LayoutOrder"]
       65 SETTABLEKS                       R7 R11 K14 ["Position"]
       67 GETTABLEKS                       R12 R1 K17 ["Size"]
       69 SETTABLEKS                       R12 R11 K17 ["Size"]
       71 GETIMPORT                        R12 K22 [Enum.VerticalAlignment.Top]
       73 SETTABLEKS                       R12 R11 K18 ["VerticalAlignment"]
       75 GETTABLEKS                       R12 R1 K23 ["WrapperProps"]
       77 CALL                             R10 2 1
       78 DUPTABLE                         R11 K25 [{"List"}]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K15 ["createElement"]
       82 GETUPVAL                         R13 4
       83 DUPTABLE                         R14 K32 [{"GetRowProps", "Rows", "RowComponent", "RowHeight", "Size", "OnScrollUpdate", "LayoutOrder", "SpecialRows"}]
       84 GETTABLEKS                       R15 R0 K33 ["getAssetElementProps"]
       86 SETTABLEKS                       R15 R14 K26 ["GetRowProps"]
       88 SETTABLEKS                       R3 R14 K27 ["Rows"]
       90 GETUPVAL                         R15 1
       91 SETTABLEKS                       R15 R14 K28 ["RowComponent"]
       93 GETUPVAL                         R15 5
       94 GETTABLEKS                       R15 R15 K34 ["AUDIO_ROW"]
       96 GETTABLEKS                       R15 R15 K35 ["ROW_HEIGHT"]
       98 SETTABLEKS                       R15 R14 K29 ["RowHeight"]
      100 GETIMPORT                        R15 K38 [UDim2.fromScale]
      102 LOADN                            R16 1
      103 LOADN                            R17 1
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K17 ["Size"]
      107 NEWCLOSURE                       R15 P1
      108 CAPTURE                          VAL R1
      109 SETTABLEKS                       R15 R14 K30 ["OnScrollUpdate"]
      111 SETTABLEKS                       R4 R14 K3 ["LayoutOrder"]
      113 SETTABLEKS                       R6 R14 K31 ["SpecialRows"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K24 ["List"]
      118 CALL                             R8 3 -1
      119 RETURN                           R8 -1

PROTO_11:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K3 [{"categoryName", "searchId"}]
       11 GETTABLEKS                       R4 R2 K1 ["categoryName"]
       13 JUMPIF                           R4 ; [+5]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["DEFAULT"]
       17 GETTABLEKS                       R4 R4 K5 ["name"]
       19 SETTABLEKS                       R4 R3 K1 ["categoryName"]
       21 GETTABLEKS                       R4 R2 K2 ["searchId"]
       23 SETTABLEKS                       R4 R3 K2 ["searchId"]
       25 RETURN                           R3 1

PROTO_12:
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
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Dash"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R4 K11 ["Util"]
       31 GETTABLEKS                       R6 R6 K12 ["LayoutOrderIterator"]
       33 GETTABLEKS                       R7 R4 K13 ["Wrappers"]
       35 GETTABLEKS                       R7 R7 K14 ["withAbsoluteSize"]
       37 GETTABLEKS                       R8 R0 K15 ["Src"]
       39 GETTABLEKS                       R8 R8 K11 ["Util"]
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R8 K16 ["Constants"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R8 K17 ["DebugFlags"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R8 K18 ["Analytics"]
       55 GETTABLEKS                       R12 R12 K18 ["Analytics"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K6 [require]
       60 GETTABLEKS                       R13 R0 K15 ["Src"]
       62 GETTABLEKS                       R13 R13 K19 ["Types"]
       64 GETTABLEKS                       R13 R13 K20 ["AnalyticsTypes"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R14 R0 K15 ["Src"]
       71 GETTABLEKS                       R14 R14 K19 ["Types"]
       73 GETTABLEKS                       R14 R14 K21 ["AssetLogicTypes"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETTABLEKS                       R15 R0 K15 ["Src"]
       80 GETTABLEKS                       R15 R15 K19 ["Types"]
       82 GETTABLEKS                       R15 R15 K22 ["Category"]
       84 CALL                             R14 1 1
       85 GETTABLEKS                       R15 R4 K23 ["ContextServices"]
       87 GETTABLEKS                       R16 R15 K24 ["withContext"]
       89 GETIMPORT                        R17 K6 [require]
       91 GETTABLEKS                       R18 R0 K15 ["Src"]
       93 GETTABLEKS                       R18 R18 K25 ["Components"]
       95 GETTABLEKS                       R18 R18 K26 ["AssetLogicWrapper"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K6 [require]
      100 GETTABLEKS                       R19 R0 K15 ["Src"]
      102 GETTABLEKS                       R19 R19 K27 ["Models"]
      104 GETTABLEKS                       R19 R19 K28 ["AssetInfo"]
      106 CALL                             R18 1 1
      107 GETTABLEKS                       R19 R4 K29 ["UI"]
      109 GETTABLEKS                       R20 R19 K30 ["Image"]
      111 GETTABLEKS                       R21 R19 K31 ["TextLabel"]
      113 GETTABLEKS                       R22 R19 K32 ["Pane"]
      115 GETIMPORT                        R23 K6 [require]
      117 GETTABLEKS                       R24 R0 K15 ["Src"]
      119 GETTABLEKS                       R24 R24 K25 ["Components"]
      121 GETTABLEKS                       R24 R24 K33 ["AssetRow"]
      123 GETTABLEKS                       R24 R24 K33 ["AssetRow"]
      125 CALL                             R23 1 1
      126 GETTABLEKS                       R24 R19 K34 ["List"]
      128 GETIMPORT                        R25 K6 [require]
      130 GETTABLEKS                       R26 R0 K15 ["Src"]
      132 GETTABLEKS                       R26 R26 K25 ["Components"]
      134 GETTABLEKS                       R26 R26 K35 ["AssetTable"]
      136 GETTABLEKS                       R26 R26 K36 ["GetAssetTableSizes"]
      138 CALL                             R25 1 1
      139 GETTABLEKS                       R26 R2 K37 ["PureComponent"]
      141 LOADK                            R28 K35 ["AssetTable"]
      142 NAMECALL                         R26 R26 K38 ["extend"]
      144 CALL                             R26 2 1
      145 GETIMPORT                        R27 K6 [require]
      147 GETTABLEKS                       R28 R0 K15 ["Src"]
      149 GETTABLEKS                       R28 R28 K11 ["Util"]
      151 GETTABLEKS                       R28 R28 K39 ["SharedFlags"]
      153 GETTABLEKS                       R28 R28 K40 ["getFFlagToolboxEnableAssetRows"]
      155 CALL                             R27 1 1
      156 MOVE                             R28 R27
      157 CALL                             R28 0 1
      158 JUMPIF                           R28 ; [+2]
      159 CLOSEUPVALS                      R26
      160 RETURN                           R26 1
      161 GETIMPORT                        R28 K6 [require]
      163 GETTABLEKS                       R29 R0 K15 ["Src"]
      165 GETTABLEKS                       R29 R29 K11 ["Util"]
      167 GETTABLEKS                       R29 R29 K39 ["SharedFlags"]
      169 GETTABLEKS                       R29 R29 K41 ["getFFlagToolboxFixInventoryCreatorFilter"]
      171 CALL                             R28 1 1
      172 DUPCLOSURE                       R29 K42 [PROTO_7]
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R25
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R28
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R22
      182 SETTABLEKS                       R29 R26 K43 ["init"]
      184 DUPCLOSURE                       R29 K44 [PROTO_10]
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R9
      191 SETTABLEKS                       R29 R26 K45 ["render"]
      193 MOVE                             R29 R16
      194 DUPTABLE                         R30 K48 [{"Localization", "Stylizer"}]
      195 GETTABLEKS                       R31 R15 K46 ["Localization"]
      197 SETTABLEKS                       R31 R30 K46 ["Localization"]
      199 GETTABLEKS                       R31 R15 K47 ["Stylizer"]
      201 SETTABLEKS                       R31 R30 K47 ["Stylizer"]
      203 CALL                             R29 1 1
      204 MOVE                             R30 R26
      205 CALL                             R29 1 1
      206 MOVE                             R26 R29
      207 DUPCLOSURE                       R29 K49 [PROTO_11]
      208 CAPTURE                          VAL R14
      209 GETTABLEKS                       R30 R3 K50 ["connect"]
      211 MOVE                             R31 R29
      212 LOADNIL                          R32
      213 CALL                             R30 2 1
      214 MOVE                             R31 R26
      215 CALL                             R30 1 1
      216 MOVE                             R26 R30
      217 NEWCLOSURE                       R30 P3
      218 CAPTURE                          VAL R2
      219 CAPTURE                          REF R26
      220 SETGLOBAL                        R30 K51 ["TypedComponent"]
      222 MOVE                             R30 R7
      223 GETGLOBAL                        R31 K51 ["TypedComponent"]
      225 CALL                             R30 1 -1
      226 CLOSEUPVALS                      R26
      227 RETURN                           R30 -1
