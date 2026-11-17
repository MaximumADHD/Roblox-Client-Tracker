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
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ref"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+16]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R2 K3 [{"width"}]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["ref"]
       11 GETTABLEKS                       R3 R3 K1 ["current"]
       13 GETTABLEKS                       R3 R3 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R3 R3 K5 ["X"]
       17 SETTABLEKS                       R3 R2 K2 ["width"]
       19 NAMECALL                         R0 R0 K6 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["state"]
        3 GETTABLEKS                       R4 R4 K1 ["width"]
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["props"]
        9 GETTABLEKS                       R6 R6 K3 ["AudioType"]
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K4 ["Stylizer"]
       16 GETTABLEKS                       R6 R6 K5 ["itemRow"]
       18 GETTABLE                         R7 R5 R1
       19 JUMPIFNOT                        R7 ; [+65]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K6 ["createElement"]
       23 GETUPVAL                         R9 4
       24 DUPTABLE                         R10 K14 [{"Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment"}]
       25 GETUPVAL                         R11 5
       26 GETTABLEKS                       R11 R11 K15 ["FONT"]
       28 SETTABLEKS                       R11 R10 K7 ["Font"]
       30 SETTABLEKS                       R2 R10 K8 ["LayoutOrder"]
       32 SETTABLEKS                       R7 R10 K9 ["Size"]
       34 SETTABLEKS                       R0 R10 K10 ["Text"]
       36 GETTABLEKS                       R11 R6 K16 ["headerTextColor"]
       38 SETTABLEKS                       R11 R10 K11 ["TextColor"]
       40 GETUPVAL                         R11 5
       41 GETTABLEKS                       R11 R11 K17 ["FONT_SIZE_SMALL"]
       43 SETTABLEKS                       R11 R10 K12 ["TextSize"]
       45 MOVE                             R11 R3
       46 JUMPIF                           R11 ; [+2]
       47 GETIMPORT                        R11 K20 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R11 R10 K13 ["TextXAlignment"]
       51 DUPTABLE                         R11 K22 [{"UIPadding"}]
       52 LOADB                            R12 0
       53 JUMPIFEQKN                       R2 K23 [1] ; [+27]
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R12 R12 K6 ["createElement"]
       58 LOADK                            R13 K21 ["UIPadding"]
       59 DUPTABLE                         R14 K25 [{"PaddingLeft"}]
       60 GETIMPORT                        R15 K28 [UDim.new]
       62 LOADN                            R16 0
       63 GETUPVAL                         R18 6
       64 CALL                             R18 0 1
       65 JUMPIFNOT                        R18 ; [+6]
       66 GETUPVAL                         R17 5
       67 GETTABLEKS                       R17 R17 K29 ["ITEM_ROW"]
       69 GETTABLEKS                       R17 R17 K30 ["LEFT_RIGHT_PADDING"]
       71 JUMP                             ; [+5]
       72 GETUPVAL                         R17 5
       73 GETTABLEKS                       R17 R17 K31 ["AUDIO_ROW"]
       75 GETTABLEKS                       R17 R17 K30 ["LEFT_RIGHT_PADDING"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K24 ["PaddingLeft"]
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K21 ["UIPadding"]
       83 CALL                             R8 3 1
       84 RETURN                           R8 1
       85 LOADNIL                          R8
       86 RETURN                           R8 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["ref"]
        6 DUPTABLE                         R2 K4 [{["width"] = 0}]
        7 SETTABLEKS                       R2 R0 K5 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R2 R0 K6 ["setExpandedAssetId"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K7 ["OnAbsoluteSizeChanged"]
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R2 R0 K8 ["createHeaderElement"]
       28 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["OnAbsoluteSizeChanged"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TryInsert"]
        3 GETUPVAL                         R2 1
        4 ORK                              R3 R0 K1 [False]
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K2 ["props"]
        9 GETTABLEKS                       R5 R5 K3 ["SwimlaneName"]
       11 CALL                             R1 4 0
       12 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 GETTABLEKS                       R2 R0 K0 ["Asset"]
        6 JUMPIFNOT                        R2 ; [+59]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["Generator"]
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
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K18 ["setExpandedAssetId"]
       44 SETTABLEKS                       R5 R4 K9 ["OnExpanded"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K10 ["OnAssetPreviewButtonClicked"]
       49 SETTABLEKS                       R5 R4 K10 ["OnAssetPreviewButtonClicked"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K11 ["ParentAbsoluteSize"]
       54 SETTABLEKS                       R5 R4 K11 ["ParentAbsoluteSize"]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K12 ["TryOpenAssetConfig"]
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
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K9 ["new"]
       21 CALL                             R10 0 1
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R11 R11 K10 ["map"]
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
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K9 ["new"]
       39 CALL                             R12 0 1
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R13 R13 K11 ["createElement"]
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
       68 GETUPVAL                         R16 3
       69 GETTABLEKS                       R16 R16 K24 ["Ref"]
       71 GETTABLEKS                       R17 R0 K25 ["ref"]
       73 SETTABLE                         R17 R15 R16
       74 GETUPVAL                         R16 3
       75 GETTABLEKS                       R16 R16 K26 ["Change"]
       77 GETTABLEKS                       R16 R16 K27 ["AbsoluteSize"]
       79 GETTABLEKS                       R17 R0 K28 ["OnAbsoluteSizeChanged"]
       81 SETTABLE                         R17 R15 R16
       82 DUPTABLE                         R16 K31 [{"HeaderRow", "RowsWrapper"}]
       83 GETUPVAL                         R17 3
       84 GETTABLEKS                       R17 R17 K11 ["createElement"]
       86 GETUPVAL                         R18 4
       87 DUPTABLE                         R19 K34 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"], ["Layout"], ["Padding"]}]
       88 GETIMPORT                        R20 K18 [UDim2.new]
       90 LOADN                            R21 1
       91 LOADN                            R22 0
       92 LOADN                            R23 0
       93 LOADN                            R24 20
       94 CALL                             R20 4 1
       95 SETTABLEKS                       R20 R19 K19 ["Size"]
       97 GETIMPORT                        R20 K36 [Enum.FillDirection.Horizontal]
       99 SETTABLEKS                       R20 R19 K23 ["Layout"]
      101 GETUPVAL                         R21 5
      102 CALL                             R21 0 1
      103 JUMPIFNOT                        R21 ; [+6]
      104 GETUPVAL                         R20 6
      105 GETTABLEKS                       R20 R20 K37 ["ITEM_ROW"]
      107 GETTABLEKS                       R20 R20 K38 ["BORDER_SIZE"]
      109 JUMP                             ; [+29]
      110 DUPTABLE                         R20 K43 [{"Right", "Left", "Top", "Bottom"}]
      111 GETUPVAL                         R21 6
      112 GETTABLEKS                       R21 R21 K44 ["AUDIO_ROW"]
      114 GETTABLEKS                       R21 R21 K38 ["BORDER_SIZE"]
      116 SETTABLEKS                       R21 R20 K39 ["Right"]
      118 GETUPVAL                         R21 6
      119 GETTABLEKS                       R21 R21 K44 ["AUDIO_ROW"]
      121 GETTABLEKS                       R21 R21 K38 ["BORDER_SIZE"]
      123 SETTABLEKS                       R21 R20 K40 ["Left"]
      125 GETUPVAL                         R21 6
      126 GETTABLEKS                       R21 R21 K44 ["AUDIO_ROW"]
      128 GETTABLEKS                       R21 R21 K38 ["BORDER_SIZE"]
      130 SETTABLEKS                       R21 R20 K41 ["Top"]
      132 GETUPVAL                         R21 6
      133 GETTABLEKS                       R21 R21 K44 ["AUDIO_ROW"]
      135 GETTABLEKS                       R21 R21 K38 ["BORDER_SIZE"]
      137 SETTABLEKS                       R21 R20 K42 ["Bottom"]
      139 SETTABLEKS                       R20 R19 K33 ["Padding"]
      141 DUPTABLE                         R20 K50 [{"Icon", "Title", "Creator", "Tags", "Length"}]
      142 GETTABLEKS                       R21 R0 K51 ["createHeaderElement"]
      144 LOADK                            R22 K52 [""]
      145 GETUPVAL                         R23 6
      146 GETTABLEKS                       R23 R23 K44 ["AUDIO_ROW"]
      148 GETTABLEKS                       R23 R23 K53 ["COLUMNS"]
      150 GETTABLEKS                       R23 R23 K54 ["ICON"]
      152 NAMECALL                         R24 R12 K55 ["getNextOrder"]
      154 CALL                             R24 1 -1
      155 CALL                             R21 -1 1
      156 SETTABLEKS                       R21 R20 K45 ["Icon"]
      158 GETTABLEKS                       R21 R0 K51 ["createHeaderElement"]
      160 LOADK                            R24 K56 ["AudioView"]
      161 LOADK                            R25 K46 ["Title"]
      162 NAMECALL                         R22 R3 K57 ["getText"]
      164 CALL                             R22 3 1
      165 NAMECALL                         R22 R22 K58 ["upper"]
      167 CALL                             R22 1 1
      168 GETUPVAL                         R23 6
      169 GETTABLEKS                       R23 R23 K44 ["AUDIO_ROW"]
      171 GETTABLEKS                       R23 R23 K53 ["COLUMNS"]
      173 GETTABLEKS                       R23 R23 K59 ["TITLE"]
      175 NAMECALL                         R24 R12 K55 ["getNextOrder"]
      177 CALL                             R24 1 -1
      178 CALL                             R21 -1 1
      179 SETTABLEKS                       R21 R20 K46 ["Title"]
      181 GETTABLEKS                       R21 R0 K51 ["createHeaderElement"]
      183 LOADK                            R24 K56 ["AudioView"]
      184 LOADK                            R25 K47 ["Creator"]
      185 NAMECALL                         R22 R3 K57 ["getText"]
      187 CALL                             R22 3 1
      188 NAMECALL                         R22 R22 K58 ["upper"]
      190 CALL                             R22 1 1
      191 GETUPVAL                         R23 6
      192 GETTABLEKS                       R23 R23 K44 ["AUDIO_ROW"]
      194 GETTABLEKS                       R23 R23 K53 ["COLUMNS"]
      196 GETTABLEKS                       R23 R23 K60 ["CREATOR"]
      198 NAMECALL                         R24 R12 K55 ["getNextOrder"]
      200 CALL                             R24 1 -1
      201 CALL                             R21 -1 1
      202 SETTABLEKS                       R21 R20 K47 ["Creator"]
      204 GETTABLEKS                       R21 R0 K51 ["createHeaderElement"]
      206 LOADK                            R24 K56 ["AudioView"]
      207 LOADK                            R25 K48 ["Tags"]
      208 NAMECALL                         R22 R3 K57 ["getText"]
      210 CALL                             R22 3 1
      211 NAMECALL                         R22 R22 K58 ["upper"]
      213 CALL                             R22 1 1
      214 GETUPVAL                         R23 6
      215 GETTABLEKS                       R23 R23 K44 ["AUDIO_ROW"]
      217 GETTABLEKS                       R23 R23 K53 ["COLUMNS"]
      219 GETTABLEKS                       R23 R23 K61 ["TAGS"]
      221 NAMECALL                         R24 R12 K55 ["getNextOrder"]
      223 CALL                             R24 1 -1
      224 CALL                             R21 -1 1
      225 SETTABLEKS                       R21 R20 K48 ["Tags"]
      227 GETTABLEKS                       R21 R0 K51 ["createHeaderElement"]
      229 LOADK                            R24 K56 ["AudioView"]
      230 LOADK                            R25 K49 ["Length"]
      231 NAMECALL                         R22 R3 K57 ["getText"]
      233 CALL                             R22 3 1
      234 NAMECALL                         R22 R22 K58 ["upper"]
      236 CALL                             R22 1 1
      237 GETUPVAL                         R23 6
      238 GETTABLEKS                       R23 R23 K44 ["AUDIO_ROW"]
      240 GETTABLEKS                       R23 R23 K53 ["COLUMNS"]
      242 GETTABLEKS                       R23 R23 K62 ["LENGTH"]
      244 NAMECALL                         R24 R12 K55 ["getNextOrder"]
      246 CALL                             R24 1 1
      247 GETIMPORT                        R25 K64 [Enum.TextXAlignment.Right]
      249 CALL                             R21 4 1
      250 SETTABLEKS                       R21 R20 K49 ["Length"]
      252 CALL                             R17 3 1
      253 SETTABLEKS                       R17 R16 K29 ["HeaderRow"]
      255 GETUPVAL                         R17 3
      256 GETTABLEKS                       R17 R17 K65 ["createFragment"]
      258 MOVE                             R18 R11
      259 CALL                             R17 1 1
      260 SETTABLEKS                       R17 R16 K30 ["RowsWrapper"]
      262 CALL                             R13 3 -1
      263 RETURN                           R13 -1

PROTO_9:
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
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R5 K11 ["Util"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R5 K12 ["LayoutOrderIterator"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R5 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R3 K14 ["ContextServices"]
       40 GETTABLEKS                       R9 R8 K15 ["withContext"]
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R0 K10 ["Src"]
       46 GETTABLEKS                       R11 R11 K16 ["Components"]
       48 GETTABLEKS                       R11 R11 K17 ["AssetLogicWrapper"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R0 K10 ["Src"]
       55 GETTABLEKS                       R12 R12 K18 ["Models"]
       57 GETTABLEKS                       R12 R12 K19 ["AssetInfo"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R0 K10 ["Src"]
       64 GETTABLEKS                       R13 R13 K20 ["Types"]
       66 GETTABLEKS                       R13 R13 K21 ["AssetLogicTypes"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R3 K22 ["UI"]
       71 GETTABLEKS                       R14 R13 K23 ["TextLabel"]
       73 GETTABLEKS                       R15 R13 K24 ["Pane"]
       75 GETIMPORT                        R16 K6 [require]
       77 GETTABLEKS                       R17 R0 K10 ["Src"]
       79 GETTABLEKS                       R17 R17 K16 ["Components"]
       81 GETTABLEKS                       R17 R17 K25 ["Audio"]
       83 GETTABLEKS                       R17 R17 K26 ["AudioRow"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K6 [require]
       88 GETTABLEKS                       R18 R0 K10 ["Src"]
       90 GETTABLEKS                       R18 R18 K16 ["Components"]
       92 GETTABLEKS                       R18 R18 K25 ["Audio"]
       94 GETTABLEKS                       R18 R18 K27 ["GetAudioTableSizes"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K6 [require]
       99 GETTABLEKS                       R19 R0 K10 ["Src"]
      101 GETTABLEKS                       R19 R19 K11 ["Util"]
      103 GETTABLEKS                       R19 R19 K28 ["SharedFlags"]
      105 GETTABLEKS                       R19 R19 K29 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
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
