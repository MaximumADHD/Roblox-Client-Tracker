PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["expandedAssetId"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["None"]
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
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ref"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+16]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K3 [{"width"}]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K0 ["ref"]
       11 GETTABLEKS                       R5 R6 K1 ["current"]
       13 GETTABLEKS                       R4 R5 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R3 R4 K5 ["X"]
       17 SETTABLEKS                       R3 R2 K2 ["width"]
       19 NAMECALL                         R0 R0 K6 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["state"]
        3 GETTABLEKS                       R4 R5 K1 ["width"]
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K2 ["props"]
        9 GETTABLEKS                       R6 R7 K3 ["AudioType"]
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R7 R8 K4 ["Stylizer"]
       16 GETTABLEKS                       R6 R7 K5 ["itemRow"]
       18 GETTABLE                         R7 R5 R1
       19 JUMPIFNOT                        R7 ; [+65]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K6 ["createElement"]
       23 GETUPVAL                         R9 4
       24 DUPTABLE                         R10 K14 [{"Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
       25 GETUPVAL                         R12 5
       26 GETTABLEKS                       R11 R12 K15 ["FONT"]
       28 SETTABLEKS                       R11 R10 K7 ["Font"]
       30 SETTABLEKS                       R2 R10 K8 ["LayoutOrder"]
       32 SETTABLEKS                       R7 R10 K9 ["Size"]
       34 SETTABLEKS                       R0 R10 K10 ["Text"]
       36 GETTABLEKS                       R11 R6 K16 ["headerTextColor"]
       38 SETTABLEKS                       R11 R10 K11 ["TextColor"]
       40 GETUPVAL                         R12 5
       41 GETTABLEKS                       R11 R12 K17 ["FONT_SIZE_SMALL"]
       43 SETTABLEKS                       R11 R10 K12 ["TextSize"]
       45 MOVE                             R11 R3
       46 JUMPIF                           R11 ; [+2]
       47 GETIMPORT                        R11 K20 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R11 R10 K13 ["TextXAlignment"]
       51 DUPTABLE                         R11 K22 [{"UIPadding"}]
       52 LOADB                            R12 0
       53 JUMPIFEQKN                       R2 K23 [1] ; [+27]
       55 GETUPVAL                         R13 3
       56 GETTABLEKS                       R12 R13 K6 ["createElement"]
       58 LOADK                            R13 K21 ["UIPadding"]
       59 DUPTABLE                         R14 K25 [{"PaddingLeft"}]
       60 GETIMPORT                        R15 K28 [UDim.new]
       62 LOADN                            R16 0
       63 GETUPVAL                         R18 6
       64 CALL                             R18 0 1
       65 JUMPIFNOT                        R18 ; [+6]
       66 GETUPVAL                         R19 5
       67 GETTABLEKS                       R18 R19 K29 ["ITEM_ROW"]
       69 GETTABLEKS                       R17 R18 K30 ["LEFT_RIGHT_PADDING"]
       71 JUMP                             ; [+5]
       72 GETUPVAL                         R19 5
       73 GETTABLEKS                       R18 R19 K31 ["AUDIO_ROW"]
       75 GETTABLEKS                       R17 R18 K30 ["LEFT_RIGHT_PADDING"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K24 ["PaddingLeft"]
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K21 ["UIPadding"]
       83 CALL                             R8 3 1
       84 RETURN                           R8 1
       85 LOADNIL                          R8
       86 RETURN                           R8 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["ref"]
        6 DUPTABLE                         R2 K3 [{"width"}]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["width"]
       10 SETTABLEKS                       R2 R0 K4 ["state"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R2 R0 K5 ["setExpandedAssetId"]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K6 ["OnAbsoluteSizeChanged"]
       21 NEWCLOSURE                       R2 P2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R2 R0 K7 ["createHeaderElement"]
       31 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["OnAbsoluteSizeChanged"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TryInsert"]
        3 GETUPVAL                         R2 1
        4 ORK                              R3 R0 K1 [False]
        5 LOADNIL                          R4
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K2 ["props"]
        9 GETTABLEKS                       R5 R6 K3 ["SwimlaneName"]
       11 CALL                             R1 4 0
       12 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 GETTABLEKS                       R2 R0 K0 ["Asset"]
        6 JUMPIFNOT                        R2 ; [+59]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["Generator"]
       10 DUPTABLE                         R4 K14 [{"key", "AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "LayoutOrder", "LogImpression", "OnExpanded", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig", "width"}]
       11 GETTABLEKS                       R5 R2 K15 ["Id"]
       13 SETTABLEKS                       R5 R4 K2 ["key"]
       15 SETTABLEKS                       R0 R4 K3 ["AssetInfo"]
       17 GETUPVAL                         R5 3
       18 SETTABLEKS                       R5 R4 K4 ["CanInsertAsset"]
       20 SETTABLEKS                       R1 R4 K5 ["InsertAsset"]
       22 GETTABLEKS                       R6 R2 K15 ["Id"]
       24 GETUPVAL                         R7 4
       25 JUMPIFEQ                         R6 R7 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K6 ["IsExpanded"]
       31 GETUPVAL                         R6 5
       32 NAMECALL                         R6 R6 K17 ["getNextOrder"]
       34 CALL                             R6 1 1
       35 ADDK                             R5 R6 K16 [1]
       36 SETTABLEKS                       R5 R4 K7 ["LayoutOrder"]
       38 GETUPVAL                         R5 6
       39 SETTABLEKS                       R5 R4 K8 ["LogImpression"]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K18 ["setExpandedAssetId"]
       44 SETTABLEKS                       R5 R4 K9 ["OnExpanded"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K10 ["OnAssetPreviewButtonClicked"]
       49 SETTABLEKS                       R5 R4 K10 ["OnAssetPreviewButtonClicked"]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R5 R6 K11 ["ParentAbsoluteSize"]
       54 SETTABLEKS                       R5 R4 K11 ["ParentAbsoluteSize"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K12 ["TryOpenAssetConfig"]
       59 SETTABLEKS                       R5 R4 K12 ["TryOpenAssetConfig"]
       61 GETUPVAL                         R5 7
       62 SETTABLEKS                       R5 R4 K13 ["width"]
       64 CALL                             R3 1 -1
       65 RETURN                           R3 -1
       66 LOADNIL                          R3
       67 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Assets"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["LogImpression"]
       12 GETTABLEKS                       R7 R1 K6 ["CanInsertAsset"]
       14 GETTABLEKS                       R8 R2 K7 ["expandedAssetId"]
       16 GETTABLEKS                       R9 R2 K8 ["width"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R10 R11 K9 ["new"]
       21 CALL                             R10 0 1
       22 GETUPVAL                         R12 1
       23 GETTABLEKS                       R11 R12 K10 ["map"]
       25 MOVE                             R12 R4
       26 NEWCLOSURE                       R13 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R8
       32 CAPTURE                          VAL R10
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R9
       35 CALL                             R11 2 1
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R12 R13 K9 ["new"]
       39 CALL                             R12 0 1
       40 GETUPVAL                         R14 3
       41 GETTABLEKS                       R13 R14 K11 ["createElement"]
       43 GETUPVAL                         R14 4
       44 NEWTABLE                         R15 8 0
       46 GETIMPORT                        R16 K15 [Enum.AutomaticSize.Y]
       48 SETTABLEKS                       R16 R15 K13 ["AutomaticSize"]
       50 LOADN                            R16 1
       51 SETTABLEKS                       R16 R15 K16 ["BackgroundTransparency"]
       53 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
       55 GETIMPORT                        R16 K18 [UDim2.new]
       57 LOADN                            R17 1
       58 LOADN                            R18 0
       59 LOADN                            R19 0
       60 LOADN                            R20 0
       61 CALL                             R16 4 1
       62 SETTABLEKS                       R16 R15 K19 ["Size"]
       64 GETIMPORT                        R16 K22 [Enum.FillDirection.Vertical]
       66 SETTABLEKS                       R16 R15 K23 ["Layout"]
       68 GETUPVAL                         R17 3
       69 GETTABLEKS                       R16 R17 K24 ["Ref"]
       71 GETTABLEKS                       R17 R0 K25 ["ref"]
       73 SETTABLE                         R17 R15 R16
       74 GETUPVAL                         R18 3
       75 GETTABLEKS                       R17 R18 K26 ["Change"]
       77 GETTABLEKS                       R16 R17 K27 ["AbsoluteSize"]
       79 GETTABLEKS                       R17 R0 K28 ["OnAbsoluteSizeChanged"]
       81 SETTABLE                         R17 R15 R16
       82 DUPTABLE                         R16 K31 [{"HeaderRow", "RowsWrapper"}]
       83 GETUPVAL                         R18 3
       84 GETTABLEKS                       R17 R18 K11 ["createElement"]
       86 GETUPVAL                         R18 4
       87 DUPTABLE                         R19 K33 [{"BackgroundTransparency", "LayoutOrder", "Size", "Layout", "Padding"}]
       88 LOADN                            R20 1
       89 SETTABLEKS                       R20 R19 K16 ["BackgroundTransparency"]
       91 LOADN                            R20 1
       92 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
       94 GETIMPORT                        R20 K18 [UDim2.new]
       96 LOADN                            R21 1
       97 LOADN                            R22 0
       98 LOADN                            R23 0
       99 LOADN                            R24 20
      100 CALL                             R20 4 1
      101 SETTABLEKS                       R20 R19 K19 ["Size"]
      103 GETIMPORT                        R20 K35 [Enum.FillDirection.Horizontal]
      105 SETTABLEKS                       R20 R19 K23 ["Layout"]
      107 GETUPVAL                         R21 5
      108 CALL                             R21 0 1
      109 JUMPIFNOT                        R21 ; [+6]
      110 GETUPVAL                         R22 6
      111 GETTABLEKS                       R21 R22 K36 ["ITEM_ROW"]
      113 GETTABLEKS                       R20 R21 K37 ["BORDER_SIZE"]
      115 JUMP                             ; [+29]
      116 DUPTABLE                         R20 K42 [{"Right", "Left", "Top", "Bottom"}]
      117 GETUPVAL                         R23 6
      118 GETTABLEKS                       R22 R23 K43 ["AUDIO_ROW"]
      120 GETTABLEKS                       R21 R22 K37 ["BORDER_SIZE"]
      122 SETTABLEKS                       R21 R20 K38 ["Right"]
      124 GETUPVAL                         R23 6
      125 GETTABLEKS                       R22 R23 K43 ["AUDIO_ROW"]
      127 GETTABLEKS                       R21 R22 K37 ["BORDER_SIZE"]
      129 SETTABLEKS                       R21 R20 K39 ["Left"]
      131 GETUPVAL                         R23 6
      132 GETTABLEKS                       R22 R23 K43 ["AUDIO_ROW"]
      134 GETTABLEKS                       R21 R22 K37 ["BORDER_SIZE"]
      136 SETTABLEKS                       R21 R20 K40 ["Top"]
      138 GETUPVAL                         R23 6
      139 GETTABLEKS                       R22 R23 K43 ["AUDIO_ROW"]
      141 GETTABLEKS                       R21 R22 K37 ["BORDER_SIZE"]
      143 SETTABLEKS                       R21 R20 K41 ["Bottom"]
      145 SETTABLEKS                       R20 R19 K32 ["Padding"]
      147 DUPTABLE                         R20 K49 [{"Icon", "Title", "Creator", "Tags", "Length"}]
      148 GETTABLEKS                       R21 R0 K50 ["createHeaderElement"]
      150 LOADK                            R22 K51 [""]
      151 GETUPVAL                         R26 6
      152 GETTABLEKS                       R25 R26 K43 ["AUDIO_ROW"]
      154 GETTABLEKS                       R24 R25 K52 ["COLUMNS"]
      156 GETTABLEKS                       R23 R24 K53 ["ICON"]
      158 NAMECALL                         R24 R12 K54 ["getNextOrder"]
      160 CALL                             R24 1 -1
      161 CALL                             R21 -1 1
      162 SETTABLEKS                       R21 R20 K44 ["Icon"]
      164 GETTABLEKS                       R21 R0 K50 ["createHeaderElement"]
      166 LOADK                            R24 K55 ["AudioView"]
      167 LOADK                            R25 K45 ["Title"]
      168 NAMECALL                         R22 R3 K56 ["getText"]
      170 CALL                             R22 3 1
      171 NAMECALL                         R22 R22 K57 ["upper"]
      173 CALL                             R22 1 1
      174 GETUPVAL                         R26 6
      175 GETTABLEKS                       R25 R26 K43 ["AUDIO_ROW"]
      177 GETTABLEKS                       R24 R25 K52 ["COLUMNS"]
      179 GETTABLEKS                       R23 R24 K58 ["TITLE"]
      181 NAMECALL                         R24 R12 K54 ["getNextOrder"]
      183 CALL                             R24 1 -1
      184 CALL                             R21 -1 1
      185 SETTABLEKS                       R21 R20 K45 ["Title"]
      187 GETTABLEKS                       R21 R0 K50 ["createHeaderElement"]
      189 LOADK                            R24 K55 ["AudioView"]
      190 LOADK                            R25 K46 ["Creator"]
      191 NAMECALL                         R22 R3 K56 ["getText"]
      193 CALL                             R22 3 1
      194 NAMECALL                         R22 R22 K57 ["upper"]
      196 CALL                             R22 1 1
      197 GETUPVAL                         R26 6
      198 GETTABLEKS                       R25 R26 K43 ["AUDIO_ROW"]
      200 GETTABLEKS                       R24 R25 K52 ["COLUMNS"]
      202 GETTABLEKS                       R23 R24 K59 ["CREATOR"]
      204 NAMECALL                         R24 R12 K54 ["getNextOrder"]
      206 CALL                             R24 1 -1
      207 CALL                             R21 -1 1
      208 SETTABLEKS                       R21 R20 K46 ["Creator"]
      210 GETTABLEKS                       R21 R0 K50 ["createHeaderElement"]
      212 LOADK                            R24 K55 ["AudioView"]
      213 LOADK                            R25 K47 ["Tags"]
      214 NAMECALL                         R22 R3 K56 ["getText"]
      216 CALL                             R22 3 1
      217 NAMECALL                         R22 R22 K57 ["upper"]
      219 CALL                             R22 1 1
      220 GETUPVAL                         R26 6
      221 GETTABLEKS                       R25 R26 K43 ["AUDIO_ROW"]
      223 GETTABLEKS                       R24 R25 K52 ["COLUMNS"]
      225 GETTABLEKS                       R23 R24 K60 ["TAGS"]
      227 NAMECALL                         R24 R12 K54 ["getNextOrder"]
      229 CALL                             R24 1 -1
      230 CALL                             R21 -1 1
      231 SETTABLEKS                       R21 R20 K47 ["Tags"]
      233 GETTABLEKS                       R21 R0 K50 ["createHeaderElement"]
      235 LOADK                            R24 K55 ["AudioView"]
      236 LOADK                            R25 K48 ["Length"]
      237 NAMECALL                         R22 R3 K56 ["getText"]
      239 CALL                             R22 3 1
      240 NAMECALL                         R22 R22 K57 ["upper"]
      242 CALL                             R22 1 1
      243 GETUPVAL                         R26 6
      244 GETTABLEKS                       R25 R26 K43 ["AUDIO_ROW"]
      246 GETTABLEKS                       R24 R25 K52 ["COLUMNS"]
      248 GETTABLEKS                       R23 R24 K61 ["LENGTH"]
      250 NAMECALL                         R24 R12 K54 ["getNextOrder"]
      252 CALL                             R24 1 1
      253 GETIMPORT                        R25 K63 [Enum.TextXAlignment.Right]
      255 CALL                             R21 4 1
      256 SETTABLEKS                       R21 R20 K48 ["Length"]
      258 CALL                             R17 3 1
      259 SETTABLEKS                       R17 R16 K29 ["HeaderRow"]
      261 GETUPVAL                         R18 3
      262 GETTABLEKS                       R17 R18 K64 ["createFragment"]
      264 MOVE                             R18 R11
      265 CALL                             R17 1 1
      266 SETTABLEKS                       R17 R16 K30 ["RowsWrapper"]
      268 CALL                             R13 3 -1
      269 RETURN                           R13 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R6 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R5 K12 ["LayoutOrderIterator"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R5 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R3 K14 ["ContextServices"]
       40 GETTABLEKS                       R9 R8 K15 ["withContext"]
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R13 R0 K10 ["Src"]
       46 GETTABLEKS                       R12 R13 K16 ["Components"]
       48 GETTABLEKS                       R11 R12 K17 ["AssetLogicWrapper"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R14 R0 K10 ["Src"]
       55 GETTABLEKS                       R13 R14 K18 ["Models"]
       57 GETTABLEKS                       R12 R13 K19 ["AssetInfo"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R15 R0 K10 ["Src"]
       64 GETTABLEKS                       R14 R15 K20 ["Types"]
       66 GETTABLEKS                       R13 R14 K21 ["AssetLogicTypes"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R3 K22 ["UI"]
       71 GETTABLEKS                       R14 R13 K23 ["TextLabel"]
       73 GETTABLEKS                       R15 R13 K24 ["Pane"]
       75 GETIMPORT                        R16 K6 [require]
       77 GETTABLEKS                       R20 R0 K10 ["Src"]
       79 GETTABLEKS                       R19 R20 K16 ["Components"]
       81 GETTABLEKS                       R18 R19 K25 ["Audio"]
       83 GETTABLEKS                       R17 R18 K26 ["AudioRow"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K6 [require]
       88 GETTABLEKS                       R21 R0 K10 ["Src"]
       90 GETTABLEKS                       R20 R21 K16 ["Components"]
       92 GETTABLEKS                       R19 R20 K25 ["Audio"]
       94 GETTABLEKS                       R18 R19 K27 ["GetAudioTableSizes"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K6 [require]
       99 GETTABLEKS                       R22 R0 K10 ["Src"]
      101 GETTABLEKS                       R21 R22 K11 ["Util"]
      103 GETTABLEKS                       R20 R21 K28 ["SharedFlags"]
      105 GETTABLEKS                       R19 R20 K29 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
      107 CALL                             R18 1 1
      108 GETTABLEKS                       R19 R2 K30 ["PureComponent"]
      110 LOADK                            R21 K31 ["AudioTable"]
      111 NAMECALL                         R19 R19 K32 ["extend"]
      113 CALL                             R19 2 1
      114 DUPCLOSURE                       R20 K33 [PROTO_4]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R18
      120 SETTABLEKS                       R20 R19 K34 ["init"]
      122 DUPCLOSURE                       R20 K35 [PROTO_5]
      123 SETTABLEKS                       R20 R19 K36 ["didMount"]
      125 DUPCLOSURE                       R20 K37 [PROTO_8]
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R20 R19 K38 ["render"]
      135 MOVE                             R20 R9
      136 DUPTABLE                         R21 K41 [{"Localization", "Stylizer"}]
      137 GETTABLEKS                       R22 R8 K39 ["Localization"]
      139 SETTABLEKS                       R22 R21 K39 ["Localization"]
      141 GETTABLEKS                       R22 R8 K40 ["Stylizer"]
      143 SETTABLEKS                       R22 R21 K40 ["Stylizer"]
      145 CALL                             R20 1 1
      146 MOVE                             R21 R19
      147 CALL                             R20 1 1
      148 MOVE                             R19 R20
      149 NEWCLOSURE                       R20 P3
      150 CAPTURE                          VAL R2
      151 CAPTURE                          REF R19
      152 SETGLOBAL                        R20 K42 ["TypedAudioTable"]
      154 DUPTABLE                         R20 K45 [{"Component", "Generator"}]
      155 SETTABLEKS                       R19 R20 K43 ["Component"]
      157 GETGLOBAL                        R21 K42 ["TypedAudioTable"]
      159 SETTABLEKS                       R21 R20 K44 ["Generator"]
      161 CLOSEUPVALS                      R19
      162 RETURN                           R20 1
