PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnHoverChanged"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["OnHoverChanged"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 0
       10 DUPTABLE                         R2 K3 [{"isHovered"}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K2 ["isHovered"]
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateHoverState"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateHoverState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnExpanded"]
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["AssetInfo"]
       11 GETTABLEKS                       R1 R1 K3 ["Asset"]
       13 GETTABLEKS                       R1 R1 K4 ["Id"]
       15 GETTABLEKS                       R2 R0 K1 ["OnExpanded"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CanInsertAsset"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["InsertAsset"]
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["InsertAsset"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R1 R0 K1 ["InsertAsset"]
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R2 R0 K2 ["Plugin"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K4 ["TryOpenAssetConfig"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K5 ["getPageInfoAnalyticsContextInfo"]
       17 MOVE                             R5 R4
       18 CALL                             R5 0 1
       19 GETTABLEKS                       R6 R0 K6 ["tryCreateContextMenu"]
       21 MOVE                             R7 R1
       22 GETTABLEKS                       R8 R0 K7 ["Localization"]
       24 MOVE                             R9 R2
       25 MOVE                             R10 R3
       26 MOVE                             R11 R5
       27 CALL                             R6 5 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R2 R0 K2 ["LogImpression"]
        7 JUMPIFNOT                        R2 ; [+14]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K2 ["LogImpression"]
       11 MOVE                             R4 R1
       12 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
       14 GETTABLEKS                       R6 R0 K4 ["AbsolutePosition"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K5 ["wasAssetBoundsWithinScrollingBounds"]
       19 CALL                             R3 4 1
       20 SETTABLEKS                       R3 R2 K5 ["wasAssetBoundsWithinScrollingBounds"]
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Columns"]
        5 NEWTABLE                         R3 0 0
        7 MOVE                             R4 R2
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K2 ["Hidden"]
       13 JUMPIF                           R9 ; [+187]
       14 GETTABLEKS                       R10 R8 K3 ["OnClick"]
       16 JUMPIFNOTEQKNIL                  R10 ; [+2]
       18 LOADB                            R9 0 +1
       19 LOADB                            R9 1
       20 GETUPVAL                         R11 1
       21 CALL                             R11 0 1
       22 JUMPIFNOT                        R11 ; [+6]
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R10 R10 K4 ["ITEM_ROW"]
       26 GETTABLEKS                       R10 R10 K5 ["LEFT_RIGHT_PADDING"]
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K6 ["AUDIO_ROW"]
       32 GETTABLEKS                       R10 R10 K5 ["LEFT_RIGHT_PADDING"]
       34 GETTABLEKS                       R11 R8 K7 ["DevLabel"]
       36 GETUPVAL                         R12 3
       37 GETTABLEKS                       R12 R12 K8 ["createElement"]
       39 GETUPVAL                         R13 4
       40 DUPTABLE                         R14 K12 [{"LayoutOrder", "Padding", "Size"}]
       41 NAMECALL                         R15 R0 K13 ["getNextOrder"]
       43 CALL                             R15 1 1
       44 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       46 DUPTABLE                         R15 K18 [{"Bottom", "Left", "Right", "Top"}]
       47 GETTABLEKS                       R17 R8 K10 ["Padding"]
       49 JUMPIFNOT                        R17 ; [+10]
       50 GETTABLEKS                       R17 R8 K10 ["Padding"]
       52 GETTABLEKS                       R17 R17 K14 ["Bottom"]
       54 JUMPIFNOT                        R17 ; [+5]
       55 GETTABLEKS                       R16 R8 K10 ["Padding"]
       57 GETTABLEKS                       R16 R16 K14 ["Bottom"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R16
       61 SETTABLEKS                       R16 R15 K14 ["Bottom"]
       63 GETTABLEKS                       R17 R8 K10 ["Padding"]
       65 JUMPIFNOT                        R17 ; [+11]
       66 GETTABLEKS                       R17 R8 K10 ["Padding"]
       68 GETTABLEKS                       R17 R17 K15 ["Left"]
       70 JUMPIFNOT                        R17 ; [+6]
       71 GETTABLEKS                       R17 R8 K10 ["Padding"]
       73 GETTABLEKS                       R17 R17 K15 ["Left"]
       75 ADD                              R16 R10 R17
       76 JUMP                             ; [+1]
       77 MOVE                             R16 R10
       78 SETTABLEKS                       R16 R15 K15 ["Left"]
       80 GETTABLEKS                       R17 R8 K10 ["Padding"]
       82 JUMPIFNOT                        R17 ; [+10]
       83 GETTABLEKS                       R17 R8 K10 ["Padding"]
       85 GETTABLEKS                       R17 R17 K16 ["Right"]
       87 JUMPIFNOT                        R17 ; [+5]
       88 GETTABLEKS                       R16 R8 K10 ["Padding"]
       90 GETTABLEKS                       R16 R16 K16 ["Right"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R16
       94 SETTABLEKS                       R16 R15 K16 ["Right"]
       96 GETTABLEKS                       R17 R8 K10 ["Padding"]
       98 JUMPIFNOT                        R17 ; [+10]
       99 GETTABLEKS                       R17 R8 K10 ["Padding"]
      101 GETTABLEKS                       R17 R17 K17 ["Top"]
      103 JUMPIFNOT                        R17 ; [+5]
      104 GETTABLEKS                       R16 R8 K10 ["Padding"]
      106 GETTABLEKS                       R16 R16 K17 ["Top"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R16
      110 SETTABLEKS                       R16 R15 K17 ["Top"]
      112 SETTABLEKS                       R15 R14 K10 ["Padding"]
      114 GETTABLEKS                       R15 R8 K11 ["Size"]
      116 SETTABLEKS                       R15 R14 K11 ["Size"]
      118 DUPTABLE                         R15 K20 [{"Text"}]
      119 JUMPIFNOT                        R9 ; [+41]
      120 GETUPVAL                         R16 3
      121 GETTABLEKS                       R16 R16 K8 ["createElement"]
      123 GETUPVAL                         R17 5
      124 DUPTABLE                         R18 K27 [{["LayoutOrder"], ["OnClick"], ["Size"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["TextWrapped"] = True, ["Style"] = "ToolboxItemRowLink"}]
      125 NAMECALL                         R19 R0 K13 ["getNextOrder"]
      127 CALL                             R19 1 1
      128 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      130 GETTABLEKS                       R19 R8 K3 ["OnClick"]
      132 SETTABLEKS                       R19 R18 K3 ["OnClick"]
      134 GETIMPORT                        R19 K30 [UDim2.fromScale]
      136 LOADN                            R20 1
      137 LOADN                            R21 1
      138 CALL                             R19 2 1
      139 SETTABLEKS                       R19 R18 K11 ["Size"]
      141 GETTABLEKS                       R19 R8 K19 ["Text"]
      143 SETTABLEKS                       R19 R18 K19 ["Text"]
      145 GETTABLEKS                       R20 R8 K21 ["TextTruncate"]
      147 JUMPIFNOT                        R20 ; [+3]
      148 GETTABLEKS                       R19 R8 K21 ["TextTruncate"]
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R19 R1 K21 ["TextTruncate"]
      153 SETTABLEKS                       R19 R18 K21 ["TextTruncate"]
      155 GETIMPORT                        R19 K32 [Enum.TextXAlignment.Left]
      157 SETTABLEKS                       R19 R18 K22 ["TextXAlignment"]
      159 CALL                             R16 2 1
      160 JUMP                             ; [+36]
      161 GETUPVAL                         R16 3
      162 GETTABLEKS                       R16 R16 K8 ["createElement"]
      164 GETUPVAL                         R17 6
      165 DUPTABLE                         R18 K34 [{["LayoutOrder"], ["Size"], ["Text"], ["Style"] = "ToolboxItemRowText", ["TextTruncate"], ["TextXAlignment"]}]
      166 NAMECALL                         R19 R0 K13 ["getNextOrder"]
      168 CALL                             R19 1 1
      169 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      171 GETIMPORT                        R19 K30 [UDim2.fromScale]
      173 LOADN                            R20 1
      174 LOADN                            R21 1
      175 CALL                             R19 2 1
      176 SETTABLEKS                       R19 R18 K11 ["Size"]
      178 GETTABLEKS                       R19 R8 K19 ["Text"]
      180 SETTABLEKS                       R19 R18 K19 ["Text"]
      182 GETTABLEKS                       R20 R8 K21 ["TextTruncate"]
      184 JUMPIFNOT                        R20 ; [+3]
      185 GETTABLEKS                       R19 R8 K21 ["TextTruncate"]
      187 JUMP                             ; [+2]
      188 GETTABLEKS                       R19 R1 K21 ["TextTruncate"]
      190 SETTABLEKS                       R19 R18 K21 ["TextTruncate"]
      192 GETIMPORT                        R19 K32 [Enum.TextXAlignment.Left]
      194 SETTABLEKS                       R19 R18 K22 ["TextXAlignment"]
      196 CALL                             R16 2 1
      197 SETTABLEKS                       R16 R15 K19 ["Text"]
      199 CALL                             R12 3 1
      200 SETTABLE                         R12 R3 R11
      201 FORGLOOP                         R4 2 ; [-191]
      203 RETURN                           R3 1

PROTO_10:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["wasAssetBoundsWithinScrollingBounds"]
        3 DUPTABLE                         R1 K5 [{["isHovered"] = False, ["isExpanded"] = True}]
        4 SETTABLEKS                       R1 R0 K6 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K7 ["updateHoverState"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K8 ["onMouseEnter"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K9 ["onMouseLeave"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K10 ["toggleIsExpanded"]
       22 NEWCLOSURE                       R1 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K11 ["onDragStart"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K12 ["onNameClicked"]
       30 NEWCLOSURE                       R1 P6
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K13 ["tryCreateLocalizedContextMenu"]
       34 NEWCLOSURE                       R1 P7
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K14 ["logImpression"]
       38 NEWCLOSURE                       R1 P8
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 SETTABLEKS                       R1 R0 K15 ["renderColumns"]
       48 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AssetInfo"]
        4 GETTABLEKS                       R3 R1 K2 ["LogImpression"]
        6 GETTABLEKS                       R4 R2 K3 ["Asset"]
        8 JUMPIFNOT                        R4 ; [+11]
        9 GETTABLEKS                       R4 R1 K4 ["getCanManageAsset"]
       11 GETTABLEKS                       R5 R1 K5 ["Network"]
       13 GETTABLEKS                       R5 R5 K6 ["networkInterface"]
       15 GETTABLEKS                       R6 R2 K3 ["Asset"]
       17 GETTABLEKS                       R6 R6 K7 ["Id"]
       19 CALL                             R4 2 0
       20 JUMPIFNOT                        R2 ; [+5]
       21 JUMPIFNOT                        R3 ; [+4]
       22 GETTABLEKS                       R4 R0 K8 ["logImpression"]
       24 CALL                             R4 0 0
       25 RETURN                           R0 0
       26 JUMPIFNOT                        R2 ; [+14]
       27 GETTABLEKS                       R4 R1 K9 ["getPageInfoAnalyticsContextInfo"]
       29 MOVE                             R5 R4
       30 CALL                             R5 0 1
       31 GETTABLEKS                       R6 R1 K10 ["AssetAnalytics"]
       33 NAMECALL                         R6 R6 K11 ["get"]
       35 CALL                             R6 1 1
       36 MOVE                             R8 R2
       37 MOVE                             R9 R5
       38 NAMECALL                         R6 R6 K8 ["logImpression"]
       40 CALL                             R6 3 0
       41 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["AbsolutePosition"]
        4 GETTABLEKS                       R5 R3 K1 ["AbsolutePosition"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+13]
        8 GETTABLEKS                       R4 R1 K2 ["AbsoluteSize"]
       10 GETTABLEKS                       R5 R3 K2 ["AbsoluteSize"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+7]
       14 GETTABLEKS                       R4 R1 K3 ["ParentAbsoluteSize"]
       16 GETTABLEKS                       R5 R3 K3 ["ParentAbsoluteSize"]
       18 JUMPIFEQ                         R4 R5 ; [+4]
       20 GETTABLEKS                       R4 R0 K4 ["logImpression"]
       22 CALL                             R4 0 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AssetInfo"]
        6 GETTABLEKS                       R3 R3 K3 ["Asset"]
        8 GETTABLEKS                       R4 R1 K4 ["ExpandedHeight"]
       10 GETTABLEKS                       R5 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R5 R5 K6 ["itemRow"]
       14 GETTABLEKS                       R6 R1 K7 ["LayoutOrder"]
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETTABLEKS                       R7 R3 K8 ["Name"]
       19 JUMP                             ; [+1]
       20 LOADK                            R7 K9 [""]
       21 GETTABLEKS                       R8 R1 K10 ["IsExpanded"]
       23 GETTABLEKS                       R9 R2 K11 ["isHovered"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K12 ["new"]
       28 CALL                             R10 0 1
       29 JUMPIFNOT                        R6 ; [+6]
       30 MODK                             R12 R6 K13 [2]
       31 JUMPIFNOTEQKN                    R12 K14 [0] ; [+4]
       33 GETTABLEKS                       R11 R5 K15 ["backgroundColorEven"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R11 R5 K16 ["backgroundColorOdd"]
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K17 ["join"]
       41 DUPTABLE                         R13 K21 [{"AutomaticSize", "LayoutOrder", "Position", "Size"}]
       42 GETTABLEKS                       R14 R1 K18 ["AutomaticSize"]
       44 SETTABLEKS                       R14 R13 K18 ["AutomaticSize"]
       46 SETTABLEKS                       R6 R13 K7 ["LayoutOrder"]
       48 GETUPVAL                         R15 2
       49 CALL                             R15 0 1
       50 JUMPIFNOT                        R15 ; [+3]
       51 GETTABLEKS                       R14 R1 K19 ["Position"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R14
       55 SETTABLEKS                       R14 R13 K19 ["Position"]
       57 GETIMPORT                        R14 K23 [UDim2.new]
       59 LOADN                            R15 1
       60 LOADN                            R16 0
       61 LOADN                            R17 0
       62 JUMPIFNOT                        R8 ; [+2]
       63 MOVE                             R18 R4
       64 JUMP                             ; [+5]
       65 GETUPVAL                         R18 3
       66 GETTABLEKS                       R18 R18 K24 ["AUDIO_ROW"]
       68 GETTABLEKS                       R18 R18 K25 ["ROW_HEIGHT"]
       70 CALL                             R14 4 1
       71 SETTABLEKS                       R14 R13 K20 ["Size"]
       73 GETTABLEKS                       R14 R1 K26 ["WrapperProps"]
       75 CALL                             R12 2 1
       76 GETUPVAL                         R14 4
       77 CALL                             R14 0 1
       78 JUMPIFNOT                        R14 ; [+6]
       79 GETUPVAL                         R13 3
       80 GETTABLEKS                       R13 R13 K27 ["ITEM_ROW"]
       82 GETTABLEKS                       R13 R13 K28 ["LEFT_RIGHT_PADDING"]
       84 JUMP                             ; [+5]
       85 GETUPVAL                         R13 3
       86 GETTABLEKS                       R13 R13 K24 ["AUDIO_ROW"]
       88 GETTABLEKS                       R13 R13 K28 ["LEFT_RIGHT_PADDING"]
       90 GETUPVAL                         R15 4
       91 CALL                             R15 0 1
       92 JUMPIFNOT                        R15 ; [+6]
       93 GETUPVAL                         R14 3
       94 GETTABLEKS                       R14 R14 K27 ["ITEM_ROW"]
       96 GETTABLEKS                       R14 R14 K29 ["TOP_BUTTON_PADDING"]
       98 JUMP                             ; [+5]
       99 GETUPVAL                         R14 3
      100 GETTABLEKS                       R14 R14 K24 ["AUDIO_ROW"]
      102 GETTABLEKS                       R14 R14 K29 ["TOP_BUTTON_PADDING"]
      104 GETUPVAL                         R16 4
      105 CALL                             R16 0 1
      106 JUMPIFNOT                        R16 ; [+6]
      107 GETUPVAL                         R15 3
      108 GETTABLEKS                       R15 R15 K27 ["ITEM_ROW"]
      110 GETTABLEKS                       R15 R15 K30 ["BORDER_SIZE"]
      112 JUMP                             ; [+5]
      113 GETUPVAL                         R15 3
      114 GETTABLEKS                       R15 R15 K24 ["AUDIO_ROW"]
      116 GETTABLEKS                       R15 R15 K30 ["BORDER_SIZE"]
      118 GETUPVAL                         R16 5
      119 GETTABLEKS                       R16 R16 K31 ["createElement"]
      121 GETUPVAL                         R17 6
      122 MOVE                             R18 R12
      123 DUPTABLE                         R19 K33 [{"Button"}]
      124 GETUPVAL                         R20 5
      125 GETTABLEKS                       R20 R20 K31 ["createElement"]
      127 GETUPVAL                         R21 7
      128 NEWTABLE                         R22 16 0
      130 SETTABLEKS                       R11 R22 K34 ["BackgroundColor3"]
      132 GETIMPORT                        R23 K23 [UDim2.new]
      134 LOADN                            R24 1
      135 MINUS                            R26 R15
      136 MULK                             R25 R26 K13 [2]
      137 LOADN                            R26 1
      138 MINUS                            R28 R15
      139 MULK                             R27 R28 K13 [2]
      140 CALL                             R23 4 1
      141 SETTABLEKS                       R23 R22 K20 ["Size"]
      143 GETIMPORT                        R23 K23 [UDim2.new]
      145 LOADN                            R24 0
      146 MOVE                             R25 R15
      147 LOADN                            R26 0
      148 MOVE                             R27 R15
      149 CALL                             R23 4 1
      150 SETTABLEKS                       R23 R22 K19 ["Position"]
      152 LOADN                            R23 1
      153 SETTABLEKS                       R23 R22 K35 ["ZIndex"]
      155 GETUPVAL                         R23 5
      156 GETTABLEKS                       R23 R23 K36 ["Event"]
      158 GETTABLEKS                       R23 R23 K37 ["MouseEnter"]
      160 GETTABLEKS                       R24 R0 K38 ["onMouseEnter"]
      162 SETTABLE                         R24 R22 R23
      163 GETUPVAL                         R23 5
      164 GETTABLEKS                       R23 R23 K36 ["Event"]
      166 GETTABLEKS                       R23 R23 K39 ["MouseLeave"]
      168 GETTABLEKS                       R24 R0 K40 ["onMouseLeave"]
      170 SETTABLE                         R24 R22 R23
      171 GETUPVAL                         R23 5
      172 GETTABLEKS                       R23 R23 K36 ["Event"]
      174 GETTABLEKS                       R23 R23 K41 ["MouseButton1Click"]
      176 GETTABLEKS                       R24 R0 K42 ["toggleIsExpanded"]
      178 SETTABLE                         R24 R22 R23
      179 GETUPVAL                         R23 5
      180 GETTABLEKS                       R23 R23 K36 ["Event"]
      182 GETTABLEKS                       R23 R23 K43 ["MouseButton2Click"]
      184 GETTABLEKS                       R24 R0 K44 ["tryCreateLocalizedContextMenu"]
      186 SETTABLE                         R24 R22 R23
      187 GETTABLEKS                       R23 R0 K45 ["onDragStart"]
      189 SETTABLEKS                       R23 R22 K45 ["onDragStart"]
      191 DUPTABLE                         R23 K52 [{"UIStroke", "UIPadding", "UICorner", "Layout", "Details", "ExpandedContents"}]
      192 JUMPIF                           R8 ; [+1]
      193 JUMPIFNOT                        R9 ; [+13]
      194 GETUPVAL                         R24 5
      195 GETTABLEKS                       R24 R24 K31 ["createElement"]
      197 LOADK                            R25 K46 ["UIStroke"]
      198 DUPTABLE                         R26 K55 [{"Thickness", "Color"}]
      199 SETTABLEKS                       R15 R26 K53 ["Thickness"]
      201 GETTABLEKS                       R27 R5 K56 ["borderColor"]
      203 SETTABLEKS                       R27 R26 K54 ["Color"]
      205 CALL                             R24 2 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R24
      208 SETTABLEKS                       R24 R23 K46 ["UIStroke"]
      210 GETUPVAL                         R24 5
      211 GETTABLEKS                       R24 R24 K31 ["createElement"]
      213 LOADK                            R25 K47 ["UIPadding"]
      214 DUPTABLE                         R26 K61 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
      215 GETIMPORT                        R27 K63 [UDim.new]
      217 LOADN                            R28 0
      218 SUB                              R29 R13 R15
      219 CALL                             R27 2 1
      220 SETTABLEKS                       R27 R26 K57 ["PaddingRight"]
      222 GETIMPORT                        R27 K63 [UDim.new]
      224 LOADN                            R28 0
      225 SUB                              R29 R13 R15
      226 CALL                             R27 2 1
      227 SETTABLEKS                       R27 R26 K58 ["PaddingLeft"]
      229 GETIMPORT                        R27 K63 [UDim.new]
      231 LOADN                            R28 0
      232 SUB                              R29 R14 R15
      233 CALL                             R27 2 1
      234 SETTABLEKS                       R27 R26 K59 ["PaddingTop"]
      236 GETIMPORT                        R27 K63 [UDim.new]
      238 LOADN                            R28 0
      239 SUB                              R29 R14 R15
      240 CALL                             R27 2 1
      241 SETTABLEKS                       R27 R26 K60 ["PaddingBottom"]
      243 CALL                             R24 2 1
      244 SETTABLEKS                       R24 R23 K47 ["UIPadding"]
      246 GETUPVAL                         R24 5
      247 GETTABLEKS                       R24 R24 K31 ["createElement"]
      249 LOADK                            R25 K48 ["UICorner"]
      250 DUPTABLE                         R26 K65 [{"CornerRadius"}]
      251 GETIMPORT                        R27 K63 [UDim.new]
      253 LOADN                            R28 0
      254 LOADN                            R29 5
      255 CALL                             R27 2 1
      256 SETTABLEKS                       R27 R26 K64 ["CornerRadius"]
      258 CALL                             R24 2 1
      259 SETTABLEKS                       R24 R23 K48 ["UICorner"]
      261 GETUPVAL                         R24 5
      262 GETTABLEKS                       R24 R24 K31 ["createElement"]
      264 LOADK                            R25 K66 ["UIListLayout"]
      265 DUPTABLE                         R26 K69 [{"FillDirection", "SortOrder"}]
      266 GETIMPORT                        R27 K72 [Enum.FillDirection.Vertical]
      268 SETTABLEKS                       R27 R26 K67 ["FillDirection"]
      270 GETIMPORT                        R27 K73 [Enum.SortOrder.LayoutOrder]
      272 SETTABLEKS                       R27 R26 K68 ["SortOrder"]
      274 CALL                             R24 2 1
      275 SETTABLEKS                       R24 R23 K49 ["Layout"]
      277 GETUPVAL                         R24 5
      278 GETTABLEKS                       R24 R24 K31 ["createElement"]
      280 GETUPVAL                         R25 6
      281 DUPTABLE                         R26 K75 [{"Layout", "LayoutOrder", "HorizontalAlignment", "Size"}]
      282 GETIMPORT                        R27 K77 [Enum.FillDirection.Horizontal]
      284 SETTABLEKS                       R27 R26 K49 ["Layout"]
      286 NAMECALL                         R27 R10 K78 ["getNextOrder"]
      288 CALL                             R27 1 1
      289 SETTABLEKS                       R27 R26 K7 ["LayoutOrder"]
      291 GETIMPORT                        R27 K80 [Enum.HorizontalAlignment.Left]
      293 SETTABLEKS                       R27 R26 K74 ["HorizontalAlignment"]
      295 GETIMPORT                        R27 K23 [UDim2.new]
      297 LOADN                            R28 1
      298 LOADN                            R29 0
      299 LOADN                            R30 0
      300 GETUPVAL                         R31 3
      301 GETTABLEKS                       R31 R31 K24 ["AUDIO_ROW"]
      303 GETTABLEKS                       R31 R31 K81 ["ICON_SIZE"]
      305 CALL                             R27 4 1
      306 SETTABLEKS                       R27 R26 K20 ["Size"]
      308 GETUPVAL                         R27 1
      309 GETTABLEKS                       R27 R27 K17 ["join"]
      311 DUPTABLE                         R28 K83 [{"Icon", "Name"}]
      312 GETTABLEKS                       R30 R1 K84 ["RenderIcon"]
      314 JUMPIFNOT                        R30 ; [+5]
      315 GETTABLEKS                       R29 R1 K84 ["RenderIcon"]
      317 MOVE                             R30 R9
      318 CALL                             R29 1 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R29
      321 SETTABLEKS                       R29 R28 K82 ["Icon"]
      323 GETUPVAL                         R29 5
      324 GETTABLEKS                       R29 R29 K31 ["createElement"]
      326 GETUPVAL                         R30 6
      327 DUPTABLE                         R31 K85 [{"Size", "LayoutOrder"}]
      328 GETTABLEKS                       R32 R1 K86 ["TitleSize"]
      330 SETTABLEKS                       R32 R31 K20 ["Size"]
      332 NAMECALL                         R32 R10 K78 ["getNextOrder"]
      334 CALL                             R32 1 1
      335 SETTABLEKS                       R32 R31 K7 ["LayoutOrder"]
      337 DUPTABLE                         R32 K88 [{"LinkText"}]
      338 GETUPVAL                         R33 5
      339 GETTABLEKS                       R33 R33 K31 ["createElement"]
      341 GETUPVAL                         R34 8
      342 DUPTABLE                         R35 K98 [{["OnClick"], ["HoverAreaSize"], ["Size"], ["Style"] = "ToolboxItemRowTitle", ["Text"], ["TextTruncate"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      343 GETTABLEKS                       R36 R0 K99 ["onNameClicked"]
      345 SETTABLEKS                       R36 R35 K89 ["OnClick"]
      347 GETTABLEKS                       R37 R1 K100 ["ForceLinkTextFullWidth"]
      349 JUMPIFNOT                        R37 ; [+8]
      350 GETIMPORT                        R36 K23 [UDim2.new]
      352 LOADN                            R37 1
      353 LOADN                            R38 0
      354 LOADN                            R39 0
      355 LOADN                            R40 0
      356 CALL                             R36 4 1
      357 JUMP                             ; [+1]
      358 LOADNIL                          R36
      359 SETTABLEKS                       R36 R35 K90 ["HoverAreaSize"]
      361 GETIMPORT                        R36 K23 [UDim2.new]
      363 LOADN                            R37 1
      364 LOADN                            R38 0
      365 LOADN                            R39 1
      366 LOADN                            R40 0
      367 CALL                             R36 4 1
      368 SETTABLEKS                       R36 R35 K20 ["Size"]
      370 SETTABLEKS                       R7 R35 K93 ["Text"]
      372 GETIMPORT                        R36 K102 [Enum.TextTruncate.AtEnd]
      374 SETTABLEKS                       R36 R35 K94 ["TextTruncate"]
      376 GETIMPORT                        R36 K103 [Enum.TextXAlignment.Left]
      378 SETTABLEKS                       R36 R35 K97 ["TextXAlignment"]
      380 CALL                             R33 2 1
      381 SETTABLEKS                       R33 R32 K87 ["LinkText"]
      383 CALL                             R29 3 1
      384 SETTABLEKS                       R29 R28 K8 ["Name"]
      386 GETTABLEKS                       R29 R0 K104 ["renderColumns"]
      388 MOVE                             R30 R10
      389 CALL                             R29 1 -1
      390 CALL                             R27 -1 -1
      391 CALL                             R24 -1 1
      392 SETTABLEKS                       R24 R23 K50 ["Details"]
      394 JUMPIFNOT                        R8 ; [+34]
      395 GETTABLEKS                       R25 R1 K105 ["RenderExpandedContent"]
      397 JUMPIFNOT                        R25 ; [+31]
      398 GETUPVAL                         R24 5
      399 GETTABLEKS                       R24 R24 K31 ["createElement"]
      401 GETUPVAL                         R25 6
      402 DUPTABLE                         R26 K106 [{"AutomaticSize", "LayoutOrder", "Size"}]
      403 GETIMPORT                        R27 K108 [Enum.AutomaticSize.Y]
      405 SETTABLEKS                       R27 R26 K18 ["AutomaticSize"]
      407 NAMECALL                         R27 R10 K78 ["getNextOrder"]
      409 CALL                             R27 1 1
      410 SETTABLEKS                       R27 R26 K7 ["LayoutOrder"]
      412 GETIMPORT                        R27 K23 [UDim2.new]
      414 LOADN                            R28 1
      415 LOADN                            R29 0
      416 LOADN                            R30 0
      417 LOADN                            R31 0
      418 CALL                             R27 4 1
      419 SETTABLEKS                       R27 R26 K20 ["Size"]
      421 DUPTABLE                         R27 K110 [{"Content"}]
      422 GETTABLEKS                       R28 R1 K105 ["RenderExpandedContent"]
      424 CALL                             R28 0 1
      425 SETTABLEKS                       R28 R27 K109 ["Content"]
      427 CALL                             R24 3 1
      428 JUMP                             ; [+1]
      429 LOADNIL                          R24
      430 SETTABLEKS                       R24 R23 K51 ["ExpandedContents"]
      432 CALL                             R20 3 1
      433 SETTABLEKS                       R20 R19 K32 ["Button"]
      435 CALL                             R16 3 -1
      436 RETURN                           R16 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_17:
        0 DUPTABLE                         R1 K3 [{"getCanManageAsset", "tryCreateContextMenu", "getPageInfoAnalyticsContextInfo"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getCanManageAsset"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["tryCreateContextMenu"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["getPageInfoAnalyticsContextInfo"]
       16 RETURN                           R1 1

PROTO_18:
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
       29 GETTABLEKS                       R6 R4 K11 ["Wrappers"]
       31 GETTABLEKS                       R6 R6 K12 ["withAbsoluteSizeAndPosition"]
       33 GETTABLEKS                       R7 R0 K13 ["Src"]
       35 GETTABLEKS                       R7 R7 K14 ["Util"]
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R9 R7 K15 ["Constants"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R7 K16 ["LayoutOrderIterator"]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R10 R4 K17 ["ContextServices"]
       49 GETTABLEKS                       R11 R10 K18 ["withContext"]
       51 GETIMPORT                        R12 K6 [require]
       53 GETTABLEKS                       R13 R0 K13 ["Src"]
       55 GETTABLEKS                       R13 R13 K19 ["Components"]
       57 GETTABLEKS                       R13 R13 K20 ["AssetLogicWrapper"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K6 [require]
       62 GETTABLEKS                       R14 R0 K13 ["Src"]
       64 GETTABLEKS                       R14 R14 K19 ["Components"]
       66 GETTABLEKS                       R14 R14 K21 ["DraggableButton"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K6 [require]
       71 GETTABLEKS                       R15 R0 K13 ["Src"]
       73 GETTABLEKS                       R15 R15 K22 ["Thunks"]
       75 GETTABLEKS                       R15 R15 K23 ["TryCreateContextMenu"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K6 [require]
       80 GETTABLEKS                       R16 R0 K13 ["Src"]
       82 GETTABLEKS                       R16 R16 K22 ["Thunks"]
       84 GETTABLEKS                       R16 R16 K24 ["GetPageInfoAnalyticsContextInfo"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K6 [require]
       89 GETTABLEKS                       R17 R0 K13 ["Src"]
       91 GETTABLEKS                       R17 R17 K25 ["Networking"]
       93 GETTABLEKS                       R17 R17 K26 ["Requests"]
       95 GETTABLEKS                       R17 R17 K27 ["GetCanManageAssetRequest"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K6 [require]
      100 GETTABLEKS                       R18 R7 K28 ["Analytics"]
      102 GETTABLEKS                       R18 R18 K29 ["AssetAnalyticsContextItem"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K6 [require]
      107 GETTABLEKS                       R19 R0 K13 ["Src"]
      109 GETTABLEKS                       R19 R19 K17 ["ContextServices"]
      111 GETTABLEKS                       R19 R19 K30 ["Settings"]
      113 CALL                             R18 1 1
      114 GETIMPORT                        R19 K6 [require]
      116 GETTABLEKS                       R20 R0 K13 ["Src"]
      118 GETTABLEKS                       R20 R20 K17 ["ContextServices"]
      120 GETTABLEKS                       R20 R20 K31 ["NetworkContext"]
      122 CALL                             R19 1 1
      123 GETTABLEKS                       R20 R4 K32 ["UI"]
      125 GETTABLEKS                       R20 R20 K33 ["LinkText"]
      127 GETTABLEKS                       R21 R4 K32 ["UI"]
      129 GETTABLEKS                       R21 R21 K34 ["Pane"]
      131 GETTABLEKS                       R22 R4 K32 ["UI"]
      133 GETTABLEKS                       R22 R22 K35 ["TextLabel"]
      135 GETIMPORT                        R23 K6 [require]
      137 GETTABLEKS                       R24 R0 K13 ["Src"]
      139 GETTABLEKS                       R24 R24 K36 ["Models"]
      141 GETTABLEKS                       R24 R24 K37 ["AssetInfo"]
      143 CALL                             R23 1 1
      144 GETIMPORT                        R24 K6 [require]
      146 GETTABLEKS                       R25 R0 K13 ["Src"]
      148 GETTABLEKS                       R25 R25 K14 ["Util"]
      150 GETTABLEKS                       R25 R25 K38 ["SharedFlags"]
      152 GETTABLEKS                       R25 R25 K39 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
      154 CALL                             R24 1 1
      155 GETIMPORT                        R25 K6 [require]
      157 GETTABLEKS                       R26 R0 K13 ["Src"]
      159 GETTABLEKS                       R26 R26 K14 ["Util"]
      161 GETTABLEKS                       R26 R26 K38 ["SharedFlags"]
      163 GETTABLEKS                       R26 R26 K40 ["getFFlagToolboxEnableAssetRows"]
      165 CALL                             R25 1 1
      166 GETTABLEKS                       R26 R2 K41 ["PureComponent"]
      168 LOADK                            R28 K42 ["ItemRow"]
      169 NAMECALL                         R26 R26 K43 ["extend"]
      171 CALL                             R26 2 1
      172 DUPTABLE                         R27 K45 [{"TextTruncate"}]
      173 GETIMPORT                        R28 K48 [Enum.TextTruncate.AtEnd]
      175 SETTABLEKS                       R28 R27 K44 ["TextTruncate"]
      177 SETTABLEKS                       R27 R26 K49 ["defaultProps"]
      179 DUPCLOSURE                       R27 K50 [PROTO_10]
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R22
      186 SETTABLEKS                       R27 R26 K51 ["init"]
      188 DUPCLOSURE                       R27 K52 [PROTO_11]
      189 SETTABLEKS                       R27 R26 K53 ["didMount"]
      191 DUPCLOSURE                       R27 K54 [PROTO_12]
      192 SETTABLEKS                       R27 R26 K55 ["didUpdate"]
      194 DUPCLOSURE                       R27 K56 [PROTO_13]
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R20
      204 SETTABLEKS                       R27 R26 K57 ["render"]
      206 MOVE                             R27 R11
      207 DUPTABLE                         R28 K63 [{"AssetAnalytics", "Localization", "Network", "Plugin", "Settings", "Stylizer"}]
      208 SETTABLEKS                       R17 R28 K58 ["AssetAnalytics"]
      210 GETTABLEKS                       R29 R10 K59 ["Localization"]
      212 SETTABLEKS                       R29 R28 K59 ["Localization"]
      214 SETTABLEKS                       R19 R28 K60 ["Network"]
      216 GETTABLEKS                       R29 R10 K61 ["Plugin"]
      218 SETTABLEKS                       R29 R28 K61 ["Plugin"]
      220 SETTABLEKS                       R18 R28 K30 ["Settings"]
      222 GETTABLEKS                       R29 R10 K62 ["Stylizer"]
      224 SETTABLEKS                       R29 R28 K62 ["Stylizer"]
      226 CALL                             R27 1 1
      227 MOVE                             R28 R26
      228 CALL                             R27 1 1
      229 MOVE                             R26 R27
      230 DUPCLOSURE                       R27 K64 [PROTO_17]
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R15
      234 GETTABLEKS                       R28 R3 K65 ["connect"]
      236 LOADNIL                          R29
      237 MOVE                             R30 R27
      238 CALL                             R28 2 1
      239 MOVE                             R29 R26
      240 CALL                             R28 1 1
      241 MOVE                             R26 R28
      242 MOVE                             R28 R6
      243 MOVE                             R29 R26
      244 CALL                             R28 1 1
      245 MOVE                             R26 R28
      246 NEWCLOSURE                       R28 P5
      247 CAPTURE                          VAL R2
      248 CAPTURE                          REF R26
      249 SETGLOBAL                        R28 K66 ["TypedItemRow"]
      251 DUPTABLE                         R28 K69 [{"Component", "Generator"}]
      252 SETTABLEKS                       R26 R28 K67 ["Component"]
      254 GETGLOBAL                        R29 K66 ["TypedItemRow"]
      256 SETTABLEKS                       R29 R28 K68 ["Generator"]
      258 CLOSEUPVALS                      R26
      259 RETURN                           R28 1
