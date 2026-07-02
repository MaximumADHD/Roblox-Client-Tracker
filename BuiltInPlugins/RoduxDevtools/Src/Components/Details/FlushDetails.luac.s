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
        4 DUPTABLE                         R3 K6 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1}]
        5 GETTABLEKS                       R4 R0 K2 ["Size"]
        7 SETTABLEKS                       R4 R3 K2 ["Size"]
        9 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       13 DUPTABLE                         R4 K11 [{"Layout", "Prev", "TextLabel", "Next"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 LOADK                            R6 K12 ["UIListLayout"]
       18 DUPTABLE                         R7 K18 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
       19 GETIMPORT                        R8 K20 [Enum.SortOrder.LayoutOrder]
       21 SETTABLEKS                       R8 R7 K13 ["SortOrder"]
       23 GETIMPORT                        R8 K22 [Enum.FillDirection.Horizontal]
       25 SETTABLEKS                       R8 R7 K14 ["FillDirection"]
       27 GETIMPORT                        R8 K24 [Enum.VerticalAlignment.Center]
       29 SETTABLEKS                       R8 R7 K15 ["VerticalAlignment"]
       31 GETIMPORT                        R8 K26 [Enum.HorizontalAlignment.Right]
       33 SETTABLEKS                       R8 R7 K16 ["HorizontalAlignment"]
       35 GETIMPORT                        R8 K29 [UDim.new]
       37 LOADN                            R9 0
       38 LOADN                            R10 8
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K17 ["Padding"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K7 ["Layout"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K0 ["createElement"]
       48 GETUPVAL                         R6 1
       49 DUPTABLE                         R7 K36 [{["LayoutOrder"] = 1, ["Size"], ["Disabled"], ["LeftIcon"] = "rbxasset://textures/DeveloperFramework/PageNavigation/button_control_previous.png", ["IconSize"] = 24, ["OnClick"]}]
       50 GETIMPORT                        R8 K39 [UDim2.fromOffset]
       52 LOADN                            R9 24
       53 LOADN                            R10 24
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K2 ["Size"]
       57 GETTABLEKS                       R9 R0 K40 ["current"]
       59 LOADN                            R10 1
       60 JUMPIFLE                         R9 R10 ; [+2]
       62 LOADB                            R8 0 +1
       63 LOADB                            R8 1
       64 SETTABLEKS                       R8 R7 K30 ["Disabled"]
       66 GETTABLEKS                       R8 R0 K41 ["onPrev"]
       68 SETTABLEKS                       R8 R7 K35 ["OnClick"]
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R4 K8 ["Prev"]
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R5 R5 K0 ["createElement"]
       76 GETUPVAL                         R6 2
       77 DUPTABLE                         R7 K45 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"], ["Text"]}]
       78 GETIMPORT                        R8 K47 [Enum.AutomaticSize.X]
       80 SETTABLEKS                       R8 R7 K43 ["AutomaticSize"]
       82 GETIMPORT                        R8 K48 [UDim2.new]
       84 LOADN                            R9 0
       85 LOADN                            R10 50
       86 LOADN                            R11 1
       87 LOADN                            R12 0
       88 CALL                             R8 4 1
       89 SETTABLEKS                       R8 R7 K2 ["Size"]
       91 LOADK                            R9 K49 ["%*/%*"]
       92 GETTABLEKS                       R12 R0 K40 ["current"]
       94 LOADN                            R13 0
       95 GETTABLEKS                       R14 R0 K50 ["total"]
       97 FASTCALL                         MATH_CLAMP ; [+2]
       98 GETIMPORT                        R11 K53 [math.clamp]
      100 CALL                             R11 3 1
      101 GETTABLEKS                       R12 R0 K50 ["total"]
      103 NAMECALL                         R9 R9 K54 ["format"]
      105 CALL                             R9 3 1
      106 MOVE                             R8 R9
      107 SETTABLEKS                       R8 R7 K44 ["Text"]
      109 CALL                             R5 2 1
      110 SETTABLEKS                       R5 R4 K9 ["TextLabel"]
      112 GETUPVAL                         R5 0
      113 GETTABLEKS                       R5 R5 K0 ["createElement"]
      115 GETUPVAL                         R6 1
      116 DUPTABLE                         R7 K57 [{["LayoutOrder"] = 3, ["Size"], ["Disabled"], ["LeftIcon"] = "rbxasset://textures/DeveloperFramework/PageNavigation/button_control_next.png", ["IconSize"] = 24, ["OnClick"]}]
      117 GETIMPORT                        R8 K39 [UDim2.fromOffset]
      119 LOADN                            R9 24
      120 LOADN                            R10 24
      121 CALL                             R8 2 1
      122 SETTABLEKS                       R8 R7 K2 ["Size"]
      124 GETTABLEKS                       R9 R0 K40 ["current"]
      126 GETTABLEKS                       R10 R0 K50 ["total"]
      128 JUMPIFLE                         R10 R9 ; [+2]
      130 LOADB                            R8 0 +1
      131 LOADB                            R8 1
      132 SETTABLEKS                       R8 R7 K30 ["Disabled"]
      134 GETTABLEKS                       R8 R0 K58 ["onNext"]
      136 SETTABLEKS                       R8 R7 K35 ["OnClick"]
      138 CALL                             R5 2 1
      139 SETTABLEKS                       R5 R4 K10 ["Next"]
      141 CALL                             R1 3 -1
      142 RETURN                           R1 -1

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
        0 DUPTABLE                         R3 K9 [{[1] = 1, ["summaryExpanded"] = True, ["consumersExpanded"] = True, ["pageHeight"] = 500, ["summaryHeight"] = 32}]
        1 NAMECALL                         R1 R0 K10 ["setState"]
        3 CALL                             R1 2 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K11 ["onPrevListener"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K12 ["onNextListener"]
       12 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Event"]
        4 GETTABLEKS                       R3 R1 K1 ["Event"]
        6 JUMPIFEQ                         R2 R3 ; [+5]
        8 DUPTABLE                         R4 K4 [{["listenerIndex"] = 1}]
        9 NAMECALL                         R2 R0 K5 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

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
      114 DUPTABLE                         R14 K54 [{["Style"] = "Section", ["LayoutOrder"], ["Size"], ["Text"], ["ContentPadding"] = 5, ["HorizontalAlignment"], ["Expanded"], ["OnExpandedChanged"]}]
      115 GETUPVAL                         R15 5
      116 CALL                             R15 0 1
      117 SETTABLEKS                       R15 R14 K47 ["LayoutOrder"]
      119 GETIMPORT                        R15 K55 [UDim2.new]
      121 LOADN                            R16 1
      122 LOADN                            R17 0
      123 LOADN                            R18 0
      124 LOADN                            R19 32
      125 CALL                             R15 4 1
      126 SETTABLEKS                       R15 R14 K23 ["Size"]
      128 GETTABLEKS                       R15 R0 K0 ["props"]
      130 GETTABLEKS                       R15 R15 K3 ["Localization"]
      132 LOADK                            R17 K17 ["FlushDetails"]
      133 LOADK                            R18 K56 ["SummaryTitle"]
      134 NAMECALL                         R15 R15 K6 ["getText"]
      136 CALL                             R15 3 1
      137 SETTABLEKS                       R15 R14 K48 ["Text"]
      139 GETIMPORT                        R15 K58 [Enum.HorizontalAlignment.Left]
      141 SETTABLEKS                       R15 R14 K51 ["HorizontalAlignment"]
      143 GETTABLEKS                       R15 R0 K9 ["state"]
      145 GETTABLEKS                       R15 R15 K59 ["summaryExpanded"]
      147 SETTABLEKS                       R15 R14 K52 ["Expanded"]
      149 NEWCLOSURE                       R15 P1
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R15 R14 K53 ["OnExpandedChanged"]
      153 NEWTABLE                         R15 0 1
      155 GETUPVAL                         R16 1
      156 GETTABLEKS                       R16 R16 K19 ["createElement"]
      158 GETUPVAL                         R17 6
      159 NEWTABLE                         R18 8 0
      161 GETIMPORT                        R19 K55 [UDim2.new]
      163 LOADN                            R20 1
      164 LOADN                            R21 0
      165 LOADN                            R22 0
      166 LOADN                            R23 0
      167 CALL                             R19 4 1
      168 SETTABLEKS                       R19 R18 K23 ["Size"]
      170 GETIMPORT                        R19 K34 [Enum.AutomaticSize.Y]
      172 SETTABLEKS                       R19 R18 K32 ["AutomaticSize"]
      174 GETIMPORT                        R19 K61 [Enum.TextXAlignment.Left]
      176 SETTABLEKS                       R19 R18 K60 ["TextXAlignment"]
      178 LOADB                            R19 1
      179 SETTABLEKS                       R19 R18 K62 ["TextWrapped"]
      181 GETTABLEKS                       R20 R1 K2 ["isStub"]
      183 JUMPIFNOT                        R20 ; [+10]
      184 GETTABLEKS                       R19 R0 K0 ["props"]
      186 GETTABLEKS                       R19 R19 K3 ["Localization"]
      188 LOADK                            R21 K4 ["Common"]
      189 LOADK                            R22 K5 ["LoadingStub"]
      190 NAMECALL                         R19 R19 K6 ["getText"]
      192 CALL                             R19 3 1
      193 JUMP                             ; [+34]
      194 GETTABLEKS                       R19 R0 K0 ["props"]
      196 GETTABLEKS                       R19 R19 K3 ["Localization"]
      198 LOADK                            R21 K17 ["FlushDetails"]
      199 LOADK                            R22 K63 ["Summary"]
      200 DUPTABLE                         R23 K68 [{"count", "elapsed", "timestamp", "source"}]
      201 GETTABLEKS                       R24 R2 K7 ["listenerCount"]
      203 SETTABLEKS                       R24 R23 K64 ["count"]
      205 GETTABLEKS                       R24 R2 K69 ["elapsedMs"]
      207 SETTABLEKS                       R24 R23 K65 ["elapsed"]
      209 GETIMPORT                        R24 K72 [DateTime.fromUnixTimestampMillis]
      211 GETTABLEKS                       R25 R1 K66 ["timestamp"]
      213 CALL                             R24 1 1
      214 LOADK                            R26 K73 ["h:mm:ss.SSS a"]
      215 LOADK                            R27 K74 ["en-us"]
      216 NAMECALL                         R24 R24 K75 ["FormatLocalTime"]
      218 CALL                             R24 3 1
      219 SETTABLEKS                       R24 R23 K66 ["timestamp"]
      221 GETTABLEKS                       R24 R1 K67 ["source"]
      223 SETTABLEKS                       R24 R23 K67 ["source"]
      225 NAMECALL                         R19 R19 K6 ["getText"]
      227 CALL                             R19 4 1
      228 SETTABLEKS                       R19 R18 K48 ["Text"]
      230 GETUPVAL                         R19 1
      231 GETTABLEKS                       R19 R19 K20 ["Change"]
      233 GETTABLEKS                       R19 R19 K21 ["AbsoluteSize"]
      235 NEWCLOSURE                       R20 P2
      236 CAPTURE                          VAL R0
      237 SETTABLE                         R20 R18 R19
      238 CALL                             R16 2 -1
      239 SETLIST                          R15 R16 -1 [1]
      241 CALL                             R12 3 1
      242 SETTABLEKS                       R12 R11 K41 ["SummaryInfo"]
      244 GETUPVAL                         R12 1
      245 GETTABLEKS                       R12 R12 K19 ["createElement"]
      247 GETUPVAL                         R13 7
      248 DUPTABLE                         R14 K76 [{"LayoutOrder"}]
      249 GETUPVAL                         R15 5
      250 CALL                             R15 0 1
      251 SETTABLEKS                       R15 R14 K47 ["LayoutOrder"]
      253 CALL                             R12 2 1
      254 SETTABLEKS                       R12 R11 K42 ["SummarySeparator"]
      256 GETUPVAL                         R12 1
      257 GETTABLEKS                       R12 R12 K19 ["createElement"]
      259 GETUPVAL                         R13 4
      260 DUPTABLE                         R14 K79 [{["Style"] = "Section", ["LayoutOrder"], ["Size"], ["Text"], ["ContentPadding"] = 5, ["HorizontalAlignment"], ["HeaderComponent"], ["HeaderComponentProps"], ["Expanded"], ["OnExpandedChanged"]}]
      261 GETUPVAL                         R15 5
      262 CALL                             R15 0 1
      263 SETTABLEKS                       R15 R14 K47 ["LayoutOrder"]
      265 GETIMPORT                        R15 K55 [UDim2.new]
      267 LOADN                            R16 1
      268 LOADN                            R17 0
      269 LOADN                            R18 0
      270 LOADN                            R19 32
      271 CALL                             R15 4 1
      272 SETTABLEKS                       R15 R14 K23 ["Size"]
      274 GETTABLEKS                       R15 R0 K0 ["props"]
      276 GETTABLEKS                       R15 R15 K3 ["Localization"]
      278 LOADK                            R17 K17 ["FlushDetails"]
      279 LOADK                            R18 K80 ["ConsumersTitle"]
      280 NAMECALL                         R15 R15 K6 ["getText"]
      282 CALL                             R15 3 1
      283 SETTABLEKS                       R15 R14 K48 ["Text"]
      285 GETIMPORT                        R15 K58 [Enum.HorizontalAlignment.Left]
      287 SETTABLEKS                       R15 R14 K51 ["HorizontalAlignment"]
      289 GETUPVAL                         R15 8
      290 SETTABLEKS                       R15 R14 K77 ["HeaderComponent"]
      292 DUPTABLE                         R15 K85 [{"current", "total", "onPrev", "onNext"}]
      293 GETTABLEKS                       R16 R0 K9 ["state"]
      295 GETTABLEKS                       R16 R16 K10 ["listenerIndex"]
      297 SETTABLEKS                       R16 R15 K81 ["current"]
      299 GETTABLEKS                       R16 R2 K7 ["listenerCount"]
      301 SETTABLEKS                       R16 R15 K82 ["total"]
      303 GETTABLEKS                       R16 R0 K86 ["onPrevListener"]
      305 SETTABLEKS                       R16 R15 K83 ["onPrev"]
      307 GETTABLEKS                       R16 R0 K87 ["onNextListener"]
      309 SETTABLEKS                       R16 R15 K84 ["onNext"]
      311 SETTABLEKS                       R15 R14 K78 ["HeaderComponentProps"]
      313 GETTABLEKS                       R15 R0 K9 ["state"]
      315 GETTABLEKS                       R15 R15 K88 ["consumersExpanded"]
      317 SETTABLEKS                       R15 R14 K52 ["Expanded"]
      319 NEWCLOSURE                       R15 P3
      320 CAPTURE                          VAL R0
      321 SETTABLEKS                       R15 R14 K53 ["OnExpandedChanged"]
      323 DUPTABLE                         R15 K90 [{"StackLabel"}]
      324 GETUPVAL                         R16 1
      325 GETTABLEKS                       R16 R16 K19 ["createElement"]
      327 GETUPVAL                         R17 9
      328 DUPTABLE                         R18 K94 [{"MaxHeight", "TextXAlignment", "TextYAlignment", "Font", "Text"}]
      329 GETTABLEKS                       R20 R0 K9 ["state"]
      331 GETTABLEKS                       R20 R20 K95 ["pageHeight"]
      333 GETTABLEKS                       R21 R0 K9 ["state"]
      335 GETTABLEKS                       R21 R21 K96 ["summaryHeight"]
      337 SUB                              R19 R20 R21
      338 SETTABLEKS                       R19 R18 K91 ["MaxHeight"]
      340 GETIMPORT                        R19 K61 [Enum.TextXAlignment.Left]
      342 SETTABLEKS                       R19 R18 K60 ["TextXAlignment"]
      344 GETIMPORT                        R19 K98 [Enum.TextYAlignment.Top]
      346 SETTABLEKS                       R19 R18 K92 ["TextYAlignment"]
      348 GETIMPORT                        R19 K100 [Enum.Font.RobotoMono]
      350 SETTABLEKS                       R19 R18 K93 ["Font"]
      352 SETTABLEKS                       R3 R18 K48 ["Text"]
      354 CALL                             R16 2 1
      355 SETTABLEKS                       R16 R15 K89 ["StackLabel"]
      357 CALL                             R12 3 1
      358 SETTABLEKS                       R12 R11 K43 ["ConsumersInfo"]
      360 CALL                             R8 3 1
      361 SETTABLEKS                       R8 R7 K17 ["FlushDetails"]
      363 CALL                             R4 3 -1
      364 RETURN                           R4 -1

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
