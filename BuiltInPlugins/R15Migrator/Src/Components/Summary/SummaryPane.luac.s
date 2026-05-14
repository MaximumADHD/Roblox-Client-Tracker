PROTO_0:
        0 DUPTABLE                         R1 K1 [{"expanded"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["expanded"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"expanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["expanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["expanded"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 DUPCLOSURE                       R2 K0 [PROTO_1]
        4 NAMECALL                         R0 R0 K1 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedTab"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Name"]
        6 GETTABLEKS                       R4 R1 K3 ["ColumnIndex"]
        8 GETTABLEKS                       R5 R1 K4 ["Width"]
       10 GETTABLEKS                       R6 R1 K5 ["Style"]
       12 NEWTABLE                         R7 8 0
       14 LOADK                            R8 K6 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       15 SETTABLEKS                       R8 R7 K7 ["Image"]
       17 GETIMPORT                        R8 K10 [Vector2.new]
       19 LOADN                            R9 12
       20 LOADN                            R10 0
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K11 ["ImageRectOffset"]
       24 GETIMPORT                        R8 K10 [Vector2.new]
       26 LOADN                            R9 12
       27 LOADN                            R10 12
       28 CALL                             R8 2 1
       29 SETTABLEKS                       R8 R7 K12 ["ImageRectSize"]
       31 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       33 LOADN                            R9 12
       34 LOADN                            R10 12
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K16 ["Size"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K17 ["Selected"]
       41 DUPTABLE                         R9 K18 [{"ImageRectOffset"}]
       42 GETIMPORT                        R10 K10 [Vector2.new]
       44 LOADN                            R11 24
       45 LOADN                            R12 0
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K11 ["ImageRectOffset"]
       49 SETTABLE                         R9 R7 R8
       50 GETTABLEKS                       R8 R1 K19 ["Localization"]
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K9 ["new"]
       55 CALL                             R9 0 1
       56 GETTABLEKS                       R10 R2 K20 ["expanded"]
       58 GETUPVAL                         R11 2
       59 GETTABLEKS                       R11 R11 K21 ["createElement"]
       61 GETUPVAL                         R12 3
       62 GETUPVAL                         R13 4
       63 GETTABLEKS                       R13 R13 K22 ["assign"]
       65 DUPTABLE                         R14 K30 [{"BorderColor3", "BorderSizePixel", "Padding", "Style", "Size", "Layout", "HorizontalAlignment", "Spacing", "OnClick"}]
       66 GETTABLEKS                       R15 R6 K31 ["Border"]
       68 SETTABLEKS                       R15 R14 K23 ["BorderColor3"]
       70 LOADN                            R15 1
       71 SETTABLEKS                       R15 R14 K24 ["BorderSizePixel"]
       73 GETTABLEKS                       R15 R6 K32 ["HeaderCellPadding"]
       75 SETTABLEKS                       R15 R14 K25 ["Padding"]
       77 LOADK                            R15 K33 ["SubtleBox"]
       78 SETTABLEKS                       R15 R14 K5 ["Style"]
       80 GETIMPORT                        R15 K34 [UDim2.new]
       82 GETTABLEKS                       R16 R5 K35 ["Scale"]
       84 GETTABLEKS                       R17 R5 K36 ["Offset"]
       86 LOADN                            R18 1
       87 LOADN                            R19 0
       88 CALL                             R15 4 1
       89 SETTABLEKS                       R15 R14 K16 ["Size"]
       91 GETIMPORT                        R15 K40 [Enum.FillDirection.Horizontal]
       93 SETTABLEKS                       R15 R14 K26 ["Layout"]
       95 GETIMPORT                        R15 K42 [Enum.HorizontalAlignment.Left]
       97 SETTABLEKS                       R15 R14 K27 ["HorizontalAlignment"]
       99 LOADN                            R15 10
      100 SETTABLEKS                       R15 R14 K28 ["Spacing"]
      102 NEWCLOSURE                       R15 P0
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R0
      105 SETTABLEKS                       R15 R14 K29 ["OnClick"]
      107 GETTABLEKS                       R15 R1 K43 ["WrapperProps"]
      109 CALL                             R13 2 1
      110 DUPTABLE                         R14 K46 [{"Arrow", "Text"}]
      111 GETUPVAL                         R16 6
      112 GETTABLEKS                       R16 R16 K47 ["STATUS_COLUMN_INDEX"]
      114 JUMPIFEQ                         R4 R16 ; [+37]
      116 GETUPVAL                         R15 2
      117 GETTABLEKS                       R15 R15 K21 ["createElement"]
      119 GETUPVAL                         R16 7
      120 DUPTABLE                         R17 K52 [{"LayoutOrder", "Style", "StyleModifier", "AnchorPoint", "Position"}]
      121 NAMECALL                         R18 R9 K53 ["getNextOrder"]
      123 CALL                             R18 1 1
      124 SETTABLEKS                       R18 R17 K48 ["LayoutOrder"]
      126 SETTABLEKS                       R7 R17 K5 ["Style"]
      128 JUMPIFNOT                        R10 ; [+4]
      129 GETUPVAL                         R18 0
      130 GETTABLEKS                       R18 R18 K17 ["Selected"]
      132 JUMPIF                           R18 ; [+1]
      133 LOADNIL                          R18
      134 SETTABLEKS                       R18 R17 K49 ["StyleModifier"]
      136 GETIMPORT                        R18 K10 [Vector2.new]
      138 LOADN                            R19 0
      139 LOADK                            R20 K54 [0.5]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K50 ["AnchorPoint"]
      143 GETIMPORT                        R18 K56 [UDim2.fromScale]
      145 LOADN                            R19 0
      146 LOADK                            R20 K54 [0.5]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K51 ["Position"]
      150 CALL                             R15 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R15
      153 SETTABLEKS                       R15 R14 K44 ["Arrow"]
      155 GETUPVAL                         R16 6
      156 GETTABLEKS                       R16 R16 K47 ["STATUS_COLUMN_INDEX"]
      158 JUMPIFEQ                         R4 R16 ; [+78]
      160 GETUPVAL                         R15 2
      161 GETTABLEKS                       R15 R15 K21 ["createElement"]
      163 GETUPVAL                         R16 8
      164 DUPTABLE                         R17 K64 [{"LayoutOrder", "Size", "Text", "AutomaticSize", "BackgroundTransparency", "HorizontalAlignment", "VerticalAlignment", "TextXAlignment", "TextYAlignment", "TextProps", "LinkMap"}]
      165 NAMECALL                         R18 R9 K53 ["getNextOrder"]
      167 CALL                             R18 1 1
      168 SETTABLEKS                       R18 R17 K48 ["LayoutOrder"]
      170 GETIMPORT                        R18 K56 [UDim2.fromScale]
      172 LOADN                            R19 1
      173 LOADN                            R20 1
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K16 ["Size"]
      177 SETTABLEKS                       R3 R17 K45 ["Text"]
      179 GETIMPORT                        R18 K66 [Enum.AutomaticSize.XY]
      181 SETTABLEKS                       R18 R17 K57 ["AutomaticSize"]
      183 LOADN                            R18 1
      184 SETTABLEKS                       R18 R17 K58 ["BackgroundTransparency"]
      186 GETIMPORT                        R18 K42 [Enum.HorizontalAlignment.Left]
      188 SETTABLEKS                       R18 R17 K27 ["HorizontalAlignment"]
      190 GETIMPORT                        R18 K68 [Enum.VerticalAlignment.Center]
      192 SETTABLEKS                       R18 R17 K59 ["VerticalAlignment"]
      194 GETIMPORT                        R18 K69 [Enum.TextXAlignment.Left]
      196 SETTABLEKS                       R18 R17 K60 ["TextXAlignment"]
      198 GETIMPORT                        R18 K70 [Enum.TextYAlignment.Center]
      200 SETTABLEKS                       R18 R17 K61 ["TextYAlignment"]
      202 DUPTABLE                         R18 K74 [{"TextSize", "Font", "TextWrapped"}]
      203 GETTABLEKS                       R19 R6 K71 ["TextSize"]
      205 SETTABLEKS                       R19 R18 K71 ["TextSize"]
      207 GETTABLEKS                       R19 R6 K72 ["Font"]
      209 SETTABLEKS                       R19 R18 K72 ["Font"]
      211 LOADB                            R19 0
      212 SETTABLEKS                       R19 R18 K73 ["TextWrapped"]
      214 SETTABLEKS                       R18 R17 K62 ["TextProps"]
      216 NEWTABLE                         R18 1 0
      218 DUPTABLE                         R19 K77 [{"LinkText", "LinkCallback"}]
      219 LOADK                            R22 K78 ["Summary"]
      220 GETUPVAL                         R23 9
      221 NAMECALL                         R20 R8 K79 ["getText"]
      223 CALL                             R20 3 1
      224 SETTABLEKS                       R20 R19 K75 ["LinkText"]
      226 NEWCLOSURE                       R20 P1
      227 CAPTURE                          VAL R1
      228 CAPTURE                          UPVAL U10
      229 SETTABLEKS                       R20 R19 K76 ["LinkCallback"]
      231 SETTABLEKS                       R19 R18 K80 ["[link1]"]
      233 SETTABLEKS                       R18 R17 K63 ["LinkMap"]
      235 CALL                             R15 2 1
      236 JUMP                             ; [+28]
      237 GETUPVAL                         R15 2
      238 GETTABLEKS                       R15 R15 K21 ["createElement"]
      240 GETUPVAL                         R16 11
      241 DUPTABLE                         R17 K82 [{"LayoutOrder", "Text", "Size", "TextXAlignment", "TextTruncate"}]
      242 NAMECALL                         R18 R9 K53 ["getNextOrder"]
      244 CALL                             R18 1 1
      245 SETTABLEKS                       R18 R17 K48 ["LayoutOrder"]
      247 SETTABLEKS                       R3 R17 K45 ["Text"]
      249 GETIMPORT                        R18 K56 [UDim2.fromScale]
      251 LOADN                            R19 1
      252 LOADN                            R20 1
      253 CALL                             R18 2 1
      254 SETTABLEKS                       R18 R17 K16 ["Size"]
      256 GETIMPORT                        R18 K69 [Enum.TextXAlignment.Left]
      258 SETTABLEKS                       R18 R17 K60 ["TextXAlignment"]
      260 GETIMPORT                        R18 K84 [Enum.TextTruncate.AtEnd]
      262 SETTABLEKS                       R18 R17 K81 ["TextTruncate"]
      264 CALL                             R15 2 1
      265 SETTABLEKS                       R15 R14 K45 ["Text"]
      267 CALL                             R11 3 -1
      268 RETURN                           R11 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"setSelectedTab"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setSelectedTab"]
        6 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["PureComponent"]
        3 MOVE                             R6 R0
        4 LOADK                            R7 K1 ["HeaderCellComponent"]
        5 CONCAT                           R5 R6 R7
        6 NAMECALL                         R3 R3 K2 ["extend"]
        8 CALL                             R3 2 1
        9 DUPCLOSURE                       R4 K3 [PROTO_0]
       10 SETTABLEKS                       R4 R3 K4 ["init"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U8
       25 SETTABLEKS                       R4 R3 K5 ["render"]
       27 DUPCLOSURE                       R4 K6 [PROTO_6]
       28 CAPTURE                          UPVAL U9
       29 GETUPVAL                         R5 10
       30 GETTABLEKS                       R5 R5 K7 ["withContext"]
       32 DUPTABLE                         R6 K9 [{"Localization"}]
       33 GETUPVAL                         R7 10
       34 GETTABLEKS                       R7 R7 K8 ["Localization"]
       36 SETTABLEKS                       R7 R6 K8 ["Localization"]
       38 CALL                             R5 1 1
       39 MOVE                             R6 R3
       40 CALL                             R5 1 1
       41 MOVE                             R3 R5
       42 GETUPVAL                         R5 11
       43 GETTABLEKS                       R5 R5 K10 ["connect"]
       45 LOADNIL                          R6
       46 MOVE                             R7 R4
       47 CALL                             R5 2 1
       48 MOVE                             R6 R3
       49 CALL                             R5 1 -1
       50 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["copy"]
        3 GETTABLEKS                       R2 R0 K1 ["sections"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R1 R3
        8 GETUPVAL                         R5 1
        9 GETTABLE                         R4 R1 R5
       10 GETTABLEKS                       R4 R4 K2 ["expanded"]
       12 NOT                              R3 R4
       13 SETTABLEKS                       R3 R2 K2 ["expanded"]
       15 DUPTABLE                         R2 K3 [{"sections"}]
       16 SETTABLEKS                       R1 R2 K1 ["sections"]
       18 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["copy"]
        3 GETTABLEKS                       R2 R0 K1 ["expanded"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R1 R5
        9 NOT                              R3 R4
       10 SETTABLE                         R3 R1 R2
       11 DUPTABLE                         R2 K2 [{"expanded"}]
       12 SETTABLEKS                       R1 R2 K1 ["expanded"]
       14 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getPublishTime"]
        6 CALL                             R2 0 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["Summary"]
       14 JUMPIFEQ                         R0 R4 ; [+3]
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R4 R1 K3 ["setSelectedTab"]
       20 MOVE                             R5 R0
       21 CALL                             R4 1 0
       22 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["setSortSelection"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R2 K2 [{"expanded", "sections"}]
        4 NEWTABLE                         R3 4 0
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K3 ["Convert"]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K4 ["Test"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K5 ["ReadyToPublish"]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K6 ["Publish"]
       18 SETTABLEKS                       R3 R2 K0 ["expanded"]
       20 NEWTABLE                         R3 0 3
       22 DUPTABLE                         R4 K11 [{"keys", "values", "tabTarget", "headerCellComponent", "expanded"}]
       23 NEWTABLE                         R5 0 0
       25 SETTABLEKS                       R5 R4 K7 ["keys"]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K8 ["values"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K12 ["CharacterConversion"]
       34 SETTABLEKS                       R5 R4 K9 ["tabTarget"]
       36 GETGLOBAL                        R5 K13 ["getHeaderCellComponent"]
       38 LOADK                            R6 K14 ["Characters"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K12 ["CharacterConversion"]
       42 LOADN                            R9 1
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R9
       47 CALL                             R5 3 1
       48 SETTABLEKS                       R5 R4 K10 ["headerCellComponent"]
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R4 K0 ["expanded"]
       53 SETTABLEN                        R4 R3 1
       54 DUPTABLE                         R4 K11 [{"keys", "values", "tabTarget", "headerCellComponent", "expanded"}]
       55 NEWTABLE                         R5 0 0
       57 SETTABLEKS                       R5 R4 K7 ["keys"]
       59 NEWTABLE                         R5 0 0
       61 SETTABLEKS                       R5 R4 K8 ["values"]
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K15 ["AnimationConversion"]
       66 SETTABLEKS                       R5 R4 K9 ["tabTarget"]
       68 GETGLOBAL                        R5 K13 ["getHeaderCellComponent"]
       70 LOADK                            R6 K16 ["Animation"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K15 ["AnimationConversion"]
       74 LOADN                            R9 2
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R9
       79 CALL                             R5 3 1
       80 SETTABLEKS                       R5 R4 K10 ["headerCellComponent"]
       82 LOADB                            R5 1
       83 SETTABLEKS                       R5 R4 K0 ["expanded"]
       85 SETTABLEN                        R4 R3 2
       86 DUPTABLE                         R4 K11 [{"keys", "values", "tabTarget", "headerCellComponent", "expanded"}]
       87 NEWTABLE                         R5 0 0
       89 SETTABLEKS                       R5 R4 K7 ["keys"]
       91 NEWTABLE                         R5 0 0
       93 SETTABLEKS                       R5 R4 K8 ["values"]
       95 GETUPVAL                         R5 1
       96 GETTABLEKS                       R5 R5 K17 ["ScriptConversion"]
       98 SETTABLEKS                       R5 R4 K9 ["tabTarget"]
      100 GETGLOBAL                        R5 K13 ["getHeaderCellComponent"]
      102 LOADK                            R6 K18 ["Scripts"]
      103 GETUPVAL                         R7 1
      104 GETTABLEKS                       R7 R7 K15 ["AnimationConversion"]
      106 LOADN                            R9 3
      107 NEWCLOSURE                       R8 P1
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U0
      110 CAPTURE                          VAL R9
      111 CALL                             R5 3 1
      112 SETTABLEKS                       R5 R4 K10 ["headerCellComponent"]
      114 LOADB                            R5 1
      115 SETTABLEKS                       R5 R4 K0 ["expanded"]
      117 SETTABLEN                        R4 R3 3
      118 SETTABLEKS                       R3 R2 K1 ["sections"]
      120 SETTABLEKS                       R2 R0 K19 ["state"]
      122 NEWCLOSURE                       R2 P2
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U0
      125 SETTABLEKS                       R2 R0 K20 ["onExpandedChanged"]
      127 NEWCLOSURE                       R2 P3
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          UPVAL U1
      131 SETTABLEKS                       R2 R0 K21 ["setSelectedTab"]
      133 NEWCLOSURE                       R2 P4
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R2 R0 K22 ["setSortSelection"]
      137 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["characterMetadataLoadedVersion"]
        4 JUMPIFNOTEQKN                    R1 K2 [0] ; [+10]
        6 GETTABLEKS                       R1 R0 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["loadCharacterMetadata"]
       10 GETTABLEKS                       R2 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K4 ["Analytics"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["complete"]
        2 NOT                              R2 R3
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLEKS                       R2 R1 K0 ["complete"]
        6 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Alphabetical"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETIMPORT                        R1 K3 [table.sort]
        8 MOVE                             R2 R0
        9 DUPCLOSURE                       R3 K4 [PROTO_18]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["Status"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+6]
       18 GETIMPORT                        R1 K3 [table.sort]
       20 MOVE                             R2 R0
       21 DUPCLOSURE                       R3 K6 [PROTO_19]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 MOVE                             R4 R1
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 MOVE                             R9 R3
        8 GETTABLE                         R10 R0 R7
        9 GETTABLEKS                       R10 R10 K0 ["values"]
       11 CALL                             R9 1 0
       12 FORGLOOP                         R4 1 ; [-6]
       14 RETURN                           R0 0

PROTO_22:
        0 LOADN                            R2 0
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 DUPTABLE                         R8 K3 [{"target", "text", "complete"}]
        6 GETTABLEKS                       R10 R7 K4 ["key"]
        8 JUMPIFNOT                        R10 ; [+7]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K5 ["GetNpcFromId"]
       12 GETTABLEKS                       R10 R7 K4 ["key"]
       14 CALL                             R9 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R9
       17 SETTABLEKS                       R9 R8 K0 ["target"]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R10 R7 K6 ["fullName"]
       22 CALL                             R9 1 1
       23 SETTABLEKS                       R9 R8 K1 ["text"]
       25 SETTABLEKS                       R1 R8 K2 ["complete"]
       27 GETUPVAL                         R10 2
       28 GETTABLE                         R9 R10 R6
       29 JUMPIF                           R9 ; [+10]
       30 GETUPVAL                         R9 2
       31 SETTABLE                         R8 R9 R6
       32 GETUPVAL                         R10 3
       33 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       35 MOVE                             R11 R8
       36 GETIMPORT                        R9 K9 [table.insert]
       38 CALL                             R9 2 0
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R10 2
       41 GETTABLE                         R9 R10 R6
       42 JUMPIFNOT                        R9 ; [+4]
       43 GETUPVAL                         R10 2
       44 GETTABLE                         R9 R10 R6
       45 SETTABLEKS                       R1 R9 K2 ["complete"]
       47 ADDK                             R2 R2 K10 [1]
       48 FORGLOOP                         R3 2 ; [-44]
       50 RETURN                           R2 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["characters"]
        2 GETTABLEKS                       R3 R0 K1 ["charactersConverted"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["copy"]
        7 GETTABLEKS                       R6 R1 K3 ["sections"]
        9 GETTABLEN                        R5 R6 1
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R4 K4 ["keys"]
       13 GETTABLEKS                       R6 R4 K5 ["values"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R5
       19 CAPTURE                          VAL R6
       20 MOVE                             R8 R7
       21 MOVE                             R9 R2
       22 LOADB                            R10 0
       23 CALL                             R8 2 1
       24 MOVE                             R9 R7
       25 MOVE                             R10 R3
       26 LOADB                            R11 1
       27 CALL                             R9 2 1
       28 ADD                              R10 R8 R9
       29 SETTABLEKS                       R10 R4 K6 ["total"]
       31 SETTABLEKS                       R9 R4 K7 ["complete"]
       33 RETURN                           R4 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["animations"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["copy"]
        5 GETTABLEKS                       R5 R1 K2 ["sections"]
        7 GETTABLEN                        R4 R5 2
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R3 K3 ["keys"]
       11 GETTABLEKS                       R5 R3 K4 ["values"]
       13 LOADN                            R6 0
       14 LOADN                            R7 0
       15 MOVE                             R8 R2
       16 LOADNIL                          R9
       17 LOADNIL                          R10
       18 FORGPREP                         R8
       19 GETTABLEKS                       R13 R12 K5 ["animationAssetInfo"]
       21 DUPTABLE                         R14 K9 [{"target", "text", "complete"}]
       22 GETTABLEKS                       R15 R13 K10 ["instance"]
       24 SETTABLEKS                       R15 R14 K6 ["target"]
       26 GETUPVAL                         R15 1
       27 GETTABLEKS                       R16 R12 K11 ["name"]
       29 CALL                             R15 1 1
       30 SETTABLEKS                       R15 R14 K7 ["text"]
       32 GETIMPORT                        R16 K13 [next]
       34 GETTABLEKS                       R17 R12 K14 ["refs"]
       36 CALL                             R16 1 1
       37 NOT                              R15 R16
       38 SETTABLEKS                       R15 R14 K8 ["complete"]
       40 GETTABLE                         R15 R4 R11
       41 JUMPIF                           R15 ; [+8]
       42 SETTABLE                         R14 R4 R11
       43 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
       45 MOVE                             R16 R5
       46 MOVE                             R17 R14
       47 GETIMPORT                        R15 K17 [table.insert]
       49 CALL                             R15 2 0
       50 ADDK                             R6 R6 K18 [1]
       51 GETIMPORT                        R15 K13 [next]
       53 GETTABLEKS                       R16 R12 K14 ["refs"]
       55 CALL                             R15 1 1
       56 JUMPIF                           R15 ; [+1]
       57 ADDK                             R7 R7 K18 [1]
       58 FORGLOOP                         R8 2 ; [-40]
       60 SETTABLEKS                       R6 R3 K19 ["total"]
       62 SETTABLEKS                       R7 R3 K8 ["complete"]
       64 RETURN                           R3 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["resolution"]
        2 JUMPIFEQKNIL                     R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["ScriptConversionContext"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["scripts"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["copy"]
        9 GETTABLEKS                       R5 R1 K3 ["sections"]
       11 GETTABLEN                        R4 R5 3
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K4 ["keys"]
       15 GETTABLEKS                       R5 R3 K5 ["values"]
       17 LOADN                            R6 0
       18 LOADN                            R7 0
       19 MOVE                             R8 R2
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETTABLE                         R13 R4 R11
       24 JUMPIF                           R13 ; [+29]
       25 GETTABLEKS                       R13 R0 K0 ["ScriptConversionContext"]
       27 MOVE                             R15 R11
       28 NAMECALL                         R13 R13 K6 ["getScriptInstanceFromGUID"]
       30 CALL                             R13 2 1
       31 JUMPIFNOT                        R13 ; [+4]
       32 NAMECALL                         R14 R13 K7 ["GetFullName"]
       34 CALL                             R14 1 1
       35 JUMPIF                           R14 ; [+1]
       36 LOADK                            R14 K8 ["Unknown"]
       37 GETUPVAL                         R15 1
       38 MOVE                             R16 R14
       39 CALL                             R15 1 1
       40 MOVE                             R14 R15
       41 DUPTABLE                         R15 K11 [{"target", "text"}]
       42 SETTABLEKS                       R13 R15 K9 ["target"]
       44 SETTABLEKS                       R14 R15 K10 ["text"]
       46 SETTABLE                         R15 R4 R11
       47 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       49 MOVE                             R17 R5
       50 MOVE                             R18 R15
       51 GETIMPORT                        R16 K14 [table.insert]
       53 CALL                             R16 2 0
       54 GETUPVAL                         R13 0
       55 GETTABLEKS                       R13 R13 K15 ["filter"]
       57 NAMECALL                         R14 R12 K16 ["Get"]
       59 CALL                             R14 1 1
       60 DUPCLOSURE                       R15 K17 [PROTO_25]
       61 CALL                             R13 2 1
       62 GETTABLE                         R14 R4 R11
       63 LOADB                            R15 1
       64 GETTABLEKS                       R17 R12 K18 ["_list"]
       66 LENGTH                           R16 R17
       67 JUMPIFEQKN                       R16 K19 [0] ; [+6]
       69 LENGTH                           R16 R13
       70 JUMPIFEQKN                       R16 K19 [0] ; [+2]
       72 LOADB                            R15 0 +1
       73 LOADB                            R15 1
       74 SETTABLEKS                       R15 R14 K20 ["complete"]
       76 GETTABLE                         R14 R4 R11
       77 GETTABLEKS                       R14 R14 K20 ["complete"]
       79 JUMPIFNOT                        R14 ; [+1]
       80 ADDK                             R7 R7 K21 [1]
       81 ADDK                             R6 R6 K21 [1]
       82 FORGLOOP                         R8 2 ; [-60]
       84 SETTABLEKS                       R6 R3 K22 ["total"]
       86 SETTABLEKS                       R7 R3 K20 ["complete"]
       88 RETURN                           R3 1

PROTO_27:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 GETTABLEKS                       R6 R0 K0 ["sortSelection"]
        7 GETTABLEKS                       R7 R1 K0 ["sortSelection"]
        9 JUMPIFEQ                         R6 R7 ; [+10]
       11 NEWTABLE                         R6 4 0
       13 LOADB                            R7 1
       14 SETTABLEN                        R7 R6 2
       15 LOADB                            R7 1
       16 SETTABLEN                        R7 R6 3
       17 LOADB                            R7 1
       18 SETTABLEN                        R7 R6 1
       19 MOVE                             R2 R6
       20 GETTABLEKS                       R6 R0 K1 ["animations"]
       22 GETTABLEKS                       R7 R1 K1 ["animations"]
       24 JUMPIFEQ                         R6 R7 ; [+8]
       26 LOADB                            R6 1
       27 SETTABLEN                        R6 R2 2
       28 GETUPVAL                         R6 0
       29 MOVE                             R7 R0
       30 MOVE                             R8 R1
       31 CALL                             R6 2 1
       32 MOVE                             R4 R6
       33 GETTABLEKS                       R6 R0 K2 ["scripts"]
       35 GETTABLEKS                       R7 R1 K2 ["scripts"]
       37 JUMPIFEQ                         R6 R7 ; [+8]
       39 LOADB                            R6 1
       40 SETTABLEN                        R6 R2 3
       41 GETUPVAL                         R6 1
       42 MOVE                             R7 R0
       43 MOVE                             R8 R1
       44 CALL                             R6 2 1
       45 MOVE                             R5 R6
       46 GETTABLEKS                       R6 R0 K3 ["characters"]
       48 GETTABLEKS                       R7 R1 K3 ["characters"]
       50 JUMPIFNOTEQ                      R6 R7 ; [+7]
       52 GETTABLEKS                       R6 R0 K4 ["charactersConverted"]
       54 GETTABLEKS                       R7 R1 K4 ["charactersConverted"]
       56 JUMPIFEQ                         R6 R7 ; [+8]
       58 LOADB                            R6 1
       59 SETTABLEN                        R6 R2 1
       60 GETUPVAL                         R6 2
       61 MOVE                             R7 R0
       62 MOVE                             R8 R1
       63 CALL                             R6 2 1
       64 MOVE                             R3 R6
       65 GETUPVAL                         R6 3
       66 GETTABLEKS                       R6 R6 K5 ["join"]
       68 GETTABLEKS                       R7 R1 K6 ["sections"]
       70 NEWTABLE                         R8 0 3
       72 SETTABLEN                        R3 R8 1
       73 SETTABLEN                        R4 R8 2
       74 SETTABLEN                        R5 R8 3
       75 CALL                             R6 2 1
       76 GETIMPORT                        R7 K8 [next]
       78 MOVE                             R8 R2
       79 CALL                             R7 1 1
       80 JUMPIFNOT                        R7 ; [+6]
       81 GETUPVAL                         R7 4
       82 MOVE                             R8 R6
       83 MOVE                             R9 R2
       84 GETTABLEKS                       R10 R0 K0 ["sortSelection"]
       86 CALL                             R7 3 0
       87 DUPTABLE                         R7 K9 [{"sortSelection", "characters", "charactersConverted", "animations", "scripts", "sections"}]
       88 GETTABLEKS                       R8 R0 K0 ["sortSelection"]
       90 SETTABLEKS                       R8 R7 K0 ["sortSelection"]
       92 GETTABLEKS                       R8 R0 K3 ["characters"]
       94 SETTABLEKS                       R8 R7 K3 ["characters"]
       96 GETTABLEKS                       R8 R0 K4 ["charactersConverted"]
       98 SETTABLEKS                       R8 R7 K4 ["charactersConverted"]
      100 GETTABLEKS                       R8 R0 K1 ["animations"]
      102 SETTABLEKS                       R8 R7 K1 ["animations"]
      104 GETTABLEKS                       R8 R0 K2 ["scripts"]
      106 SETTABLEKS                       R8 R7 K2 ["scripts"]
      108 SETTABLEKS                       R6 R7 K6 ["sections"]
      110 RETURN                           R7 1

PROTO_28:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["R6 & R15"]
        2 RETURN                           R1 1
        3 LOADK                            R1 K1 ["R15"]
        4 RETURN                           R1 1

PROTO_29:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["R6_R15"]
        2 RETURN                           R1 1
        3 LOADK                            R1 K1 ["R15"]
        4 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R3 K2 ["Stylizer"]
        6 GETTABLEKS                       R6 R0 K3 ["onExpandedChanged"]
        8 MOVE                             R7 R1
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R8 R4 K4 ["expanded"]
       12 GETTABLE                         R7 R8 R1
       13 GETTABLEKS                       R8 R3 K5 ["Localization"]
       15 LOADK                            R11 K6 ["Summary"]
       16 MOVE                             R12 R1
       17 NAMECALL                         R9 R8 K7 ["getText"]
       19 CALL                             R9 3 1
       20 LOADNIL                          R10
       21 LOADNIL                          R11
       22 JUMPIFNOTEQKS                    R1 K8 ["Convert"] ; [+10]
       24 JUMPIFNOT                        R2 ; [+8]
       25 LOADK                            R14 K6 ["Summary"]
       26 LOADK                            R15 K9 ["Complete"]
       27 NAMECALL                         R12 R8 K7 ["getText"]
       29 CALL                             R12 3 1
       30 MOVE                             R10 R12
       31 GETTABLEKS                       R11 R5 K10 ["ExpandedHeaderStatusCompleteColor"]
       33 JUMPIFNOTEQKS                    R1 K11 ["Test"] ; [+18]
       35 LOADK                            R14 K6 ["Summary"]
       36 LOADK                            R15 K12 ["TestAdaptedModeText"]
       37 DUPTABLE                         R16 K14 [{"adaptedText"}]
       38 GETTABLEKS                       R18 R3 K15 ["adapted"]
       40 JUMPIFNOT                        R18 ; [+2]
       41 LOADK                            R17 K16 ["R6 & R15"]
       42 JUMP                             ; [+1]
       43 LOADK                            R17 K17 ["R15"]
       44 SETTABLEKS                       R17 R16 K13 ["adaptedText"]
       46 NAMECALL                         R12 R8 K7 ["getText"]
       48 CALL                             R12 4 1
       49 MOVE                             R10 R12
       50 GETTABLEKS                       R11 R5 K18 ["ExpandedHeaderStatusAdpatedColor"]
       52 JUMPIFNOTEQKS                    R1 K19 ["Publish"] ; [+17]
       54 JUMPIFNOT                        R2 ; [+6]
       55 LOADK                            R14 K6 ["Summary"]
       56 LOADK                            R15 K20 ["ReadyToPublish"]
       57 NAMECALL                         R12 R8 K7 ["getText"]
       59 CALL                             R12 3 1
       60 JUMPIF                           R12 ; [+1]
       61 LOADK                            R12 K21 ["Not Ready"]
       62 MOVE                             R10 R12
       63 JUMPIFNOT                        R2 ; [+3]
       64 GETTABLEKS                       R12 R5 K22 ["ExpandedHeaderStatusReadyPublishColor"]
       66 JUMPIF                           R12 ; [+2]
       67 GETTABLEKS                       R12 R5 K23 ["ExpandedHeaderStatusNotReadyPublishColor"]
       69 MOVE                             R11 R12
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K24 ["createElement"]
       73 GETUPVAL                         R13 1
       74 DUPTABLE                         R14 K32 [{"Size", "OnClick", "BackgroundColor", "BorderColor3", "BorderSizePixel", "LayoutOrder", "Padding"}]
       75 GETIMPORT                        R15 K35 [UDim2.new]
       77 LOADN                            R16 1
       78 LOADN                            R17 0
       79 LOADN                            R18 0
       80 LOADN                            R19 28
       81 CALL                             R15 4 1
       82 SETTABLEKS                       R15 R14 K25 ["Size"]
       84 SETTABLEKS                       R6 R14 K26 ["OnClick"]
       86 GETTABLEKS                       R15 R5 K36 ["HeaderColor"]
       88 SETTABLEKS                       R15 R14 K27 ["BackgroundColor"]
       90 GETTABLEKS                       R15 R5 K37 ["DividerColor"]
       92 SETTABLEKS                       R15 R14 K28 ["BorderColor3"]
       94 LOADN                            R15 1
       95 SETTABLEKS                       R15 R14 K29 ["BorderSizePixel"]
       97 LOADN                            R15 1
       98 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      100 DUPTABLE                         R15 K40 [{"Left", "Right"}]
      101 LOADN                            R16 8
      102 SETTABLEKS                       R16 R15 K38 ["Left"]
      104 LOADN                            R16 8
      105 SETTABLEKS                       R16 R15 K39 ["Right"]
      107 SETTABLEKS                       R15 R14 K31 ["Padding"]
      109 DUPTABLE                         R15 K44 [{"Arrow", "Text", "CompleteStatus"}]
      110 GETUPVAL                         R16 0
      111 GETTABLEKS                       R16 R16 K24 ["createElement"]
      113 GETUPVAL                         R17 2
      114 DUPTABLE                         R18 K49 [{"Style", "StyleModifier", "AnchorPoint", "Position"}]
      115 GETTABLEKS                       R19 R5 K41 ["Arrow"]
      117 SETTABLEKS                       R19 R18 K45 ["Style"]
      119 JUMPIFNOT                        R7 ; [+4]
      120 GETUPVAL                         R19 3
      121 GETTABLEKS                       R19 R19 K50 ["Selected"]
      123 JUMPIF                           R19 ; [+1]
      124 LOADNIL                          R19
      125 SETTABLEKS                       R19 R18 K46 ["StyleModifier"]
      127 GETIMPORT                        R19 K52 [Vector2.new]
      129 LOADN                            R20 0
      130 LOADK                            R21 K53 [0.5]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K47 ["AnchorPoint"]
      134 GETIMPORT                        R19 K55 [UDim2.fromScale]
      136 LOADN                            R20 0
      137 LOADK                            R21 K53 [0.5]
      138 CALL                             R19 2 1
      139 SETTABLEKS                       R19 R18 K48 ["Position"]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K41 ["Arrow"]
      144 GETUPVAL                         R16 0
      145 GETTABLEKS                       R16 R16 K24 ["createElement"]
      147 GETUPVAL                         R17 4
      148 DUPTABLE                         R18 K57 [{"Text", "AutomaticSize", "AnchorPoint", "Position"}]
      149 SETTABLEKS                       R9 R18 K42 ["Text"]
      151 GETIMPORT                        R19 K60 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R19 R18 K56 ["AutomaticSize"]
      155 GETIMPORT                        R19 K52 [Vector2.new]
      157 LOADN                            R20 0
      158 LOADK                            R21 K53 [0.5]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K47 ["AnchorPoint"]
      162 GETIMPORT                        R19 K35 [UDim2.new]
      164 LOADN                            R20 0
      165 LOADN                            R21 24
      166 LOADK                            R22 K53 [0.5]
      167 LOADN                            R23 0
      168 CALL                             R19 4 1
      169 SETTABLEKS                       R19 R18 K48 ["Position"]
      171 CALL                             R16 2 1
      172 SETTABLEKS                       R16 R15 K42 ["Text"]
      174 JUMPIFNOT                        R10 ; [+34]
      175 GETUPVAL                         R16 0
      176 GETTABLEKS                       R16 R16 K24 ["createElement"]
      178 GETUPVAL                         R17 4
      179 DUPTABLE                         R18 K66 [{"Text", "TextColor", "Size", "Position", "TextXAlignment", "Font", "TextSize", "BackgroundTransparency"}]
      180 SETTABLEKS                       R10 R18 K42 ["Text"]
      182 SETTABLEKS                       R11 R18 K61 ["TextColor"]
      184 GETTABLEKS                       R19 R5 K67 ["ExpandedHeaderStatusSize"]
      186 SETTABLEKS                       R19 R18 K25 ["Size"]
      188 GETTABLEKS                       R19 R5 K68 ["ExpandedHeaderStatusPosition"]
      190 SETTABLEKS                       R19 R18 K48 ["Position"]
      192 GETIMPORT                        R19 K69 [Enum.TextXAlignment.Right]
      194 SETTABLEKS                       R19 R18 K62 ["TextXAlignment"]
      196 GETIMPORT                        R19 K71 [Enum.Font.SourceSansSemibold]
      198 SETTABLEKS                       R19 R18 K63 ["Font"]
      200 GETTABLEKS                       R19 R5 K72 ["ExpandedHeaderStatusFontSize"]
      202 SETTABLEKS                       R19 R18 K64 ["TextSize"]
      204 LOADN                            R19 1
      205 SETTABLEKS                       R19 R18 K65 ["BackgroundTransparency"]
      207 CALL                             R16 2 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R16
      210 SETTABLEKS                       R16 R15 K43 ["CompleteStatus"]
      212 CALL                             R12 3 -1
      213 RETURN                           R12 -1

PROTO_31:
        0 JUMPIFNOTEQKS                    R0 K0 ["R6_R15"] ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["addAdapters"]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R0 K2 ["R15"] ; [+6]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["removeAdapters"]
       13 GETUPVAL                         R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 [""]
        3 NAMECALL                         R2 R2 K1 ["GetDocumentationUrl"]
        5 CALL                             R2 2 -1
        6 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Analytics"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K12 [{"Size", "SelectedKey", "CurrentSelectedKey", "AutomaticSize", "TextXAlignment", "TextWrapped", "OnClick", "Buttons"}]
       11 GETIMPORT                        R7 K15 [UDim2.new]
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 LOADN                            R11 0
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K4 ["Size"]
       20 GETTABLEKS                       R8 R1 K16 ["adapted"]
       22 JUMPIFNOT                        R8 ; [+2]
       23 LOADK                            R7 K17 ["R6_R15"]
       24 JUMP                             ; [+1]
       25 LOADK                            R7 K18 ["R15"]
       26 SETTABLEKS                       R7 R6 K5 ["SelectedKey"]
       28 GETTABLEKS                       R8 R1 K16 ["adapted"]
       30 JUMPIFNOT                        R8 ; [+2]
       31 LOADK                            R7 K17 ["R6_R15"]
       32 JUMP                             ; [+1]
       33 LOADK                            R7 K18 ["R15"]
       34 SETTABLEKS                       R7 R6 K6 ["CurrentSelectedKey"]
       36 GETIMPORT                        R7 K21 [Enum.AutomaticSize.Y]
       38 SETTABLEKS                       R7 R6 K7 ["AutomaticSize"]
       40 GETIMPORT                        R7 K23 [Enum.TextXAlignment.Left]
       42 SETTABLEKS                       R7 R6 K8 ["TextXAlignment"]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K9 ["TextWrapped"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       52 NEWTABLE                         R7 0 2
       54 DUPTABLE                         R8 K28 [{"Key", "Text", "Description", "LinkProps"}]
       55 LOADK                            R9 K17 ["R6_R15"]
       56 SETTABLEKS                       R9 R8 K24 ["Key"]
       58 LOADK                            R9 K29 ["R6 & R15"]
       59 SETTABLEKS                       R9 R8 K25 ["Text"]
       61 LOADK                            R11 K30 ["Summary"]
       62 LOADK                            R12 K31 ["R6R15ModeDesc"]
       63 NAMECALL                         R9 R3 K32 ["getText"]
       65 CALL                             R9 3 1
       66 SETTABLEKS                       R9 R8 K26 ["Description"]
       68 GETUPVAL                         R10 2
       69 JUMPIFNOT                        R10 ; [+14]
       70 DUPTABLE                         R9 K33 [{"Text", "OnClick"}]
       71 LOADK                            R12 K34 ["AdapterPane"]
       72 LOADK                            R13 K35 ["LearnMore"]
       73 NAMECALL                         R10 R3 K32 ["getText"]
       75 CALL                             R10 3 1
       76 SETTABLEKS                       R10 R9 K25 ["Text"]
       78 DUPCLOSURE                       R10 K36 [PROTO_32]
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U4
       81 SETTABLEKS                       R10 R9 K10 ["OnClick"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R9
       85 SETTABLEKS                       R9 R8 K27 ["LinkProps"]
       87 DUPTABLE                         R9 K37 [{"Key", "Text", "Description"}]
       88 LOADK                            R10 K18 ["R15"]
       89 SETTABLEKS                       R10 R9 K24 ["Key"]
       91 LOADK                            R10 K18 ["R15"]
       92 SETTABLEKS                       R10 R9 K25 ["Text"]
       94 LOADK                            R12 K30 ["Summary"]
       95 LOADK                            R13 K38 ["R15ModeDesc"]
       96 NAMECALL                         R10 R3 K32 ["getText"]
       98 CALL                             R10 3 1
       99 SETTABLEKS                       R10 R9 K26 ["Description"]
      101 SETLIST                          R7 R8 2 [1]
      103 SETTABLEKS                       R7 R6 K11 ["Buttons"]
      105 CALL                             R4 2 -1
      106 RETURN                           R4 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setSortSelection"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       11 GETIMPORT                        R7 K12 [UDim2.new]
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 GETTABLEKS                       R11 R2 K13 ["SortBy"]
       18 GETTABLEKS                       R11 R11 K14 ["Height"]
       20 CALL                             R7 4 1
       21 SETTABLEKS                       R7 R6 K4 ["Size"]
       23 GETIMPORT                        R7 K18 [Enum.FillDirection.Horizontal]
       25 SETTABLEKS                       R7 R6 K5 ["Layout"]
       27 GETIMPORT                        R7 K20 [Enum.HorizontalAlignment.Left]
       29 SETTABLEKS                       R7 R6 K6 ["HorizontalAlignment"]
       31 GETIMPORT                        R7 K22 [Enum.VerticalAlignment.Center]
       33 SETTABLEKS                       R7 R6 K7 ["VerticalAlignment"]
       35 GETTABLEKS                       R7 R2 K13 ["SortBy"]
       37 GETTABLEKS                       R7 R7 K8 ["Spacing"]
       39 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       41 DUPTABLE                         R7 K25 [{"FilterLabel", "Filter"}]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K3 ["createElement"]
       45 GETUPVAL                         R9 2
       46 DUPTABLE                         R10 K29 [{"Text", "AutomaticSize", "LayoutOrder"}]
       47 LOADK                            R13 K30 ["Summary"]
       48 LOADK                            R14 K31 ["Sortby"]
       49 NAMECALL                         R11 R3 K32 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K26 ["Text"]
       54 GETIMPORT                        R11 K34 [Enum.AutomaticSize.XY]
       56 SETTABLEKS                       R11 R10 K27 ["AutomaticSize"]
       58 LOADN                            R11 1
       59 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K23 ["FilterLabel"]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K3 ["createElement"]
       67 GETUPVAL                         R9 3
       68 DUPTABLE                         R10 K39 [{"PlaceholderText", "SelectedIndex", "Items", "Size", "LayoutOrder", "OnItemActivated"}]
       69 LOADK                            R13 K30 ["Summary"]
       70 LOADK                            R14 K31 ["Sortby"]
       71 NAMECALL                         R11 R3 K32 ["getText"]
       73 CALL                             R11 3 1
       74 SETTABLEKS                       R11 R10 K35 ["PlaceholderText"]
       76 GETTABLEKS                       R11 R1 K40 ["sortSelection"]
       78 SETTABLEKS                       R11 R10 K36 ["SelectedIndex"]
       80 GETUPVAL                         R11 4
       81 GETTABLEKS                       R11 R11 K41 ["getOrderedSortData"]
       83 MOVE                             R12 R3
       84 CALL                             R11 1 1
       85 SETTABLEKS                       R11 R10 K37 ["Items"]
       87 GETIMPORT                        R11 K43 [UDim2.fromOffset]
       89 GETTABLEKS                       R12 R2 K13 ["SortBy"]
       91 GETTABLEKS                       R12 R12 K44 ["Width"]
       93 GETTABLEKS                       R13 R2 K13 ["SortBy"]
       95 GETTABLEKS                       R13 R13 K14 ["Height"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K4 ["Size"]
      100 LOADN                            R11 2
      101 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
      103 NEWCLOSURE                       R11 P0
      104 CAPTURE                          VAL R0
      105 SETTABLEKS                       R11 R10 K38 ["OnItemActivated"]
      107 CALL                             R8 2 1
      108 SETTABLEKS                       R8 R7 K24 ["Filter"]
      110 CALL                             R4 3 -1
      111 RETURN                           R4 -1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K6 [{"LayoutOrder", "Size"}]
       11 LOADN                            R7 255
       12 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       14 GETIMPORT                        R7 K9 [UDim2.new]
       16 LOADN                            R8 1
       17 LOADN                            R9 0
       18 LOADN                            R10 0
       19 GETTABLEKS                       R11 R2 K10 ["SortBy"]
       21 GETTABLEKS                       R11 R11 K11 ["Height"]
       23 CALL                             R7 4 1
       24 SETTABLEKS                       R7 R6 K5 ["Size"]
       26 NEWTABLE                         R7 1 1
       28 NAMECALL                         R9 R0 K12 ["getSorter"]
       30 CALL                             R9 1 1
       31 SETTABLEKS                       R9 R7 K13 ["sorter"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K3 ["createElement"]
       36 GETUPVAL                         R9 2
       37 DUPTABLE                         R10 K21 [{"LeftIcon", "Cursor", "OnClick", "Size", "AnchorPoint", "Position", "BackgroundStyle", "TooltipText"}]
       38 GETTABLEKS                       R11 R2 K22 ["RefreshButton"]
       40 GETTABLEKS                       R11 R11 K23 ["Icon"]
       42 SETTABLEKS                       R11 R10 K14 ["LeftIcon"]
       44 LOADK                            R11 K24 ["PointingHand"]
       45 SETTABLEKS                       R11 R10 K15 ["Cursor"]
       47 GETTABLEKS                       R11 R1 K25 ["OnResetPlugin"]
       49 SETTABLEKS                       R11 R10 K16 ["OnClick"]
       51 GETTABLEKS                       R11 R2 K22 ["RefreshButton"]
       53 GETTABLEKS                       R11 R11 K5 ["Size"]
       55 SETTABLEKS                       R11 R10 K5 ["Size"]
       57 GETIMPORT                        R11 K27 [Vector2.new]
       59 LOADN                            R12 1
       60 LOADK                            R13 K28 [0.5]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K17 ["AnchorPoint"]
       64 GETIMPORT                        R11 K9 [UDim2.new]
       66 LOADN                            R12 1
       67 LOADN                            R13 0
       68 LOADK                            R14 K28 [0.5]
       69 LOADN                            R15 0
       70 CALL                             R11 4 1
       71 SETTABLEKS                       R11 R10 K18 ["Position"]
       73 GETTABLEKS                       R11 R2 K22 ["RefreshButton"]
       75 GETTABLEKS                       R11 R11 K19 ["BackgroundStyle"]
       77 SETTABLEKS                       R11 R10 K19 ["BackgroundStyle"]
       79 LOADK                            R13 K29 ["Summary"]
       80 LOADK                            R14 K30 ["Refresh"]
       81 NAMECALL                         R11 R3 K31 ["getText"]
       83 CALL                             R11 3 1
       84 SETTABLEKS                       R11 R10 K20 ["TooltipText"]
       86 CALL                             R8 2 -1
       87 SETLIST                          R7 R8 -1 [1]
       89 CALL                             R4 3 -1
       90 RETURN                           R4 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedTab"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["tabTarget"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 NEWTABLE                         R4 1 0
        8 NAMECALL                         R5 R0 K3 ["getSortAndRefreshRow"]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K4 ["sortAndRefresh"]
       13 GETTABLEKS                       R5 R0 K1 ["state"]
       15 GETTABLEKS                       R5 R5 K5 ["sections"]
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K6 ["createElement"]
       23 GETUPVAL                         R11 1
       24 DUPTABLE                         R12 K12 [{"LayoutOrder", "Rows", "Title", "HeaderCellComponent", "OnClick"}]
       25 SETTABLEKS                       R8 R12 K7 ["LayoutOrder"]
       27 GETTABLEKS                       R14 R9 K13 ["expanded"]
       29 JUMPIFNOT                        R14 ; [+3]
       30 GETTABLEKS                       R13 R9 K14 ["values"]
       32 JUMPIF                           R13 ; [+2]
       33 NEWTABLE                         R13 0 0
       35 SETTABLEKS                       R13 R12 K8 ["Rows"]
       37 LOADK                            R15 K15 ["Summary"]
       38 LOADK                            R16 K16 ["ConvertHeader"]
       39 DUPTABLE                         R17 K19 [{"currentAmount", "total"}]
       40 GETTABLEKS                       R19 R9 K20 ["complete"]
       42 FASTCALL1                        TOSTRING R19 ; [+2]
       43 GETIMPORT                        R18 K22 [tostring]
       45 CALL                             R18 1 1
       46 SETTABLEKS                       R18 R17 K17 ["currentAmount"]
       48 GETTABLEKS                       R19 R9 K18 ["total"]
       50 FASTCALL1                        TOSTRING R19 ; [+2]
       51 GETIMPORT                        R18 K22 [tostring]
       53 CALL                             R18 1 1
       54 SETTABLEKS                       R18 R17 K18 ["total"]
       56 NAMECALL                         R13 R3 K23 ["getText"]
       58 CALL                             R13 4 1
       59 SETTABLEKS                       R13 R12 K9 ["Title"]
       61 GETTABLEKS                       R13 R9 K24 ["headerCellComponent"]
       63 SETTABLEKS                       R13 R12 K10 ["HeaderCellComponent"]
       65 NEWCLOSURE                       R13 P0
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R13 R12 K11 ["OnClick"]
       70 CALL                             R10 2 1
       71 SETTABLE                         R10 R4 R8
       72 FORGLOOP                         R5 2 ; [-53]
       74 RETURN                           R4 1

PROTO_39:
        0 DUPTABLE                         R2 K6 [{"Layout", "LayoutOrder", "Expanded", "OnExpandedChanged", "ContentPadding", "HeaderOverride"}]
        1 GETIMPORT                        R3 K10 [Enum.FillDirection.Vertical]
        3 SETTABLEKS                       R3 R2 K0 ["Layout"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K11 ["getNextOrder"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["LayoutOrder"]
       11 GETUPVAL                         R4 1
       12 GETTABLE                         R3 R4 R0
       13 SETTABLEKS                       R3 R2 K2 ["Expanded"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K12 ["onExpandedChanged"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K3 ["OnExpandedChanged"]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K13 ["ExpandedPanePadding"]
       25 SETTABLEKS                       R3 R2 K4 ["ContentPadding"]
       27 GETUPVAL                         R3 2
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 NAMECALL                         R3 R3 K14 ["renderHeader"]
       32 CALL                             R3 3 1
       33 SETTABLEKS                       R3 R2 K5 ["HeaderOverride"]
       35 RETURN                           R2 1

PROTO_40:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["StudioPublishService"]
        4 LOADB                            R2 0
        5 LOADB                            R3 1
        6 GETIMPORT                        R4 K6 [Enum.StudioCloseMode.None]
        8 NAMECALL                         R0 R0 K7 ["ShowSaveOrPublishPlaceToRoblox"]
       10 CALL                             R0 4 0
       11 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R4 K4 ["expanded"]
       10 GETTABLEKS                       R6 R1 K5 ["isSuccessfullyPublished"]
       12 GETTABLEKS                       R7 R1 K6 ["experienceData"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["new"]
       17 CALL                             R8 0 1
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          VAL R8
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 LOADB                            R10 1
       24 GETIMPORT                        R11 K9 [pairs]
       26 GETTABLEKS                       R12 R0 K3 ["state"]
       28 GETTABLEKS                       R12 R12 K10 ["sections"]
       30 CALL                             R11 1 3
       31 FORGPREP_NEXT                    R11
       32 GETTABLEKS                       R16 R15 K11 ["complete"]
       34 GETTABLEKS                       R17 R15 K12 ["total"]
       36 JUMPIFEQ                         R16 R17 ; [+3]
       38 LOADB                            R10 0
       39 JUMP                             ; [+2]
       40 FORGLOOP                         R11 2 ; [-9]
       42 GETTABLEKS                       R12 R1 K13 ["adapted"]
       44 NOT                              R11 R12
       45 GETTABLEKS                       R13 R1 K14 ["avatarType"]
       47 GETIMPORT                        R14 K18 [Enum.GameAvatarType.R6]
       49 JUMPIFNOTEQ                      R13 R14 ; [+2]
       51 LOADB                            R12 0 +1
       52 LOADB                            R12 1
       53 MOVE                             R13 R10
       54 JUMPIFNOT                        R13 ; [+3]
       55 MOVE                             R13 R11
       56 JUMPIFNOT                        R13 ; [+1]
       57 MOVE                             R13 R12
       58 LOADK                            R16 K19 ["Summary"]
       59 LOADK                            R17 K20 ["PublishButtonText"]
       60 NAMECALL                         R14 R3 K21 ["getText"]
       62 CALL                             R14 3 1
       63 GETUPVAL                         R15 1
       64 GETTABLEKS                       R15 R15 K22 ["getTextSize"]
       66 MOVE                             R16 R14
       67 GETTABLEKS                       R17 R2 K23 ["ButtonTextSize"]
       69 GETTABLEKS                       R18 R2 K24 ["ButtonFont"]
       71 GETTABLEKS                       R19 R2 K25 ["ButtonPadding"]
       73 CALL                             R15 4 1
       74 GETUPVAL                         R16 2
       75 GETTABLEKS                       R16 R16 K26 ["createElement"]
       77 GETUPVAL                         R17 3
       78 DUPTABLE                         R18 K31 [{"Size", "Spacing", "AutomaticCanvasSize", "Layout"}]
       79 GETIMPORT                        R19 K33 [UDim2.new]
       81 LOADN                            R20 1
       82 LOADN                            R21 0
       83 LOADN                            R22 1
       84 LOADN                            R23 0
       85 CALL                             R19 4 1
       86 SETTABLEKS                       R19 R18 K27 ["Size"]
       88 GETTABLEKS                       R19 R2 K34 ["ExpandedPaneSpacing"]
       90 SETTABLEKS                       R19 R18 K28 ["Spacing"]
       92 GETIMPORT                        R19 K37 [Enum.AutomaticSize.Y]
       94 SETTABLEKS                       R19 R18 K29 ["AutomaticCanvasSize"]
       96 GETIMPORT                        R19 K40 [Enum.FillDirection.Vertical]
       98 SETTABLEKS                       R19 R18 K30 ["Layout"]
      100 NEWTABLE                         R19 4 0
      102 GETUPVAL                         R20 2
      103 GETTABLEKS                       R20 R20 K26 ["createElement"]
      105 GETUPVAL                         R21 4
      106 MOVE                             R22 R9
      107 LOADK                            R23 K41 ["Convert"]
      108 MOVE                             R24 R10
      109 CALL                             R22 2 1
      110 NAMECALL                         R23 R0 K42 ["getConversionItems"]
      112 CALL                             R23 1 -1
      113 CALL                             R20 -1 1
      114 SETTABLEKS                       R20 R19 K41 ["Convert"]
      116 JUMPIFNOT                        R6 ; [+2]
      117 LOADNIL                          R20
      118 JUMP                             ; [+14]
      119 GETUPVAL                         R20 2
      120 GETTABLEKS                       R20 R20 K26 ["createElement"]
      122 GETUPVAL                         R21 4
      123 MOVE                             R22 R9
      124 LOADK                            R23 K43 ["Test"]
      125 CALL                             R22 1 1
      126 DUPTABLE                         R23 K45 [{"Content"}]
      127 NAMECALL                         R24 R0 K46 ["getRadioButtons"]
      129 CALL                             R24 1 1
      130 SETTABLEKS                       R24 R23 K44 ["Content"]
      132 CALL                             R20 3 1
      133 SETTABLEKS                       R20 R19 K43 ["Test"]
      135 JUMPIFNOT                        R6 ; [+98]
      136 GETUPVAL                         R20 2
      137 GETTABLEKS                       R20 R20 K26 ["createElement"]
      139 GETUPVAL                         R21 4
      140 MOVE                             R22 R9
      141 LOADK                            R23 K47 ["Publish"]
      142 LOADB                            R24 1
      143 CALL                             R22 2 1
      144 DUPTABLE                         R23 K45 [{"Content"}]
      145 JUMPIFNOT                        R7 ; [+83]
      146 GETTABLEKS                       R25 R7 K48 ["publishedDateTime"]
      148 JUMPIFNOT                        R25 ; [+80]
      149 GETUPVAL                         R24 2
      150 GETTABLEKS                       R24 R24 K26 ["createElement"]
      152 GETUPVAL                         R25 5
      153 DUPTABLE                         R26 K55 [{"Text", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextYAlignment", "RichText"}]
      154 LOADK                            R29 K19 ["Summary"]
      155 LOADK                            R30 K56 ["PublishMessage"]
      156 DUPTABLE                         R31 K64 [{"experienceName", "month", "day", "year", "hour", "minute", "amPm"}]
      157 GETTABLEKS                       R32 R7 K65 ["name"]
      159 SETTABLEKS                       R32 R31 K57 ["experienceName"]
      161 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      163 GETTABLEKS                       R32 R32 K58 ["month"]
      165 SETTABLEKS                       R32 R31 K58 ["month"]
      167 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      169 GETTABLEKS                       R32 R32 K59 ["day"]
      171 SETTABLEKS                       R32 R31 K59 ["day"]
      173 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      175 GETTABLEKS                       R32 R32 K60 ["year"]
      177 SETTABLEKS                       R32 R31 K60 ["year"]
      179 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      181 GETTABLEKS                       R32 R32 K61 ["hour"]
      183 SETTABLEKS                       R32 R31 K61 ["hour"]
      185 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      187 GETTABLEKS                       R32 R32 K62 ["minute"]
      189 SETTABLEKS                       R32 R31 K62 ["minute"]
      191 LOADK                            R34 K19 ["Summary"]
      192 GETTABLEKS                       R36 R7 K48 ["publishedDateTime"]
      194 GETTABLEKS                       R36 R36 K66 ["isPm"]
      196 JUMPIFNOT                        R36 ; [+2]
      197 LOADK                            R35 K67 ["PM"]
      198 JUMP                             ; [+1]
      199 LOADK                            R35 K68 ["AM"]
      200 NAMECALL                         R32 R3 K21 ["getText"]
      202 CALL                             R32 3 1
      203 SETTABLEKS                       R32 R31 K63 ["amPm"]
      205 NAMECALL                         R27 R3 K21 ["getText"]
      207 CALL                             R27 4 1
      208 SETTABLEKS                       R27 R26 K49 ["Text"]
      210 LOADN                            R27 1
      211 SETTABLEKS                       R27 R26 K50 ["BackgroundTransparency"]
      213 LOADB                            R27 1
      214 SETTABLEKS                       R27 R26 K51 ["TextWrapped"]
      216 GETIMPORT                        R27 K70 [Enum.TextXAlignment.Left]
      218 SETTABLEKS                       R27 R26 K52 ["TextXAlignment"]
      220 GETIMPORT                        R27 K72 [Enum.TextYAlignment.Top]
      222 SETTABLEKS                       R27 R26 K53 ["TextYAlignment"]
      224 LOADB                            R27 1
      225 SETTABLEKS                       R27 R26 K54 ["RichText"]
      227 CALL                             R24 2 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R24
      230 SETTABLEKS                       R24 R23 K44 ["Content"]
      232 CALL                             R20 3 1
      233 JUMP                             ; [+134]
      234 GETUPVAL                         R20 2
      235 GETTABLEKS                       R20 R20 K26 ["createElement"]
      237 GETUPVAL                         R21 4
      238 MOVE                             R22 R9
      239 LOADK                            R23 K47 ["Publish"]
      240 MOVE                             R24 R13
      241 CALL                             R22 2 1
      242 DUPTABLE                         R23 K74 [{"Content", "PublishButtonPane"}]
      243 GETUPVAL                         R24 2
      244 GETTABLEKS                       R24 R24 K26 ["createElement"]
      246 GETUPVAL                         R25 6
      247 DUPTABLE                         R26 K78 [{"LayoutOrder", "Title", "Rows"}]
      248 NAMECALL                         R27 R8 K79 ["getNextOrder"]
      250 CALL                             R27 1 1
      251 SETTABLEKS                       R27 R26 K75 ["LayoutOrder"]
      253 LOADK                            R29 K19 ["Summary"]
      254 LOADK                            R30 K80 ["Checklist"]
      255 NAMECALL                         R27 R3 K21 ["getText"]
      257 CALL                             R27 3 1
      258 SETTABLEKS                       R27 R26 K76 ["Title"]
      260 NEWTABLE                         R27 0 3
      262 DUPTABLE                         R28 K82 [{"text", "complete"}]
      263 LOADK                            R31 K19 ["Summary"]
      264 LOADK                            R32 K83 ["AllAssetsConverted"]
      265 NAMECALL                         R29 R3 K21 ["getText"]
      267 CALL                             R29 3 1
      268 SETTABLEKS                       R29 R28 K81 ["text"]
      270 SETTABLEKS                       R10 R28 K11 ["complete"]
      272 DUPTABLE                         R29 K82 [{"text", "complete"}]
      273 LOADK                            R32 K19 ["Summary"]
      274 LOADK                            R33 K84 ["R15ModeOn"]
      275 NAMECALL                         R30 R3 K21 ["getText"]
      277 CALL                             R30 3 1
      278 SETTABLEKS                       R30 R29 K81 ["text"]
      280 SETTABLEKS                       R11 R29 K11 ["complete"]
      282 DUPTABLE                         R30 K82 [{"text", "complete"}]
      283 LOADK                            R33 K19 ["Summary"]
      284 LOADK                            R34 K85 ["GameSettingsAvatarType"]
      285 NAMECALL                         R31 R3 K21 ["getText"]
      287 CALL                             R31 3 1
      288 SETTABLEKS                       R31 R30 K81 ["text"]
      290 SETTABLEKS                       R12 R30 K11 ["complete"]
      292 SETLIST                          R27 R28 3 [1]
      294 SETTABLEKS                       R27 R26 K77 ["Rows"]
      296 CALL                             R24 2 1
      297 SETTABLEKS                       R24 R23 K44 ["Content"]
      299 GETUPVAL                         R24 2
      300 GETTABLEKS                       R24 R24 K26 ["createElement"]
      302 GETUPVAL                         R25 7
      303 DUPTABLE                         R26 K88 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "LayoutOrder"}]
      304 GETIMPORT                        R27 K90 [Enum.FillDirection.Horizontal]
      306 SETTABLEKS                       R27 R26 K30 ["Layout"]
      308 GETIMPORT                        R27 K92 [Enum.HorizontalAlignment.Right]
      310 SETTABLEKS                       R27 R26 K86 ["HorizontalAlignment"]
      312 GETIMPORT                        R27 K94 [Enum.VerticalAlignment.Center]
      314 SETTABLEKS                       R27 R26 K87 ["VerticalAlignment"]
      316 GETIMPORT                        R27 K33 [UDim2.new]
      318 LOADN                            R28 1
      319 LOADN                            R29 0
      320 LOADN                            R30 0
      321 GETTABLEKS                       R31 R15 K95 ["Height"]
      323 GETTABLEKS                       R31 R31 K96 ["Offset"]
      325 CALL                             R27 4 1
      326 SETTABLEKS                       R27 R26 K27 ["Size"]
      328 NAMECALL                         R27 R8 K79 ["getNextOrder"]
      330 CALL                             R27 1 1
      331 SETTABLEKS                       R27 R26 K75 ["LayoutOrder"]
      333 DUPTABLE                         R27 K98 [{"PublishButton"}]
      334 GETUPVAL                         R28 2
      335 GETTABLEKS                       R28 R28 K26 ["createElement"]
      337 GETUPVAL                         R29 8
      338 DUPTABLE                         R30 K102 [{"Disabled", "LayoutOrder", "Size", "Text", "TextXAlignment", "OnClick", "Style"}]
      339 NOT                              R31 R13
      340 SETTABLEKS                       R31 R30 K99 ["Disabled"]
      342 NAMECALL                         R31 R8 K79 ["getNextOrder"]
      344 CALL                             R31 1 1
      345 SETTABLEKS                       R31 R30 K75 ["LayoutOrder"]
      347 SETTABLEKS                       R15 R30 K27 ["Size"]
      349 SETTABLEKS                       R14 R30 K49 ["Text"]
      351 GETIMPORT                        R31 K103 [Enum.TextXAlignment.Center]
      353 SETTABLEKS                       R31 R30 K52 ["TextXAlignment"]
      355 DUPCLOSURE                       R31 K104 [PROTO_40]
      356 SETTABLEKS                       R31 R30 K100 ["OnClick"]
      358 LOADK                            R31 K105 ["PrimaryBrand"]
      359 SETTABLEKS                       R31 R30 K101 ["Style"]
      361 CALL                             R28 2 1
      362 SETTABLEKS                       R28 R27 K97 ["PublishButton"]
      364 CALL                             R24 3 1
      365 SETTABLEKS                       R24 R23 K73 ["PublishButtonPane"]
      367 CALL                             R20 3 1
      368 SETTABLEKS                       R20 R19 K47 ["Publish"]
      370 CALL                             R16 3 -1
      371 RETURN                           R16 -1

PROTO_42:
        0 DUPTABLE                         R1 K11 [{"animations", "characters", "charactersConverted", "characterMetadataLoadedVersion", "scripts", "adapted", "avatarType", "selectedTab", "sortSelection", "isSuccessfullyPublished", "experienceData"}]
        1 GETTABLEKS                       R2 R0 K12 ["AnimationConversion"]
        3 GETTABLEKS                       R2 R2 K0 ["animations"]
        5 SETTABLEKS                       R2 R1 K0 ["animations"]
        7 GETTABLEKS                       R2 R0 K13 ["CharacterConversion"]
        9 GETTABLEKS                       R2 R2 K1 ["characters"]
       11 SETTABLEKS                       R2 R1 K1 ["characters"]
       13 GETTABLEKS                       R2 R0 K13 ["CharacterConversion"]
       15 GETTABLEKS                       R2 R2 K14 ["convertedCharacters"]
       17 SETTABLEKS                       R2 R1 K2 ["charactersConverted"]
       19 GETTABLEKS                       R2 R0 K13 ["CharacterConversion"]
       21 GETTABLEKS                       R2 R2 K3 ["characterMetadataLoadedVersion"]
       23 SETTABLEKS                       R2 R1 K3 ["characterMetadataLoadedVersion"]
       25 GETTABLEKS                       R2 R0 K15 ["ScriptConversion"]
       27 GETTABLEKS                       R2 R2 K16 ["diagnostics"]
       29 SETTABLEKS                       R2 R1 K4 ["scripts"]
       31 GETTABLEKS                       R2 R0 K17 ["Adapter"]
       33 GETTABLEKS                       R2 R2 K5 ["adapted"]
       35 SETTABLEKS                       R2 R1 K5 ["adapted"]
       37 GETTABLEKS                       R2 R0 K18 ["AvatarType"]
       39 SETTABLEKS                       R2 R1 K6 ["avatarType"]
       41 GETTABLEKS                       R2 R0 K19 ["PanelSelection"]
       43 GETTABLEKS                       R2 R2 K7 ["selectedTab"]
       45 SETTABLEKS                       R2 R1 K7 ["selectedTab"]
       47 GETTABLEKS                       R2 R0 K20 ["DataDisplay"]
       49 GETTABLEKS                       R2 R2 K8 ["sortSelection"]
       51 SETTABLEKS                       R2 R1 K8 ["sortSelection"]
       53 GETTABLEKS                       R2 R0 K21 ["ConversionProgress"]
       55 GETTABLEKS                       R2 R2 K9 ["isSuccessfullyPublished"]
       57 SETTABLEKS                       R2 R1 K9 ["isSuccessfullyPublished"]
       59 GETTABLEKS                       R2 R0 K21 ["ConversionProgress"]
       61 GETTABLEKS                       R2 R2 K10 ["experienceData"]
       63 SETTABLEKS                       R2 R1 K10 ["experienceData"]
       65 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_48:
        0 DUPTABLE                         R1 K5 [{"loadCharacterMetadata", "addAdapters", "removeAdapters", "setSelectedTab", "setSortSelection"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["loadCharacterMetadata"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["addAdapters"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["removeAdapters"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["setSelectedTab"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["setSortSelection"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpRbxApiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["R15Migrator"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Roact"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R3 K14 ["ContextServices"]
       35 GETIMPORT                        R6 K10 [require]
       37 GETTABLEKS                       R7 R2 K11 ["Packages"]
       39 GETTABLEKS                       R7 R7 K15 ["RoactRodux"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K10 [require]
       44 GETTABLEKS                       R8 R2 K11 ["Packages"]
       46 GETTABLEKS                       R8 R8 K16 ["Dash"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K10 [require]
       51 GETTABLEKS                       R9 R2 K17 ["Src"]
       53 GETTABLEKS                       R9 R9 K18 ["Util"]
       55 GETTABLEKS                       R9 R9 K19 ["UILayoutHelpers"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K10 [require]
       60 GETTABLEKS                       R10 R2 K17 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Contexts"]
       64 GETTABLEKS                       R10 R10 K21 ["ScriptConversionContext"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R3 K22 ["UI"]
       69 GETTABLEKS                       R11 R10 K23 ["ExpandablePane"]
       71 GETTABLEKS                       R12 R10 K24 ["ScrollingFrame"]
       73 GETTABLEKS                       R13 R10 K25 ["Pane"]
       75 GETTABLEKS                       R14 R10 K26 ["TextLabel"]
       77 GETTABLEKS                       R15 R10 K27 ["RadioButtonList"]
       79 GETTABLEKS                       R16 R10 K28 ["Image"]
       81 GETTABLEKS                       R17 R10 K29 ["TextWithLinks"]
       83 GETTABLEKS                       R18 R10 K30 ["SelectInput"]
       85 GETTABLEKS                       R19 R10 K31 ["IconButton"]
       87 GETTABLEKS                       R20 R3 K18 ["Util"]
       89 GETTABLEKS                       R21 R20 K32 ["LayoutOrderIterator"]
       91 GETTABLEKS                       R22 R20 K33 ["StyleModifier"]
       93 GETTABLEKS                       R23 R2 K17 ["Src"]
       95 GETTABLEKS                       R23 R23 K18 ["Util"]
       97 GETIMPORT                        R24 K10 [require]
       99 GETTABLEKS                       R25 R23 K34 ["TabsData"]
      101 CALL                             R24 1 1
      102 GETIMPORT                        R25 K10 [require]
      104 GETTABLEKS                       R26 R23 K35 ["SortData"]
      106 CALL                             R25 1 1
      107 GETIMPORT                        R26 K10 [require]
      109 GETIMPORT                        R27 K6 [script]
      111 GETTABLEKS                       R27 R27 K36 ["Parent"]
      113 GETTABLEKS                       R27 R27 K37 ["StatusTable"]
      115 CALL                             R26 1 1
      116 GETTABLEKS                       R27 R2 K17 ["Src"]
      118 GETTABLEKS                       R27 R27 K38 ["Thunks"]
      120 GETIMPORT                        R28 K10 [require]
      122 GETTABLEKS                       R29 R27 K39 ["LoadCharacterMetadata"]
      124 CALL                             R28 1 1
      125 GETIMPORT                        R29 K10 [require]
      127 GETTABLEKS                       R30 R27 K40 ["AddAdapters"]
      129 CALL                             R29 1 1
      130 GETIMPORT                        R30 K10 [require]
      132 GETTABLEKS                       R31 R27 K41 ["RemoveAdapters"]
      134 CALL                             R30 1 1
      135 GETTABLEKS                       R31 R2 K17 ["Src"]
      137 GETTABLEKS                       R31 R31 K42 ["Actions"]
      139 GETIMPORT                        R32 K10 [require]
      141 GETTABLEKS                       R33 R31 K43 ["SetSelectedTab"]
      143 CALL                             R32 1 1
      144 GETIMPORT                        R33 K10 [require]
      146 GETTABLEKS                       R34 R31 K44 ["SetSortSelection"]
      148 CALL                             R33 1 1
      149 GETIMPORT                        R34 K10 [require]
      151 GETTABLEKS                       R35 R2 K17 ["Src"]
      153 GETTABLEKS                       R35 R35 K45 ["Resources"]
      155 GETTABLEKS                       R35 R35 K46 ["Constants"]
      157 CALL                             R34 1 1
      158 GETTABLEKS                       R34 R34 K47 ["StatusTableData"]
      160 GETIMPORT                        R35 K10 [require]
      162 GETTABLEKS                       R36 R2 K17 ["Src"]
      164 GETTABLEKS                       R36 R36 K18 ["Util"]
      166 GETTABLEKS                       R36 R36 K48 ["sanitizeString"]
      168 CALL                             R35 1 1
      169 GETIMPORT                        R36 K10 [require]
      171 GETTABLEKS                       R37 R2 K17 ["Src"]
      173 GETTABLEKS                       R37 R37 K18 ["Util"]
      175 GETTABLEKS                       R37 R37 K49 ["SaveInterface"]
      177 CALL                             R36 1 1
      178 GETIMPORT                        R37 K10 [require]
      180 GETTABLEKS                       R38 R2 K17 ["Src"]
      182 GETTABLEKS                       R38 R38 K50 ["Modules"]
      184 GETTABLEKS                       R38 R38 K51 ["NpcIdManager"]
      186 CALL                             R37 1 1
      187 GETIMPORT                        R38 K1 [game]
      189 LOADK                            R40 K52 ["R15MigShowLinkedText"]
      190 NAMECALL                         R38 R38 K53 ["GetFastFlag"]
      192 CALL                             R38 2 1
      193 GETTABLEKS                       R39 R4 K54 ["PureComponent"]
      195 LOADK                            R41 K55 ["SummaryPane"]
      196 NAMECALL                         R39 R39 K56 ["extend"]
      198 CALL                             R39 2 1
      199 DUPCLOSURE                       R40 K57 [PROTO_7]
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R34
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R17
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R32
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R6
      212 SETGLOBAL                        R40 K58 ["getHeaderCellComponent"]
      214 DUPCLOSURE                       R40 K59 [PROTO_16]
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R36
      218 SETTABLEKS                       R40 R39 K60 ["init"]
      220 DUPCLOSURE                       R40 K61 [PROTO_17]
      221 SETTABLEKS                       R40 R39 K62 ["didMount"]
      223 DUPCLOSURE                       R40 K63 [PROTO_21]
      224 CAPTURE                          VAL R25
      225 DUPCLOSURE                       R41 K64 [PROTO_23]
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R37
      228 CAPTURE                          VAL R35
      229 DUPCLOSURE                       R42 K65 [PROTO_24]
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R35
      232 DUPCLOSURE                       R43 K66 [PROTO_26]
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R35
      235 DUPCLOSURE                       R44 K67 [PROTO_27]
      236 CAPTURE                          VAL R42
      237 CAPTURE                          VAL R43
      238 CAPTURE                          VAL R41
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R40
      241 SETTABLEKS                       R44 R39 K68 ["getDerivedStateFromProps"]
      243 DUPCLOSURE                       R44 K69 [PROTO_28]
      244 DUPCLOSURE                       R45 K70 [PROTO_29]
      245 DUPCLOSURE                       R46 K71 [PROTO_30]
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R14
      251 SETTABLEKS                       R46 R39 K72 ["renderHeader"]
      253 DUPCLOSURE                       R46 K73 [PROTO_33]
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R38
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R0
      259 SETTABLEKS                       R46 R39 K74 ["getRadioButtons"]
      261 DUPCLOSURE                       R46 K75 [PROTO_35]
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R25
      267 SETTABLEKS                       R46 R39 K76 ["getSorter"]
      269 DUPCLOSURE                       R46 K77 [PROTO_36]
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R13
      272 CAPTURE                          VAL R19
      273 SETTABLEKS                       R46 R39 K78 ["getSortAndRefreshRow"]
      275 DUPCLOSURE                       R46 K79 [PROTO_38]
      276 CAPTURE                          VAL R4
      277 CAPTURE                          VAL R26
      278 SETTABLEKS                       R46 R39 K80 ["getConversionItems"]
      280 DUPCLOSURE                       R46 K81 [PROTO_41]
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R12
      285 CAPTURE                          VAL R11
      286 CAPTURE                          VAL R14
      287 CAPTURE                          VAL R26
      288 CAPTURE                          VAL R13
      289 CAPTURE                          VAL R19
      290 SETTABLEKS                       R46 R39 K82 ["render"]
      292 DUPCLOSURE                       R46 K83 [PROTO_42]
      293 DUPCLOSURE                       R47 K84 [PROTO_48]
      294 CAPTURE                          VAL R28
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R30
      297 CAPTURE                          VAL R32
      298 CAPTURE                          VAL R33
      299 GETTABLEKS                       R48 R5 K85 ["withContext"]
      301 DUPTABLE                         R49 K89 [{"Stylizer", "Localization", "ScriptConversionContext", "Analytics"}]
      302 GETTABLEKS                       R50 R5 K86 ["Stylizer"]
      304 SETTABLEKS                       R50 R49 K86 ["Stylizer"]
      306 GETTABLEKS                       R50 R5 K87 ["Localization"]
      308 SETTABLEKS                       R50 R49 K87 ["Localization"]
      310 SETTABLEKS                       R9 R49 K21 ["ScriptConversionContext"]
      312 GETTABLEKS                       R50 R5 K88 ["Analytics"]
      314 SETTABLEKS                       R50 R49 K88 ["Analytics"]
      316 CALL                             R48 1 1
      317 MOVE                             R49 R39
      318 CALL                             R48 1 1
      319 MOVE                             R39 R48
      320 GETTABLEKS                       R48 R6 K90 ["connect"]
      322 MOVE                             R49 R46
      323 MOVE                             R50 R47
      324 CALL                             R48 2 1
      325 MOVE                             R49 R39
      326 CALL                             R48 1 -1
      327 RETURN                           R48 -1
