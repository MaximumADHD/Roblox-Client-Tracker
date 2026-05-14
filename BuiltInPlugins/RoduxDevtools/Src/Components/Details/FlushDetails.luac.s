PROTO_0:
        0 GETIMPORT                        R1 K2 [string.split]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\n"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 GETTABLEN                        R3 R1 1
        8 LOADN                            R4 0
        9 MOVE                             R5 R1
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 JUMPIFNOTEQ                      R3 R9 ; [+3]
       15 ADDK                             R4 R4 K4 [1]
       16 JUMP                             ; [+19]
       17 MOVE                             R13 R3
       18 LOADN                            R15 1
       19 JUMPIFNOTLT                      R15 R4 ; [+6]
       21 LOADK                            R15 K5 [" (x"]
       22 MOVE                             R16 R4
       23 LOADK                            R17 K6 [")"]
       24 CONCAT                           R14 R15 R17
       25 JUMP                             ; [+1]
       26 LOADK                            R14 K7 [""]
       27 CONCAT                           R12 R13 R14
       28 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       30 MOVE                             R11 R2
       31 GETIMPORT                        R10 K10 [table.insert]
       33 CALL                             R10 2 0
       34 MOVE                             R3 R9
       35 LOADN                            R4 1
       36 FORGLOOP                         R5 2 ; [-24]
       38 MOVE                             R8 R3
       39 LOADN                            R10 1
       40 JUMPIFNOTLT                      R10 R4 ; [+6]
       42 LOADK                            R10 K5 [" (x"]
       43 MOVE                             R11 R4
       44 LOADK                            R12 K6 [")"]
       45 CONCAT                           R9 R10 R12
       46 JUMP                             ; [+1]
       47 LOADK                            R9 K7 [""]
       48 CONCAT                           R7 R8 R9
       49 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       51 MOVE                             R6 R2
       52 GETIMPORT                        R5 K10 [table.insert]
       54 CALL                             R5 2 0
       55 GETIMPORT                        R5 K12 [table.concat]
       57 MOVE                             R6 R2
       58 LOADK                            R7 K3 ["\n"]
       59 CALL                             R5 2 -1
       60 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
        5 GETTABLEKS                       R4 R0 K2 ["Size"]
        7 SETTABLEKS                       R4 R3 K2 ["Size"]
        9 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       13 LOADN                            R4 1
       14 SETTABLEKS                       R4 R3 K4 ["BackgroundTransparency"]
       16 DUPTABLE                         R4 K10 [{"Layout", "Prev", "TextLabel", "Next"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 LOADK                            R6 K11 ["UIListLayout"]
       21 DUPTABLE                         R7 K17 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
       22 GETIMPORT                        R8 K19 [Enum.SortOrder.LayoutOrder]
       24 SETTABLEKS                       R8 R7 K12 ["SortOrder"]
       26 GETIMPORT                        R8 K21 [Enum.FillDirection.Horizontal]
       28 SETTABLEKS                       R8 R7 K13 ["FillDirection"]
       30 GETIMPORT                        R8 K23 [Enum.VerticalAlignment.Center]
       32 SETTABLEKS                       R8 R7 K14 ["VerticalAlignment"]
       34 GETIMPORT                        R8 K25 [Enum.HorizontalAlignment.Right]
       36 SETTABLEKS                       R8 R7 K15 ["HorizontalAlignment"]
       38 GETIMPORT                        R8 K28 [UDim.new]
       40 LOADN                            R9 0
       41 LOADN                            R10 8
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K16 ["Padding"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K6 ["Layout"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["createElement"]
       51 GETUPVAL                         R6 1
       52 DUPTABLE                         R7 K33 [{"LayoutOrder", "Size", "Disabled", "LeftIcon", "IconSize", "OnClick"}]
       53 LOADN                            R8 1
       54 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       56 GETIMPORT                        R8 K36 [UDim2.fromOffset]
       58 LOADN                            R9 24
       59 LOADN                            R10 24
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R7 K2 ["Size"]
       63 GETTABLEKS                       R9 R0 K37 ["current"]
       65 LOADN                            R10 1
       66 JUMPIFLE                         R9 R10 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 SETTABLEKS                       R8 R7 K29 ["Disabled"]
       72 LOADK                            R8 K38 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_previous.png"]
       73 SETTABLEKS                       R8 R7 K30 ["LeftIcon"]
       75 LOADN                            R8 24
       76 SETTABLEKS                       R8 R7 K31 ["IconSize"]
       78 GETTABLEKS                       R8 R0 K39 ["onPrev"]
       80 SETTABLEKS                       R8 R7 K32 ["OnClick"]
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K7 ["Prev"]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K0 ["createElement"]
       88 GETUPVAL                         R6 2
       89 DUPTABLE                         R7 K42 [{"LayoutOrder", "AutomaticSize", "Size", "Text"}]
       90 LOADN                            R8 2
       91 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       93 GETIMPORT                        R8 K44 [Enum.AutomaticSize.X]
       95 SETTABLEKS                       R8 R7 K40 ["AutomaticSize"]
       97 GETIMPORT                        R8 K45 [UDim2.new]
       99 LOADN                            R9 0
      100 LOADN                            R10 50
      101 LOADN                            R11 1
      102 LOADN                            R12 0
      103 CALL                             R8 4 1
      104 SETTABLEKS                       R8 R7 K2 ["Size"]
      106 LOADK                            R9 K46 ["%*/%*"]
      107 GETTABLEKS                       R12 R0 K37 ["current"]
      109 LOADN                            R13 0
      110 GETTABLEKS                       R14 R0 K47 ["total"]
      112 FASTCALL                         MATH_CLAMP ; [+2]
      113 GETIMPORT                        R11 K50 [math.clamp]
      115 CALL                             R11 3 1
      116 GETTABLEKS                       R12 R0 K47 ["total"]
      118 NAMECALL                         R9 R9 K51 ["format"]
      120 CALL                             R9 3 1
      121 MOVE                             R8 R9
      122 SETTABLEKS                       R8 R7 K41 ["Text"]
      124 CALL                             R5 2 1
      125 SETTABLEKS                       R5 R4 K8 ["TextLabel"]
      127 GETUPVAL                         R5 0
      128 GETTABLEKS                       R5 R5 K0 ["createElement"]
      130 GETUPVAL                         R6 1
      131 DUPTABLE                         R7 K33 [{"LayoutOrder", "Size", "Disabled", "LeftIcon", "IconSize", "OnClick"}]
      132 LOADN                            R8 3
      133 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
      135 GETIMPORT                        R8 K36 [UDim2.fromOffset]
      137 LOADN                            R9 24
      138 LOADN                            R10 24
      139 CALL                             R8 2 1
      140 SETTABLEKS                       R8 R7 K2 ["Size"]
      142 GETTABLEKS                       R9 R0 K37 ["current"]
      144 GETTABLEKS                       R10 R0 K47 ["total"]
      146 JUMPIFLE                         R10 R9 ; [+2]
      148 LOADB                            R8 0 +1
      149 LOADB                            R8 1
      150 SETTABLEKS                       R8 R7 K29 ["Disabled"]
      152 LOADK                            R8 K52 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_next.png"]
      153 SETTABLEKS                       R8 R7 K30 ["LeftIcon"]
      155 LOADN                            R8 24
      156 SETTABLEKS                       R8 R7 K31 ["IconSize"]
      158 GETTABLEKS                       R8 R0 K53 ["onNext"]
      160 SETTABLEKS                       R8 R7 K32 ["OnClick"]
      162 CALL                             R5 2 1
      163 SETTABLEKS                       R5 R4 K9 ["Next"]
      165 CALL                             R1 3 -1
      166 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"listenerIndex"}]
        1 GETTABLEKS                       R4 R0 K0 ["listenerIndex"]
        3 SUBK                             R3 R4 K2 [1]
        4 LOADN                            R4 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K3 ["props"]
        8 GETTABLEKS                       R5 R5 K4 ["listenerCount"]
       10 FASTCALL                         MATH_CLAMP ; [+2]
       11 GETIMPORT                        R2 K7 [math.clamp]
       13 CALL                             R2 3 1
       14 SETTABLEKS                       R2 R1 K0 ["listenerIndex"]
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Event"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K2 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"listenerIndex"}]
        1 GETTABLEKS                       R4 R0 K0 ["listenerIndex"]
        3 ADDK                             R3 R4 K2 [1]
        4 LOADN                            R4 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K3 ["props"]
        8 GETTABLEKS                       R5 R5 K4 ["listenerCount"]
       10 FASTCALL                         MATH_CLAMP ; [+2]
       11 GETIMPORT                        R2 K7 [math.clamp]
       13 CALL                             R2 3 1
       14 SETTABLEKS                       R2 R1 K0 ["listenerIndex"]
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Event"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K2 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R3 K5 [{"listenerIndex", "summaryExpanded", "consumersExpanded", "pageHeight", "summaryHeight"}]
        1 LOADN                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["listenerIndex"]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["summaryExpanded"]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["consumersExpanded"]
       10 LOADN                            R4 244
       11 SETTABLEKS                       R4 R3 K3 ["pageHeight"]
       13 LOADN                            R4 32
       14 SETTABLEKS                       R4 R3 K4 ["summaryHeight"]
       16 NAMECALL                         R1 R0 K6 ["setState"]
       18 CALL                             R1 2 0
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K7 ["onPrevListener"]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K8 ["onNextListener"]
       27 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Event"]
        4 GETTABLEKS                       R3 R1 K1 ["Event"]
        6 JUMPIFEQ                         R2 R3 ; [+8]
        8 DUPTABLE                         R4 K3 [{"listenerIndex"}]
        9 LOADN                            R5 1
       10 SETTABLEKS                       R5 R4 K2 ["listenerIndex"]
       12 NAMECALL                         R2 R0 K4 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"pageHeight"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R4 K3 ["Y"]
        6 SETTABLEKS                       R4 R3 K0 ["pageHeight"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"summaryExpanded", "summaryHeight"}]
        1 GETTABLEKS                       R3 R0 K0 ["summaryExpanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["summaryExpanded"]
        6 GETTABLEKS                       R3 R0 K0 ["summaryExpanded"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADN                            R2 85
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K1 ["summaryHeight"]
       14 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_9]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"summaryHeight"}]
        2 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
        4 GETTABLEKS                       R6 R6 K4 ["Y"]
        6 GETTABLEKS                       R7 R0 K5 ["AbsolutePosition"]
        8 GETTABLEKS                       R7 R7 K4 ["Y"]
       10 ADD                              R5 R6 R7
       11 ADDK                             R4 R5 K2 [15]
       12 SETTABLEKS                       R4 R3 K0 ["summaryHeight"]
       14 NAMECALL                         R1 R1 K6 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"consumersExpanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["consumersExpanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["consumersExpanded"]
        6 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_12]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Event"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["props"]
        9 LOADNIL                          R3
       10 GETTABLEKS                       R4 R1 K2 ["isStub"]
       12 JUMPIFNOT                        R4 ; [+14]
       13 GETTABLEKS                       R4 R0 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["Localization"]
       17 LOADK                            R6 K4 ["Common"]
       18 LOADK                            R7 K5 ["LoadingStub"]
       19 NAMECALL                         R4 R4 K6 ["getText"]
       21 CALL                             R4 3 1
       22 MOVE                             R3 R4
       23 LOADN                            R4 0
       24 SETTABLEKS                       R4 R2 K7 ["listenerCount"]
       26 JUMP                             ; [+40]
       27 GETTABLEKS                       R5 R2 K8 ["listeners"]
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETTABLEKS                       R5 R2 K8 ["listeners"]
       32 GETTABLEKS                       R6 R0 K9 ["state"]
       34 GETTABLEKS                       R6 R6 K10 ["listenerIndex"]
       36 GETTABLE                         R4 R5 R6
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 JUMPIFNOT                        R4 ; [+17]
       40 GETTABLEKS                       R5 R4 K11 ["connectTraceback"]
       42 JUMPIFNOT                        R5 ; [+6]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R6 R4 K11 ["connectTraceback"]
       46 CALL                             R5 1 1
       47 MOVE                             R3 R5
       48 JUMP                             ; [+18]
       49 GETIMPORT                        R5 K14 [debug.info]
       51 GETTABLEKS                       R6 R4 K15 ["callback"]
       53 LOADK                            R7 K16 ["snl"]
       54 CALL                             R5 2 1
       55 MOVE                             R3 R5
       56 JUMP                             ; [+10]
       57 GETTABLEKS                       R5 R0 K0 ["props"]
       59 GETTABLEKS                       R5 R5 K3 ["Localization"]
       61 LOADK                            R7 K17 ["FlushDetails"]
       62 LOADK                            R8 K18 ["NoTraceback"]
       63 NAMECALL                         R5 R5 K6 ["getText"]
       65 CALL                             R5 3 1
       66 MOVE                             R3 R5
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R4 R4 K19 ["createElement"]
       70 GETUPVAL                         R5 2
       71 NEWTABLE                         R6 1 0
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K20 ["Change"]
       76 GETTABLEKS                       R7 R7 K21 ["AbsoluteSize"]
       78 NEWCLOSURE                       R8 P0
       79 CAPTURE                          VAL R0
       80 SETTABLE                         R8 R6 R7
       81 DUPTABLE                         R7 K22 [{"FlushDetails"}]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K19 ["createElement"]
       85 GETUPVAL                         R9 3
       86 DUPTABLE                         R10 K27 [{"Size", "AutomaticCanvasSize", "Layout", "Spacing"}]
       87 GETIMPORT                        R11 K30 [UDim2.fromScale]
       89 LOADN                            R12 1
       90 LOADN                            R13 1
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K23 ["Size"]
       94 GETIMPORT                        R11 K34 [Enum.AutomaticSize.Y]
       96 SETTABLEKS                       R11 R10 K24 ["AutomaticCanvasSize"]
       98 GETIMPORT                        R11 K37 [Enum.FillDirection.Vertical]
      100 SETTABLEKS                       R11 R10 K25 ["Layout"]
      102 GETIMPORT                        R11 K40 [UDim.new]
      104 LOADN                            R12 0
      105 LOADN                            R13 5
      106 CALL                             R11 2 1
      107 SETTABLEKS                       R11 R10 K26 ["Spacing"]
      109 DUPTABLE                         R11 K44 [{"SummaryInfo", "SummarySeparator", "ConsumersInfo"}]
      110 GETUPVAL                         R12 1
      111 GETTABLEKS                       R12 R12 K19 ["createElement"]
      113 GETUPVAL                         R13 4
      114 DUPTABLE                         R14 K52 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged"}]
      115 LOADK                            R15 K53 ["Section"]
      116 SETTABLEKS                       R15 R14 K45 ["Style"]
      118 GETUPVAL                         R15 5
      119 CALL                             R15 0 1
      120 SETTABLEKS                       R15 R14 K46 ["LayoutOrder"]
      122 GETIMPORT                        R15 K54 [UDim2.new]
      124 LOADN                            R16 1
      125 LOADN                            R17 0
      126 LOADN                            R18 0
      127 LOADN                            R19 32
      128 CALL                             R15 4 1
      129 SETTABLEKS                       R15 R14 K23 ["Size"]
      131 GETTABLEKS                       R15 R0 K0 ["props"]
      133 GETTABLEKS                       R15 R15 K3 ["Localization"]
      135 LOADK                            R17 K17 ["FlushDetails"]
      136 LOADK                            R18 K55 ["SummaryTitle"]
      137 NAMECALL                         R15 R15 K6 ["getText"]
      139 CALL                             R15 3 1
      140 SETTABLEKS                       R15 R14 K47 ["Text"]
      142 LOADN                            R15 5
      143 SETTABLEKS                       R15 R14 K48 ["ContentPadding"]
      145 GETIMPORT                        R15 K57 [Enum.HorizontalAlignment.Left]
      147 SETTABLEKS                       R15 R14 K49 ["HorizontalAlignment"]
      149 GETTABLEKS                       R15 R0 K9 ["state"]
      151 GETTABLEKS                       R15 R15 K58 ["summaryExpanded"]
      153 SETTABLEKS                       R15 R14 K50 ["Expanded"]
      155 NEWCLOSURE                       R15 P1
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R15 R14 K51 ["OnExpandedChanged"]
      159 NEWTABLE                         R15 0 1
      161 GETUPVAL                         R16 1
      162 GETTABLEKS                       R16 R16 K19 ["createElement"]
      164 GETUPVAL                         R17 6
      165 NEWTABLE                         R18 8 0
      167 GETIMPORT                        R19 K54 [UDim2.new]
      169 LOADN                            R20 1
      170 LOADN                            R21 0
      171 LOADN                            R22 0
      172 LOADN                            R23 0
      173 CALL                             R19 4 1
      174 SETTABLEKS                       R19 R18 K23 ["Size"]
      176 GETIMPORT                        R19 K34 [Enum.AutomaticSize.Y]
      178 SETTABLEKS                       R19 R18 K32 ["AutomaticSize"]
      180 GETIMPORT                        R19 K60 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R19 R18 K59 ["TextXAlignment"]
      184 LOADB                            R19 1
      185 SETTABLEKS                       R19 R18 K61 ["TextWrapped"]
      187 GETTABLEKS                       R20 R1 K2 ["isStub"]
      189 JUMPIFNOT                        R20 ; [+10]
      190 GETTABLEKS                       R19 R0 K0 ["props"]
      192 GETTABLEKS                       R19 R19 K3 ["Localization"]
      194 LOADK                            R21 K4 ["Common"]
      195 LOADK                            R22 K5 ["LoadingStub"]
      196 NAMECALL                         R19 R19 K6 ["getText"]
      198 CALL                             R19 3 1
      199 JUMP                             ; [+34]
      200 GETTABLEKS                       R19 R0 K0 ["props"]
      202 GETTABLEKS                       R19 R19 K3 ["Localization"]
      204 LOADK                            R21 K17 ["FlushDetails"]
      205 LOADK                            R22 K62 ["Summary"]
      206 DUPTABLE                         R23 K67 [{"count", "elapsed", "timestamp", "source"}]
      207 GETTABLEKS                       R24 R2 K7 ["listenerCount"]
      209 SETTABLEKS                       R24 R23 K63 ["count"]
      211 GETTABLEKS                       R24 R2 K68 ["elapsedMs"]
      213 SETTABLEKS                       R24 R23 K64 ["elapsed"]
      215 GETIMPORT                        R24 K71 [DateTime.fromUnixTimestampMillis]
      217 GETTABLEKS                       R25 R1 K65 ["timestamp"]
      219 CALL                             R24 1 1
      220 LOADK                            R26 K72 ["h:mm:ss.SSS a"]
      221 LOADK                            R27 K73 ["en-us"]
      222 NAMECALL                         R24 R24 K74 ["FormatLocalTime"]
      224 CALL                             R24 3 1
      225 SETTABLEKS                       R24 R23 K65 ["timestamp"]
      227 GETTABLEKS                       R24 R1 K66 ["source"]
      229 SETTABLEKS                       R24 R23 K66 ["source"]
      231 NAMECALL                         R19 R19 K6 ["getText"]
      233 CALL                             R19 4 1
      234 SETTABLEKS                       R19 R18 K47 ["Text"]
      236 GETUPVAL                         R19 1
      237 GETTABLEKS                       R19 R19 K20 ["Change"]
      239 GETTABLEKS                       R19 R19 K21 ["AbsoluteSize"]
      241 NEWCLOSURE                       R20 P2
      242 CAPTURE                          VAL R0
      243 SETTABLE                         R20 R18 R19
      244 CALL                             R16 2 -1
      245 SETLIST                          R15 R16 -1 [1]
      247 CALL                             R12 3 1
      248 SETTABLEKS                       R12 R11 K41 ["SummaryInfo"]
      250 GETUPVAL                         R12 1
      251 GETTABLEKS                       R12 R12 K19 ["createElement"]
      253 GETUPVAL                         R13 7
      254 DUPTABLE                         R14 K75 [{"LayoutOrder"}]
      255 GETUPVAL                         R15 5
      256 CALL                             R15 0 1
      257 SETTABLEKS                       R15 R14 K46 ["LayoutOrder"]
      259 CALL                             R12 2 1
      260 SETTABLEKS                       R12 R11 K42 ["SummarySeparator"]
      262 GETUPVAL                         R12 1
      263 GETTABLEKS                       R12 R12 K19 ["createElement"]
      265 GETUPVAL                         R13 4
      266 DUPTABLE                         R14 K78 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "HeaderComponent", "HeaderComponentProps", "Expanded", "OnExpandedChanged"}]
      267 LOADK                            R15 K53 ["Section"]
      268 SETTABLEKS                       R15 R14 K45 ["Style"]
      270 GETUPVAL                         R15 5
      271 CALL                             R15 0 1
      272 SETTABLEKS                       R15 R14 K46 ["LayoutOrder"]
      274 GETIMPORT                        R15 K54 [UDim2.new]
      276 LOADN                            R16 1
      277 LOADN                            R17 0
      278 LOADN                            R18 0
      279 LOADN                            R19 32
      280 CALL                             R15 4 1
      281 SETTABLEKS                       R15 R14 K23 ["Size"]
      283 GETTABLEKS                       R15 R0 K0 ["props"]
      285 GETTABLEKS                       R15 R15 K3 ["Localization"]
      287 LOADK                            R17 K17 ["FlushDetails"]
      288 LOADK                            R18 K79 ["ConsumersTitle"]
      289 NAMECALL                         R15 R15 K6 ["getText"]
      291 CALL                             R15 3 1
      292 SETTABLEKS                       R15 R14 K47 ["Text"]
      294 LOADN                            R15 5
      295 SETTABLEKS                       R15 R14 K48 ["ContentPadding"]
      297 GETIMPORT                        R15 K57 [Enum.HorizontalAlignment.Left]
      299 SETTABLEKS                       R15 R14 K49 ["HorizontalAlignment"]
      301 GETUPVAL                         R15 8
      302 SETTABLEKS                       R15 R14 K76 ["HeaderComponent"]
      304 DUPTABLE                         R15 K84 [{"current", "total", "onPrev", "onNext"}]
      305 GETTABLEKS                       R16 R0 K9 ["state"]
      307 GETTABLEKS                       R16 R16 K10 ["listenerIndex"]
      309 SETTABLEKS                       R16 R15 K80 ["current"]
      311 GETTABLEKS                       R16 R2 K7 ["listenerCount"]
      313 SETTABLEKS                       R16 R15 K81 ["total"]
      315 GETTABLEKS                       R16 R0 K85 ["onPrevListener"]
      317 SETTABLEKS                       R16 R15 K82 ["onPrev"]
      319 GETTABLEKS                       R16 R0 K86 ["onNextListener"]
      321 SETTABLEKS                       R16 R15 K83 ["onNext"]
      323 SETTABLEKS                       R15 R14 K77 ["HeaderComponentProps"]
      325 GETTABLEKS                       R15 R0 K9 ["state"]
      327 GETTABLEKS                       R15 R15 K87 ["consumersExpanded"]
      329 SETTABLEKS                       R15 R14 K50 ["Expanded"]
      331 NEWCLOSURE                       R15 P3
      332 CAPTURE                          VAL R0
      333 SETTABLEKS                       R15 R14 K51 ["OnExpandedChanged"]
      335 DUPTABLE                         R15 K89 [{"StackLabel"}]
      336 GETUPVAL                         R16 1
      337 GETTABLEKS                       R16 R16 K19 ["createElement"]
      339 GETUPVAL                         R17 9
      340 DUPTABLE                         R18 K93 [{"MaxHeight", "TextXAlignment", "TextYAlignment", "Font", "Text"}]
      341 GETTABLEKS                       R20 R0 K9 ["state"]
      343 GETTABLEKS                       R20 R20 K94 ["pageHeight"]
      345 GETTABLEKS                       R21 R0 K9 ["state"]
      347 GETTABLEKS                       R21 R21 K95 ["summaryHeight"]
      349 SUB                              R19 R20 R21
      350 SETTABLEKS                       R19 R18 K90 ["MaxHeight"]
      352 GETIMPORT                        R19 K60 [Enum.TextXAlignment.Left]
      354 SETTABLEKS                       R19 R18 K59 ["TextXAlignment"]
      356 GETIMPORT                        R19 K97 [Enum.TextYAlignment.Top]
      358 SETTABLEKS                       R19 R18 K91 ["TextYAlignment"]
      360 GETIMPORT                        R19 K99 [Enum.Font.RobotoMono]
      362 SETTABLEKS                       R19 R18 K92 ["Font"]
      364 SETTABLEKS                       R3 R18 K47 ["Text"]
      366 CALL                             R16 2 1
      367 SETTABLEKS                       R16 R15 K88 ["StackLabel"]
      369 CALL                             R12 3 1
      370 SETTABLEKS                       R12 R11 K43 ["ConsumersInfo"]
      372 CALL                             R8 3 1
      373 SETTABLEKS                       R8 R7 K17 ["FlushDetails"]
      375 CALL                             R4 3 -1
      376 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K11 ["withContext"]
       36 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       38 GETTABLEKS                       R7 R4 K13 ["Localization"]
       40 GETTABLEKS                       R8 R3 K14 ["Style"]
       42 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       44 GETTABLEKS                       R9 R3 K16 ["UI"]
       46 GETTABLEKS                       R10 R9 K17 ["Pane"]
       48 GETTABLEKS                       R11 R9 K18 ["TextLabel"]
       50 GETTABLEKS                       R12 R9 K19 ["IconButton"]
       52 GETTABLEKS                       R13 R9 K20 ["ExpandablePane"]
       54 GETTABLEKS                       R14 R9 K21 ["Separator"]
       56 GETTABLEKS                       R15 R9 K22 ["ScrollingFrame"]
       58 GETIMPORT                        R16 K4 [require]
       60 GETIMPORT                        R17 K1 [script]
       62 GETTABLEKS                       R17 R17 K2 ["Parent"]
       64 GETTABLEKS                       R17 R17 K2 ["Parent"]
       66 GETTABLEKS                       R17 R17 K23 ["LongText"]
       68 CALL                             R16 1 1
       69 GETIMPORT                        R17 K4 [require]
       71 GETIMPORT                        R18 K1 [script]
       73 GETTABLEKS                       R18 R18 K2 ["Parent"]
       75 GETTABLEKS                       R18 R18 K2 ["Parent"]
       77 GETTABLEKS                       R18 R18 K2 ["Parent"]
       79 GETTABLEKS                       R18 R18 K24 ["Util"]
       81 GETTABLEKS                       R18 R18 K25 ["counter"]
       83 CALL                             R17 1 1
       84 CALL                             R17 0 1
       85 DUPCLOSURE                       R18 K26 [PROTO_0]
       86 DUPCLOSURE                       R19 K27 [PROTO_1]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R11
       90 GETTABLEKS                       R20 R2 K28 ["PureComponent"]
       92 LOADK                            R22 K29 ["FlushDetails"]
       93 NAMECALL                         R20 R20 K30 ["extend"]
       95 CALL                             R20 2 1
       96 DUPCLOSURE                       R21 K31 [PROTO_6]
       97 SETTABLEKS                       R21 R20 K32 ["init"]
       99 DUPCLOSURE                       R21 K33 [PROTO_7]
      100 SETTABLEKS                       R21 R20 K34 ["didUpdate"]
      102 DUPCLOSURE                       R21 K35 [PROTO_14]
      103 CAPTURE                          VAL R18
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R16
      113 SETTABLEKS                       R21 R20 K36 ["render"]
      115 MOVE                             R21 R5
      116 DUPTABLE                         R22 K37 [{"Analytics", "Localization", "Stylizer"}]
      117 SETTABLEKS                       R6 R22 K12 ["Analytics"]
      119 SETTABLEKS                       R7 R22 K13 ["Localization"]
      121 SETTABLEKS                       R8 R22 K15 ["Stylizer"]
      123 CALL                             R21 1 1
      124 MOVE                             R22 R20
      125 CALL                             R21 1 1
      126 MOVE                             R20 R21
      127 RETURN                           R20 1
