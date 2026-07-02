PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

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
       65 DUPTABLE                         R14 K33 [{["BorderColor3"], ["BorderSizePixel"] = 1, ["Padding"], ["Style"] = "SubtleBox", ["Size"], ["Layout"], ["HorizontalAlignment"], ["Spacing"] = 10, ["OnClick"]}]
       66 GETTABLEKS                       R15 R6 K34 ["Border"]
       68 SETTABLEKS                       R15 R14 K23 ["BorderColor3"]
       70 GETTABLEKS                       R15 R6 K35 ["HeaderCellPadding"]
       72 SETTABLEKS                       R15 R14 K26 ["Padding"]
       74 GETIMPORT                        R15 K36 [UDim2.new]
       76 GETTABLEKS                       R16 R5 K37 ["Scale"]
       78 GETTABLEKS                       R17 R5 K38 ["Offset"]
       80 LOADN                            R18 1
       81 LOADN                            R19 0
       82 CALL                             R15 4 1
       83 SETTABLEKS                       R15 R14 K16 ["Size"]
       85 GETIMPORT                        R15 K42 [Enum.FillDirection.Horizontal]
       87 SETTABLEKS                       R15 R14 K28 ["Layout"]
       89 GETIMPORT                        R15 K44 [Enum.HorizontalAlignment.Left]
       91 SETTABLEKS                       R15 R14 K29 ["HorizontalAlignment"]
       93 NEWCLOSURE                       R15 P0
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R15 R14 K32 ["OnClick"]
       98 GETTABLEKS                       R15 R1 K45 ["WrapperProps"]
      100 CALL                             R13 2 1
      101 DUPTABLE                         R14 K48 [{"Arrow", "Text"}]
      102 GETUPVAL                         R16 6
      103 GETTABLEKS                       R16 R16 K49 ["STATUS_COLUMN_INDEX"]
      105 JUMPIFEQ                         R4 R16 ; [+37]
      107 GETUPVAL                         R15 2
      108 GETTABLEKS                       R15 R15 K21 ["createElement"]
      110 GETUPVAL                         R16 7
      111 DUPTABLE                         R17 K54 [{"LayoutOrder", "Style", "StyleModifier", "AnchorPoint", "Position"}]
      112 NAMECALL                         R18 R9 K55 ["getNextOrder"]
      114 CALL                             R18 1 1
      115 SETTABLEKS                       R18 R17 K50 ["LayoutOrder"]
      117 SETTABLEKS                       R7 R17 K5 ["Style"]
      119 JUMPIFNOT                        R10 ; [+4]
      120 GETUPVAL                         R18 0
      121 GETTABLEKS                       R18 R18 K17 ["Selected"]
      123 JUMPIF                           R18 ; [+1]
      124 LOADNIL                          R18
      125 SETTABLEKS                       R18 R17 K51 ["StyleModifier"]
      127 GETIMPORT                        R18 K10 [Vector2.new]
      129 LOADN                            R19 0
      130 LOADK                            R20 K56 [0.5]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K52 ["AnchorPoint"]
      134 GETIMPORT                        R18 K58 [UDim2.fromScale]
      136 LOADN                            R19 0
      137 LOADK                            R20 K56 [0.5]
      138 CALL                             R18 2 1
      139 SETTABLEKS                       R18 R17 K53 ["Position"]
      141 CALL                             R15 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R15
      144 SETTABLEKS                       R15 R14 K46 ["Arrow"]
      146 GETUPVAL                         R16 6
      147 GETTABLEKS                       R16 R16 K49 ["STATUS_COLUMN_INDEX"]
      149 JUMPIFEQ                         R4 R16 ; [+72]
      151 GETUPVAL                         R15 2
      152 GETTABLEKS                       R15 R15 K21 ["createElement"]
      154 GETUPVAL                         R16 8
      155 DUPTABLE                         R17 K66 [{["LayoutOrder"], ["Size"], ["Text"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["VerticalAlignment"], ["TextXAlignment"], ["TextYAlignment"], ["TextProps"], ["LinkMap"]}]
      156 NAMECALL                         R18 R9 K55 ["getNextOrder"]
      158 CALL                             R18 1 1
      159 SETTABLEKS                       R18 R17 K50 ["LayoutOrder"]
      161 GETIMPORT                        R18 K58 [UDim2.fromScale]
      163 LOADN                            R19 1
      164 LOADN                            R20 1
      165 CALL                             R18 2 1
      166 SETTABLEKS                       R18 R17 K16 ["Size"]
      168 SETTABLEKS                       R3 R17 K47 ["Text"]
      170 GETIMPORT                        R18 K68 [Enum.AutomaticSize.XY]
      172 SETTABLEKS                       R18 R17 K59 ["AutomaticSize"]
      174 GETIMPORT                        R18 K44 [Enum.HorizontalAlignment.Left]
      176 SETTABLEKS                       R18 R17 K29 ["HorizontalAlignment"]
      178 GETIMPORT                        R18 K70 [Enum.VerticalAlignment.Center]
      180 SETTABLEKS                       R18 R17 K61 ["VerticalAlignment"]
      182 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      184 SETTABLEKS                       R18 R17 K62 ["TextXAlignment"]
      186 GETIMPORT                        R18 K72 [Enum.TextYAlignment.Center]
      188 SETTABLEKS                       R18 R17 K63 ["TextYAlignment"]
      190 DUPTABLE                         R18 K77 [{["TextSize"], ["Font"], ["TextWrapped"] = False}]
      191 GETTABLEKS                       R19 R6 K73 ["TextSize"]
      193 SETTABLEKS                       R19 R18 K73 ["TextSize"]
      195 GETTABLEKS                       R19 R6 K74 ["Font"]
      197 SETTABLEKS                       R19 R18 K74 ["Font"]
      199 SETTABLEKS                       R18 R17 K64 ["TextProps"]
      201 NEWTABLE                         R18 1 0
      203 DUPTABLE                         R19 K80 [{"LinkText", "LinkCallback"}]
      204 LOADK                            R22 K81 ["Summary"]
      205 GETUPVAL                         R23 9
      206 NAMECALL                         R20 R8 K82 ["getText"]
      208 CALL                             R20 3 1
      209 SETTABLEKS                       R20 R19 K78 ["LinkText"]
      211 NEWCLOSURE                       R20 P1
      212 CAPTURE                          VAL R1
      213 CAPTURE                          UPVAL U10
      214 SETTABLEKS                       R20 R19 K79 ["LinkCallback"]
      216 SETTABLEKS                       R19 R18 K83 ["[link1]"]
      218 SETTABLEKS                       R18 R17 K65 ["LinkMap"]
      220 CALL                             R15 2 1
      221 JUMP                             ; [+28]
      222 GETUPVAL                         R15 2
      223 GETTABLEKS                       R15 R15 K21 ["createElement"]
      225 GETUPVAL                         R16 11
      226 DUPTABLE                         R17 K85 [{"LayoutOrder", "Text", "Size", "TextXAlignment", "TextTruncate"}]
      227 NAMECALL                         R18 R9 K55 ["getNextOrder"]
      229 CALL                             R18 1 1
      230 SETTABLEKS                       R18 R17 K50 ["LayoutOrder"]
      232 SETTABLEKS                       R3 R17 K47 ["Text"]
      234 GETIMPORT                        R18 K58 [UDim2.fromScale]
      236 LOADN                            R19 1
      237 LOADN                            R20 1
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K16 ["Size"]
      241 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      243 SETTABLEKS                       R18 R17 K62 ["TextXAlignment"]
      245 GETIMPORT                        R18 K87 [Enum.TextTruncate.AtEnd]
      247 SETTABLEKS                       R18 R17 K84 ["TextTruncate"]
      249 CALL                             R15 2 1
      250 SETTABLEKS                       R15 R14 K47 ["Text"]
      252 CALL                             R11 3 -1
      253 RETURN                           R11 -1

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
       22 DUPTABLE                         R4 K12 [{["keys"], ["values"], ["tabTarget"], ["headerCellComponent"], [5] = True}]
       23 NEWTABLE                         R5 0 0
       25 SETTABLEKS                       R5 R4 K7 ["keys"]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K8 ["values"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K13 ["CharacterConversion"]
       34 SETTABLEKS                       R5 R4 K9 ["tabTarget"]
       36 GETGLOBAL                        R5 K14 ["getHeaderCellComponent"]
       38 LOADK                            R6 K15 ["Characters"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K13 ["CharacterConversion"]
       42 LOADN                            R9 1
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R9
       47 CALL                             R5 3 1
       48 SETTABLEKS                       R5 R4 K10 ["headerCellComponent"]
       50 SETTABLEN                        R4 R3 1
       51 DUPTABLE                         R4 K12 [{["keys"], ["values"], ["tabTarget"], ["headerCellComponent"], [5] = True}]
       52 NEWTABLE                         R5 0 0
       54 SETTABLEKS                       R5 R4 K7 ["keys"]
       56 NEWTABLE                         R5 0 0
       58 SETTABLEKS                       R5 R4 K8 ["values"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K16 ["AnimationConversion"]
       63 SETTABLEKS                       R5 R4 K9 ["tabTarget"]
       65 GETGLOBAL                        R5 K14 ["getHeaderCellComponent"]
       67 LOADK                            R6 K17 ["Animation"]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R7 R7 K16 ["AnimationConversion"]
       71 LOADN                            R9 2
       72 NEWCLOSURE                       R8 P1
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          VAL R9
       76 CALL                             R5 3 1
       77 SETTABLEKS                       R5 R4 K10 ["headerCellComponent"]
       79 SETTABLEN                        R4 R3 2
       80 DUPTABLE                         R4 K12 [{["keys"], ["values"], ["tabTarget"], ["headerCellComponent"], [5] = True}]
       81 NEWTABLE                         R5 0 0
       83 SETTABLEKS                       R5 R4 K7 ["keys"]
       85 NEWTABLE                         R5 0 0
       87 SETTABLEKS                       R5 R4 K8 ["values"]
       89 GETUPVAL                         R5 1
       90 GETTABLEKS                       R5 R5 K18 ["ScriptConversion"]
       92 SETTABLEKS                       R5 R4 K9 ["tabTarget"]
       94 GETGLOBAL                        R5 K14 ["getHeaderCellComponent"]
       96 LOADK                            R6 K19 ["Scripts"]
       97 GETUPVAL                         R7 1
       98 GETTABLEKS                       R7 R7 K16 ["AnimationConversion"]
      100 LOADN                            R9 3
      101 NEWCLOSURE                       R8 P1
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          VAL R9
      105 CALL                             R5 3 1
      106 SETTABLEKS                       R5 R4 K10 ["headerCellComponent"]
      108 SETTABLEN                        R4 R3 3
      109 SETTABLEKS                       R3 R2 K1 ["sections"]
      111 SETTABLEKS                       R2 R0 K20 ["state"]
      113 NEWCLOSURE                       R2 P2
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U0
      116 SETTABLEKS                       R2 R0 K21 ["onExpandedChanged"]
      118 NEWCLOSURE                       R2 P3
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          UPVAL U1
      122 SETTABLEKS                       R2 R0 K22 ["setSelectedTab"]
      124 NEWCLOSURE                       R2 P4
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R2 R0 K23 ["setSortSelection"]
      128 RETURN                           R0 0

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
       74 DUPTABLE                         R14 K33 [{["Size"], ["OnClick"], ["BackgroundColor"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 1, ["Padding"]}]
       75 GETIMPORT                        R15 K36 [UDim2.new]
       77 LOADN                            R16 1
       78 LOADN                            R17 0
       79 LOADN                            R18 0
       80 LOADN                            R19 28
       81 CALL                             R15 4 1
       82 SETTABLEKS                       R15 R14 K25 ["Size"]
       84 SETTABLEKS                       R6 R14 K26 ["OnClick"]
       86 GETTABLEKS                       R15 R5 K37 ["HeaderColor"]
       88 SETTABLEKS                       R15 R14 K27 ["BackgroundColor"]
       90 GETTABLEKS                       R15 R5 K38 ["DividerColor"]
       92 SETTABLEKS                       R15 R14 K28 ["BorderColor3"]
       94 DUPTABLE                         R15 K42 [{["Left"] = 8, ["Right"] = 8}]
       95 SETTABLEKS                       R15 R14 K32 ["Padding"]
       97 DUPTABLE                         R15 K46 [{"Arrow", "Text", "CompleteStatus"}]
       98 GETUPVAL                         R16 0
       99 GETTABLEKS                       R16 R16 K24 ["createElement"]
      101 GETUPVAL                         R17 2
      102 DUPTABLE                         R18 K51 [{"Style", "StyleModifier", "AnchorPoint", "Position"}]
      103 GETTABLEKS                       R19 R5 K43 ["Arrow"]
      105 SETTABLEKS                       R19 R18 K47 ["Style"]
      107 JUMPIFNOT                        R7 ; [+4]
      108 GETUPVAL                         R19 3
      109 GETTABLEKS                       R19 R19 K52 ["Selected"]
      111 JUMPIF                           R19 ; [+1]
      112 LOADNIL                          R19
      113 SETTABLEKS                       R19 R18 K48 ["StyleModifier"]
      115 GETIMPORT                        R19 K54 [Vector2.new]
      117 LOADN                            R20 0
      118 LOADK                            R21 K55 [0.5]
      119 CALL                             R19 2 1
      120 SETTABLEKS                       R19 R18 K49 ["AnchorPoint"]
      122 GETIMPORT                        R19 K57 [UDim2.fromScale]
      124 LOADN                            R20 0
      125 LOADK                            R21 K55 [0.5]
      126 CALL                             R19 2 1
      127 SETTABLEKS                       R19 R18 K50 ["Position"]
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K43 ["Arrow"]
      132 GETUPVAL                         R16 0
      133 GETTABLEKS                       R16 R16 K24 ["createElement"]
      135 GETUPVAL                         R17 4
      136 DUPTABLE                         R18 K59 [{"Text", "AutomaticSize", "AnchorPoint", "Position"}]
      137 SETTABLEKS                       R9 R18 K44 ["Text"]
      139 GETIMPORT                        R19 K62 [Enum.AutomaticSize.XY]
      141 SETTABLEKS                       R19 R18 K58 ["AutomaticSize"]
      143 GETIMPORT                        R19 K54 [Vector2.new]
      145 LOADN                            R20 0
      146 LOADK                            R21 K55 [0.5]
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K49 ["AnchorPoint"]
      150 GETIMPORT                        R19 K36 [UDim2.new]
      152 LOADN                            R20 0
      153 LOADN                            R21 24
      154 LOADK                            R22 K55 [0.5]
      155 LOADN                            R23 0
      156 CALL                             R19 4 1
      157 SETTABLEKS                       R19 R18 K50 ["Position"]
      159 CALL                             R16 2 1
      160 SETTABLEKS                       R16 R15 K44 ["Text"]
      162 JUMPIFNOT                        R10 ; [+31]
      163 GETUPVAL                         R16 0
      164 GETTABLEKS                       R16 R16 K24 ["createElement"]
      166 GETUPVAL                         R17 4
      167 DUPTABLE                         R18 K68 [{["Text"], ["TextColor"], ["Size"], ["Position"], ["TextXAlignment"], ["Font"], ["TextSize"], ["BackgroundTransparency"] = 1}]
      168 SETTABLEKS                       R10 R18 K44 ["Text"]
      170 SETTABLEKS                       R11 R18 K63 ["TextColor"]
      172 GETTABLEKS                       R19 R5 K69 ["ExpandedHeaderStatusSize"]
      174 SETTABLEKS                       R19 R18 K25 ["Size"]
      176 GETTABLEKS                       R19 R5 K70 ["ExpandedHeaderStatusPosition"]
      178 SETTABLEKS                       R19 R18 K50 ["Position"]
      180 GETIMPORT                        R19 K71 [Enum.TextXAlignment.Right]
      182 SETTABLEKS                       R19 R18 K64 ["TextXAlignment"]
      184 GETIMPORT                        R19 K73 [Enum.Font.SourceSansSemibold]
      186 SETTABLEKS                       R19 R18 K65 ["Font"]
      188 GETTABLEKS                       R19 R5 K74 ["ExpandedHeaderStatusFontSize"]
      190 SETTABLEKS                       R19 R18 K66 ["TextSize"]
      192 CALL                             R16 2 1
      193 JUMP                             ; [+1]
      194 LOADNIL                          R16
      195 SETTABLEKS                       R16 R15 K45 ["CompleteStatus"]
      197 CALL                             R12 3 -1
      198 RETURN                           R12 -1

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
       10 DUPTABLE                         R6 K13 [{["Size"], ["SelectedKey"], ["CurrentSelectedKey"], ["AutomaticSize"], ["TextXAlignment"], ["TextWrapped"] = True, ["OnClick"], ["Buttons"]}]
       11 GETIMPORT                        R7 K16 [UDim2.new]
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 LOADN                            R11 0
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K4 ["Size"]
       20 GETTABLEKS                       R8 R1 K17 ["adapted"]
       22 JUMPIFNOT                        R8 ; [+2]
       23 LOADK                            R7 K18 ["R6_R15"]
       24 JUMP                             ; [+1]
       25 LOADK                            R7 K19 ["R15"]
       26 SETTABLEKS                       R7 R6 K5 ["SelectedKey"]
       28 GETTABLEKS                       R8 R1 K17 ["adapted"]
       30 JUMPIFNOT                        R8 ; [+2]
       31 LOADK                            R7 K18 ["R6_R15"]
       32 JUMP                             ; [+1]
       33 LOADK                            R7 K19 ["R15"]
       34 SETTABLEKS                       R7 R6 K6 ["CurrentSelectedKey"]
       36 GETIMPORT                        R7 K22 [Enum.AutomaticSize.Y]
       38 SETTABLEKS                       R7 R6 K7 ["AutomaticSize"]
       40 GETIMPORT                        R7 K24 [Enum.TextXAlignment.Left]
       42 SETTABLEKS                       R7 R6 K8 ["TextXAlignment"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       49 NEWTABLE                         R7 0 2
       51 DUPTABLE                         R8 K29 [{"Key", "Text", "Description", "LinkProps"}]
       52 LOADK                            R9 K18 ["R6_R15"]
       53 SETTABLEKS                       R9 R8 K25 ["Key"]
       55 LOADK                            R9 K30 ["R6 & R15"]
       56 SETTABLEKS                       R9 R8 K26 ["Text"]
       58 LOADK                            R11 K31 ["Summary"]
       59 LOADK                            R12 K32 ["R6R15ModeDesc"]
       60 NAMECALL                         R9 R3 K33 ["getText"]
       62 CALL                             R9 3 1
       63 SETTABLEKS                       R9 R8 K27 ["Description"]
       65 GETUPVAL                         R10 2
       66 JUMPIFNOT                        R10 ; [+14]
       67 DUPTABLE                         R9 K34 [{"Text", "OnClick"}]
       68 LOADK                            R12 K35 ["AdapterPane"]
       69 LOADK                            R13 K36 ["LearnMore"]
       70 NAMECALL                         R10 R3 K33 ["getText"]
       72 CALL                             R10 3 1
       73 SETTABLEKS                       R10 R9 K26 ["Text"]
       75 DUPCLOSURE                       R10 K37 [PROTO_32]
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          UPVAL U4
       78 SETTABLEKS                       R10 R9 K11 ["OnClick"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R9
       82 SETTABLEKS                       R9 R8 K28 ["LinkProps"]
       84 DUPTABLE                         R9 K38 [{"Key", "Text", "Description"}]
       85 LOADK                            R10 K19 ["R15"]
       86 SETTABLEKS                       R10 R9 K25 ["Key"]
       88 LOADK                            R10 K19 ["R15"]
       89 SETTABLEKS                       R10 R9 K26 ["Text"]
       91 LOADK                            R12 K31 ["Summary"]
       92 LOADK                            R13 K39 ["R15ModeDesc"]
       93 NAMECALL                         R10 R3 K33 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K27 ["Description"]
       98 SETLIST                          R7 R8 2 [1]
      100 SETTABLEKS                       R7 R6 K12 ["Buttons"]
      102 CALL                             R4 2 -1
      103 RETURN                           R4 -1

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
       46 DUPTABLE                         R10 K30 [{["Text"], ["AutomaticSize"], ["LayoutOrder"] = 1}]
       47 LOADK                            R13 K31 ["Summary"]
       48 LOADK                            R14 K32 ["Sortby"]
       49 NAMECALL                         R11 R3 K33 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K26 ["Text"]
       54 GETIMPORT                        R11 K35 [Enum.AutomaticSize.XY]
       56 SETTABLEKS                       R11 R10 K27 ["AutomaticSize"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K23 ["FilterLabel"]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K3 ["createElement"]
       64 GETUPVAL                         R9 3
       65 DUPTABLE                         R10 K41 [{["PlaceholderText"], ["SelectedIndex"], ["Items"], ["Size"], ["LayoutOrder"] = 2, ["OnItemActivated"]}]
       66 LOADK                            R13 K31 ["Summary"]
       67 LOADK                            R14 K32 ["Sortby"]
       68 NAMECALL                         R11 R3 K33 ["getText"]
       70 CALL                             R11 3 1
       71 SETTABLEKS                       R11 R10 K36 ["PlaceholderText"]
       73 GETTABLEKS                       R11 R1 K42 ["sortSelection"]
       75 SETTABLEKS                       R11 R10 K37 ["SelectedIndex"]
       77 GETUPVAL                         R11 4
       78 GETTABLEKS                       R11 R11 K43 ["getOrderedSortData"]
       80 MOVE                             R12 R3
       81 CALL                             R11 1 1
       82 SETTABLEKS                       R11 R10 K38 ["Items"]
       84 GETIMPORT                        R11 K45 [UDim2.fromOffset]
       86 GETTABLEKS                       R12 R2 K13 ["SortBy"]
       88 GETTABLEKS                       R12 R12 K46 ["Width"]
       90 GETTABLEKS                       R13 R2 K13 ["SortBy"]
       92 GETTABLEKS                       R13 R13 K14 ["Height"]
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K4 ["Size"]
       97 NEWCLOSURE                       R11 P0
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R11 R10 K40 ["OnItemActivated"]
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K24 ["Filter"]
      104 CALL                             R4 3 -1
      105 RETURN                           R4 -1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K7 [{["LayoutOrder"] = -1, ["Size"]}]
       11 GETIMPORT                        R7 K10 [UDim2.new]
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 GETTABLEKS                       R11 R2 K11 ["SortBy"]
       18 GETTABLEKS                       R11 R11 K12 ["Height"]
       20 CALL                             R7 4 1
       21 SETTABLEKS                       R7 R6 K6 ["Size"]
       23 NEWTABLE                         R7 1 1
       25 NAMECALL                         R9 R0 K13 ["getSorter"]
       27 CALL                             R9 1 1
       28 SETTABLEKS                       R9 R7 K14 ["sorter"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 GETUPVAL                         R9 2
       34 DUPTABLE                         R10 K23 [{["LeftIcon"], ["Cursor"] = "PointingHand", ["OnClick"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundStyle"], ["TooltipText"]}]
       35 GETTABLEKS                       R11 R2 K24 ["RefreshButton"]
       37 GETTABLEKS                       R11 R11 K25 ["Icon"]
       39 SETTABLEKS                       R11 R10 K15 ["LeftIcon"]
       41 GETTABLEKS                       R11 R1 K26 ["OnResetPlugin"]
       43 SETTABLEKS                       R11 R10 K18 ["OnClick"]
       45 GETTABLEKS                       R11 R2 K24 ["RefreshButton"]
       47 GETTABLEKS                       R11 R11 K6 ["Size"]
       49 SETTABLEKS                       R11 R10 K6 ["Size"]
       51 GETIMPORT                        R11 K28 [Vector2.new]
       53 LOADN                            R12 1
       54 LOADK                            R13 K29 [0.5]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K19 ["AnchorPoint"]
       58 GETIMPORT                        R11 K10 [UDim2.new]
       60 LOADN                            R12 1
       61 LOADN                            R13 0
       62 LOADK                            R14 K29 [0.5]
       63 LOADN                            R15 0
       64 CALL                             R11 4 1
       65 SETTABLEKS                       R11 R10 K20 ["Position"]
       67 GETTABLEKS                       R11 R2 K24 ["RefreshButton"]
       69 GETTABLEKS                       R11 R11 K21 ["BackgroundStyle"]
       71 SETTABLEKS                       R11 R10 K21 ["BackgroundStyle"]
       73 LOADK                            R13 K30 ["Summary"]
       74 LOADK                            R14 K31 ["Refresh"]
       75 NAMECALL                         R11 R3 K32 ["getText"]
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K22 ["TooltipText"]
       80 CALL                             R8 2 -1
       81 SETLIST                          R7 R8 -1 [1]
       83 CALL                             R4 3 -1
       84 RETURN                           R4 -1

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
      135 JUMPIFNOT                        R6 ; [+89]
      136 GETUPVAL                         R20 2
      137 GETTABLEKS                       R20 R20 K26 ["createElement"]
      139 GETUPVAL                         R21 4
      140 MOVE                             R22 R9
      141 LOADK                            R23 K47 ["Publish"]
      142 LOADB                            R24 1
      143 CALL                             R22 2 1
      144 DUPTABLE                         R23 K45 [{"Content"}]
      145 JUMPIFNOT                        R7 ; [+74]
      146 GETTABLEKS                       R25 R7 K48 ["publishedDateTime"]
      148 JUMPIFNOT                        R25 ; [+71]
      149 GETUPVAL                         R24 2
      150 GETTABLEKS                       R24 R24 K26 ["createElement"]
      152 GETUPVAL                         R25 5
      153 DUPTABLE                         R26 K57 [{["Text"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["RichText"] = True}]
      154 LOADK                            R29 K19 ["Summary"]
      155 LOADK                            R30 K58 ["PublishMessage"]
      156 DUPTABLE                         R31 K66 [{"experienceName", "month", "day", "year", "hour", "minute", "amPm"}]
      157 GETTABLEKS                       R32 R7 K67 ["name"]
      159 SETTABLEKS                       R32 R31 K59 ["experienceName"]
      161 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      163 GETTABLEKS                       R32 R32 K60 ["month"]
      165 SETTABLEKS                       R32 R31 K60 ["month"]
      167 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      169 GETTABLEKS                       R32 R32 K61 ["day"]
      171 SETTABLEKS                       R32 R31 K61 ["day"]
      173 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      175 GETTABLEKS                       R32 R32 K62 ["year"]
      177 SETTABLEKS                       R32 R31 K62 ["year"]
      179 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      181 GETTABLEKS                       R32 R32 K63 ["hour"]
      183 SETTABLEKS                       R32 R31 K63 ["hour"]
      185 GETTABLEKS                       R32 R7 K48 ["publishedDateTime"]
      187 GETTABLEKS                       R32 R32 K64 ["minute"]
      189 SETTABLEKS                       R32 R31 K64 ["minute"]
      191 LOADK                            R34 K19 ["Summary"]
      192 GETTABLEKS                       R36 R7 K48 ["publishedDateTime"]
      194 GETTABLEKS                       R36 R36 K68 ["isPm"]
      196 JUMPIFNOT                        R36 ; [+2]
      197 LOADK                            R35 K69 ["PM"]
      198 JUMP                             ; [+1]
      199 LOADK                            R35 K70 ["AM"]
      200 NAMECALL                         R32 R3 K21 ["getText"]
      202 CALL                             R32 3 1
      203 SETTABLEKS                       R32 R31 K65 ["amPm"]
      205 NAMECALL                         R27 R3 K21 ["getText"]
      207 CALL                             R27 4 1
      208 SETTABLEKS                       R27 R26 K49 ["Text"]
      210 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
      212 SETTABLEKS                       R27 R26 K54 ["TextXAlignment"]
      214 GETIMPORT                        R27 K74 [Enum.TextYAlignment.Top]
      216 SETTABLEKS                       R27 R26 K55 ["TextYAlignment"]
      218 CALL                             R24 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R24
      221 SETTABLEKS                       R24 R23 K44 ["Content"]
      223 CALL                             R20 3 1
      224 JUMP                             ; [+131]
      225 GETUPVAL                         R20 2
      226 GETTABLEKS                       R20 R20 K26 ["createElement"]
      228 GETUPVAL                         R21 4
      229 MOVE                             R22 R9
      230 LOADK                            R23 K47 ["Publish"]
      231 MOVE                             R24 R13
      232 CALL                             R22 2 1
      233 DUPTABLE                         R23 K76 [{"Content", "PublishButtonPane"}]
      234 GETUPVAL                         R24 2
      235 GETTABLEKS                       R24 R24 K26 ["createElement"]
      237 GETUPVAL                         R25 6
      238 DUPTABLE                         R26 K80 [{"LayoutOrder", "Title", "Rows"}]
      239 NAMECALL                         R27 R8 K81 ["getNextOrder"]
      241 CALL                             R27 1 1
      242 SETTABLEKS                       R27 R26 K77 ["LayoutOrder"]
      244 LOADK                            R29 K19 ["Summary"]
      245 LOADK                            R30 K82 ["Checklist"]
      246 NAMECALL                         R27 R3 K21 ["getText"]
      248 CALL                             R27 3 1
      249 SETTABLEKS                       R27 R26 K78 ["Title"]
      251 NEWTABLE                         R27 0 3
      253 DUPTABLE                         R28 K84 [{"text", "complete"}]
      254 LOADK                            R31 K19 ["Summary"]
      255 LOADK                            R32 K85 ["AllAssetsConverted"]
      256 NAMECALL                         R29 R3 K21 ["getText"]
      258 CALL                             R29 3 1
      259 SETTABLEKS                       R29 R28 K83 ["text"]
      261 SETTABLEKS                       R10 R28 K11 ["complete"]
      263 DUPTABLE                         R29 K84 [{"text", "complete"}]
      264 LOADK                            R32 K19 ["Summary"]
      265 LOADK                            R33 K86 ["R15ModeOn"]
      266 NAMECALL                         R30 R3 K21 ["getText"]
      268 CALL                             R30 3 1
      269 SETTABLEKS                       R30 R29 K83 ["text"]
      271 SETTABLEKS                       R11 R29 K11 ["complete"]
      273 DUPTABLE                         R30 K84 [{"text", "complete"}]
      274 LOADK                            R33 K19 ["Summary"]
      275 LOADK                            R34 K87 ["GameSettingsAvatarType"]
      276 NAMECALL                         R31 R3 K21 ["getText"]
      278 CALL                             R31 3 1
      279 SETTABLEKS                       R31 R30 K83 ["text"]
      281 SETTABLEKS                       R12 R30 K11 ["complete"]
      283 SETLIST                          R27 R28 3 [1]
      285 SETTABLEKS                       R27 R26 K79 ["Rows"]
      287 CALL                             R24 2 1
      288 SETTABLEKS                       R24 R23 K44 ["Content"]
      290 GETUPVAL                         R24 2
      291 GETTABLEKS                       R24 R24 K26 ["createElement"]
      293 GETUPVAL                         R25 7
      294 DUPTABLE                         R26 K90 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "LayoutOrder"}]
      295 GETIMPORT                        R27 K92 [Enum.FillDirection.Horizontal]
      297 SETTABLEKS                       R27 R26 K30 ["Layout"]
      299 GETIMPORT                        R27 K94 [Enum.HorizontalAlignment.Right]
      301 SETTABLEKS                       R27 R26 K88 ["HorizontalAlignment"]
      303 GETIMPORT                        R27 K96 [Enum.VerticalAlignment.Center]
      305 SETTABLEKS                       R27 R26 K89 ["VerticalAlignment"]
      307 GETIMPORT                        R27 K33 [UDim2.new]
      309 LOADN                            R28 1
      310 LOADN                            R29 0
      311 LOADN                            R30 0
      312 GETTABLEKS                       R31 R15 K97 ["Height"]
      314 GETTABLEKS                       R31 R31 K98 ["Offset"]
      316 CALL                             R27 4 1
      317 SETTABLEKS                       R27 R26 K27 ["Size"]
      319 NAMECALL                         R27 R8 K81 ["getNextOrder"]
      321 CALL                             R27 1 1
      322 SETTABLEKS                       R27 R26 K77 ["LayoutOrder"]
      324 DUPTABLE                         R27 K100 [{"PublishButton"}]
      325 GETUPVAL                         R28 2
      326 GETTABLEKS                       R28 R28 K26 ["createElement"]
      328 GETUPVAL                         R29 8
      329 DUPTABLE                         R30 K105 [{["Disabled"], ["LayoutOrder"], ["Size"], ["Text"], ["TextXAlignment"], ["OnClick"], ["Style"] = "PrimaryBrand"}]
      330 NOT                              R31 R13
      331 SETTABLEKS                       R31 R30 K101 ["Disabled"]
      333 NAMECALL                         R31 R8 K81 ["getNextOrder"]
      335 CALL                             R31 1 1
      336 SETTABLEKS                       R31 R30 K77 ["LayoutOrder"]
      338 SETTABLEKS                       R15 R30 K27 ["Size"]
      340 SETTABLEKS                       R14 R30 K49 ["Text"]
      342 GETIMPORT                        R31 K106 [Enum.TextXAlignment.Center]
      344 SETTABLEKS                       R31 R30 K54 ["TextXAlignment"]
      346 DUPCLOSURE                       R31 K107 [PROTO_40]
      347 SETTABLEKS                       R31 R30 K102 ["OnClick"]
      349 CALL                             R28 2 1
      350 SETTABLEKS                       R28 R27 K99 ["PublishButton"]
      352 CALL                             R24 3 1
      353 SETTABLEKS                       R24 R23 K75 ["PublishButtonPane"]
      355 CALL                             R20 3 1
      356 SETTABLEKS                       R20 R19 K47 ["Publish"]
      358 CALL                             R16 3 -1
      359 RETURN                           R16 -1

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
