PROTO_0:
  GETIMPORT R1 K2 [string.split]
  MOVE R2 R0
  LOADK R3 K3 ["
"]
  CALL R1 2 1
  NEWTABLE R2 0 0
  GETTABLEN R3 R1 1
  LOADN R4 0
  MOVE R5 R1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFNOTEQ R3 R9 [+3]
  ADDK R4 R4 K4 [1]
  JUMP [+19]
  MOVE R13 R3
  LOADN R15 1
  JUMPIFNOTLT R15 R4 [+6]
  LOADK R15 K5 [" (x"]
  MOVE R16 R4
  LOADK R17 K6 [")"]
  CONCAT R14 R15 R17
  JUMP [+1]
  LOADK R14 K7 [""]
  CONCAT R12 R13 R14
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K10 [table.insert]
  CALL R10 2 0
  MOVE R3 R9
  LOADN R4 1
  FORGLOOP R5 2 [-24]
  MOVE R8 R3
  LOADN R10 1
  JUMPIFNOTLT R10 R4 [+6]
  LOADK R10 K5 [" (x"]
  MOVE R11 R4
  LOADK R12 K6 [")"]
  CONCAT R9 R10 R12
  JUMP [+1]
  LOADK R9 K7 [""]
  CONCAT R7 R8 R9
  FASTCALL2 TABLE_INSERT R2 R7 [+4]
  MOVE R6 R2
  GETIMPORT R5 K10 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K12 [table.concat]
  MOVE R6 R2
  LOADK R7 K3 ["
"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
  GETTABLEKS R4 R0 K2 ["Size"]
  SETTABLEKS R4 R3 K2 ["Size"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  DUPTABLE R4 K10 [{"Layout", "Prev", "TextLabel", "Next"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K11 ["UIListLayout"]
  DUPTABLE R7 K17 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
  GETIMPORT R8 K19 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K12 ["SortOrder"]
  GETIMPORT R8 K21 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K13 ["FillDirection"]
  GETIMPORT R8 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K14 ["VerticalAlignment"]
  GETIMPORT R8 K25 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R8 R7 K15 ["HorizontalAlignment"]
  GETIMPORT R8 K28 [UDim.new]
  LOADN R9 0
  LOADN R10 8
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["Padding"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Layout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K33 [{"LayoutOrder", "Size", "Disabled", "LeftIcon", "IconSize", "OnClick"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K36 [UDim2.fromOffset]
  LOADN R9 24
  LOADN R10 24
  CALL R8 2 1
  SETTABLEKS R8 R7 K2 ["Size"]
  GETTABLEKS R9 R0 K37 ["current"]
  LOADN R10 1
  JUMPIFLE R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["Disabled"]
  LOADK R8 K38 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_previous.png"]
  SETTABLEKS R8 R7 K30 ["LeftIcon"]
  LOADN R8 24
  SETTABLEKS R8 R7 K31 ["IconSize"]
  GETTABLEKS R8 R0 K39 ["onPrev"]
  SETTABLEKS R8 R7 K32 ["OnClick"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Prev"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K42 [{"LayoutOrder", "AutomaticSize", "Size", "Text"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K44 [Enum.AutomaticSize.X]
  SETTABLEKS R8 R7 K40 ["AutomaticSize"]
  GETIMPORT R8 K45 [UDim2.new]
  LOADN R9 0
  LOADN R10 50
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["Size"]
  LOADK R9 K46 ["%*/%*"]
  GETTABLEKS R12 R0 K37 ["current"]
  LOADN R13 0
  GETTABLEKS R14 R0 K47 ["total"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K50 [math.clamp]
  CALL R11 3 1
  GETTABLEKS R12 R0 K47 ["total"]
  NAMECALL R9 R9 K51 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K41 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["TextLabel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K33 [{"LayoutOrder", "Size", "Disabled", "LeftIcon", "IconSize", "OnClick"}]
  LOADN R8 3
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETIMPORT R8 K36 [UDim2.fromOffset]
  LOADN R9 24
  LOADN R10 24
  CALL R8 2 1
  SETTABLEKS R8 R7 K2 ["Size"]
  GETTABLEKS R9 R0 K37 ["current"]
  GETTABLEKS R10 R0 K47 ["total"]
  JUMPIFLE R10 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["Disabled"]
  LOADK R8 K52 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_next.png"]
  SETTABLEKS R8 R7 K30 ["LeftIcon"]
  LOADN R8 24
  SETTABLEKS R8 R7 K31 ["IconSize"]
  GETTABLEKS R8 R0 K53 ["onNext"]
  SETTABLEKS R8 R7 K32 ["OnClick"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Next"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  DUPTABLE R1 K1 [{"listenerIndex"}]
  GETTABLEKS R4 R0 K0 ["listenerIndex"]
  SUBK R3 R4 K2 [1]
  LOADN R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["props"]
  GETTABLEKS R5 R6 K4 ["listenerCount"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K7 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["listenerIndex"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Event"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"listenerIndex"}]
  GETTABLEKS R4 R0 K0 ["listenerIndex"]
  ADDK R3 R4 K2 [1]
  LOADN R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["props"]
  GETTABLEKS R5 R6 K4 ["listenerCount"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K7 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["listenerIndex"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Event"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R3 K5 [{"listenerIndex", "summaryExpanded", "consumersExpanded", "pageHeight", "summaryHeight"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K0 ["listenerIndex"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["summaryExpanded"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["consumersExpanded"]
  LOADN R4 244
  SETTABLEKS R4 R3 K3 ["pageHeight"]
  LOADN R4 32
  SETTABLEKS R4 R3 K4 ["summaryHeight"]
  NAMECALL R1 R0 K6 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onPrevListener"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onNextListener"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Event"]
  GETTABLEKS R3 R1 K1 ["Event"]
  JUMPIFEQ R2 R3 [+8]
  DUPTABLE R4 K3 [{"listenerIndex"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K2 ["listenerIndex"]
  NAMECALL R2 R0 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"pageHeight"}]
  GETTABLEKS R5 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K3 ["Y"]
  SETTABLEKS R4 R3 K0 ["pageHeight"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K2 [{"summaryExpanded", "summaryHeight"}]
  GETTABLEKS R3 R0 K0 ["summaryExpanded"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["summaryExpanded"]
  GETTABLEKS R3 R0 K0 ["summaryExpanded"]
  JUMPIFNOT R3 [+2]
  LOADN R2 85
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["summaryHeight"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_9]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"summaryHeight"}]
  GETTABLEKS R7 R0 K3 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K4 ["Y"]
  GETTABLEKS R8 R0 K5 ["AbsolutePosition"]
  GETTABLEKS R7 R8 K4 ["Y"]
  ADD R5 R6 R7
  ADDK R4 R5 K2 [15]
  SETTABLEKS R4 R3 K0 ["summaryHeight"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K1 [{"consumersExpanded"}]
  GETTABLEKS R3 R0 K0 ["consumersExpanded"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["consumersExpanded"]
  RETURN R1 1

PROTO_13:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_12]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Event"]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K0 ["props"]
  LOADNIL R3
  GETTABLEKS R4 R1 K2 ["isStub"]
  JUMPIFNOT R4 [+14]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["Localization"]
  LOADK R6 K4 ["Common"]
  LOADK R7 K5 ["LoadingStub"]
  NAMECALL R4 R4 K6 ["getText"]
  CALL R4 3 1
  MOVE R3 R4
  LOADN R4 0
  SETTABLEKS R4 R2 K7 ["listenerCount"]
  JUMP [+40]
  GETTABLEKS R5 R2 K8 ["listeners"]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R2 K8 ["listeners"]
  GETTABLEKS R7 R0 K9 ["state"]
  GETTABLEKS R6 R7 K10 ["listenerIndex"]
  GETTABLE R4 R5 R6
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOT R4 [+17]
  GETTABLEKS R5 R4 K11 ["connectTraceback"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 0
  GETTABLEKS R6 R4 K11 ["connectTraceback"]
  CALL R5 1 1
  MOVE R3 R5
  JUMP [+18]
  GETIMPORT R5 K14 [debug.info]
  GETTABLEKS R6 R4 K15 ["callback"]
  LOADK R7 K16 ["snl"]
  CALL R5 2 1
  MOVE R3 R5
  JUMP [+10]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["Localization"]
  LOADK R7 K17 ["FlushDetails"]
  LOADK R8 K18 ["NoTraceback"]
  NAMECALL R5 R5 K6 ["getText"]
  CALL R5 3 1
  MOVE R3 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K19 ["createElement"]
  GETUPVAL R5 2
  NEWTABLE R6 1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K20 ["Change"]
  GETTABLEKS R7 R8 K21 ["AbsoluteSize"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  SETTABLE R8 R6 R7
  DUPTABLE R7 K22 [{"FlushDetails"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K19 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K27 [{"Size", "AutomaticCanvasSize", "Layout", "Spacing"}]
  GETIMPORT R11 K30 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["Size"]
  GETIMPORT R11 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K24 ["AutomaticCanvasSize"]
  GETIMPORT R11 K37 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K25 ["Layout"]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["Spacing"]
  DUPTABLE R11 K44 [{"SummaryInfo", "SummarySeparator", "ConsumersInfo"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K52 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged"}]
  LOADK R15 K53 ["Section"]
  SETTABLEKS R15 R14 K45 ["Style"]
  GETUPVAL R15 5
  CALL R15 0 1
  SETTABLEKS R15 R14 K46 ["LayoutOrder"]
  GETIMPORT R15 K54 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 32
  CALL R15 4 1
  SETTABLEKS R15 R14 K23 ["Size"]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K3 ["Localization"]
  LOADK R17 K17 ["FlushDetails"]
  LOADK R18 K55 ["SummaryTitle"]
  NAMECALL R15 R15 K6 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K47 ["Text"]
  LOADN R15 5
  SETTABLEKS R15 R14 K48 ["ContentPadding"]
  GETIMPORT R15 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K49 ["HorizontalAlignment"]
  GETTABLEKS R16 R0 K9 ["state"]
  GETTABLEKS R15 R16 K58 ["summaryExpanded"]
  SETTABLEKS R15 R14 K50 ["Expanded"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K51 ["OnExpandedChanged"]
  NEWTABLE R15 0 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 6
  NEWTABLE R18 8 0
  GETIMPORT R19 K54 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K23 ["Size"]
  GETIMPORT R19 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K32 ["AutomaticSize"]
  GETIMPORT R19 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K59 ["TextXAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K61 ["TextWrapped"]
  GETTABLEKS R20 R1 K2 ["isStub"]
  JUMPIFNOT R20 [+10]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K3 ["Localization"]
  LOADK R21 K4 ["Common"]
  LOADK R22 K5 ["LoadingStub"]
  NAMECALL R19 R19 K6 ["getText"]
  CALL R19 3 1
  JUMP [+34]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K3 ["Localization"]
  LOADK R21 K17 ["FlushDetails"]
  LOADK R22 K62 ["Summary"]
  DUPTABLE R23 K67 [{"count", "elapsed", "timestamp", "source"}]
  GETTABLEKS R24 R2 K7 ["listenerCount"]
  SETTABLEKS R24 R23 K63 ["count"]
  GETTABLEKS R24 R2 K68 ["elapsedMs"]
  SETTABLEKS R24 R23 K64 ["elapsed"]
  GETIMPORT R24 K71 [DateTime.fromUnixTimestampMillis]
  GETTABLEKS R25 R1 K65 ["timestamp"]
  CALL R24 1 1
  LOADK R26 K72 ["h:mm:ss.SSS a"]
  LOADK R27 K73 ["en-us"]
  NAMECALL R24 R24 K74 ["FormatLocalTime"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K65 ["timestamp"]
  GETTABLEKS R24 R1 K66 ["source"]
  SETTABLEKS R24 R23 K66 ["source"]
  NAMECALL R19 R19 K6 ["getText"]
  CALL R19 4 1
  SETTABLEKS R19 R18 K47 ["Text"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K20 ["Change"]
  GETTABLEKS R19 R20 K21 ["AbsoluteSize"]
  NEWCLOSURE R20 P2
  CAPTURE VAL R0
  SETTABLE R20 R18 R19
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  SETTABLEKS R12 R11 K41 ["SummaryInfo"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K75 [{"LayoutOrder"}]
  GETUPVAL R15 5
  CALL R15 0 1
  SETTABLEKS R15 R14 K46 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["SummarySeparator"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K78 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "HeaderComponent", "HeaderComponentProps", "Expanded", "OnExpandedChanged"}]
  LOADK R15 K53 ["Section"]
  SETTABLEKS R15 R14 K45 ["Style"]
  GETUPVAL R15 5
  CALL R15 0 1
  SETTABLEKS R15 R14 K46 ["LayoutOrder"]
  GETIMPORT R15 K54 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 32
  CALL R15 4 1
  SETTABLEKS R15 R14 K23 ["Size"]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K3 ["Localization"]
  LOADK R17 K17 ["FlushDetails"]
  LOADK R18 K79 ["ConsumersTitle"]
  NAMECALL R15 R15 K6 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K47 ["Text"]
  LOADN R15 5
  SETTABLEKS R15 R14 K48 ["ContentPadding"]
  GETIMPORT R15 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K49 ["HorizontalAlignment"]
  GETUPVAL R15 8
  SETTABLEKS R15 R14 K76 ["HeaderComponent"]
  DUPTABLE R15 K84 [{"current", "total", "onPrev", "onNext"}]
  GETTABLEKS R17 R0 K9 ["state"]
  GETTABLEKS R16 R17 K10 ["listenerIndex"]
  SETTABLEKS R16 R15 K80 ["current"]
  GETTABLEKS R16 R2 K7 ["listenerCount"]
  SETTABLEKS R16 R15 K81 ["total"]
  GETTABLEKS R16 R0 K85 ["onPrevListener"]
  SETTABLEKS R16 R15 K82 ["onPrev"]
  GETTABLEKS R16 R0 K86 ["onNextListener"]
  SETTABLEKS R16 R15 K83 ["onNext"]
  SETTABLEKS R15 R14 K77 ["HeaderComponentProps"]
  GETTABLEKS R16 R0 K9 ["state"]
  GETTABLEKS R15 R16 K87 ["consumersExpanded"]
  SETTABLEKS R15 R14 K50 ["Expanded"]
  NEWCLOSURE R15 P3
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K51 ["OnExpandedChanged"]
  DUPTABLE R15 K89 [{"StackLabel"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K93 [{"MaxHeight", "TextXAlignment", "TextYAlignment", "Font", "Text"}]
  GETTABLEKS R21 R0 K9 ["state"]
  GETTABLEKS R20 R21 K94 ["pageHeight"]
  GETTABLEKS R22 R0 K9 ["state"]
  GETTABLEKS R21 R22 K95 ["summaryHeight"]
  SUB R19 R20 R21
  SETTABLEKS R19 R18 K90 ["MaxHeight"]
  GETIMPORT R19 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K59 ["TextXAlignment"]
  GETIMPORT R19 K97 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K91 ["TextYAlignment"]
  GETIMPORT R19 K99 [Enum.Font.RobotoMono]
  SETTABLEKS R19 R18 K92 ["Font"]
  SETTABLEKS R3 R18 K47 ["Text"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K88 ["StackLabel"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K43 ["ConsumersInfo"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["FlushDetails"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R9 R3 K14 ["Style"]
  GETTABLEKS R8 R9 K15 ["Stylizer"]
  GETTABLEKS R9 R3 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["Pane"]
  GETTABLEKS R11 R9 K18 ["TextLabel"]
  GETTABLEKS R12 R9 K19 ["IconButton"]
  GETTABLEKS R13 R9 K20 ["ExpandablePane"]
  GETTABLEKS R14 R9 K21 ["Separator"]
  GETTABLEKS R15 R9 K22 ["ScrollingFrame"]
  GETIMPORT R16 K4 [require]
  GETIMPORT R20 K1 [script]
  GETTABLEKS R19 R20 K2 ["Parent"]
  GETTABLEKS R18 R19 K2 ["Parent"]
  GETTABLEKS R17 R18 K23 ["LongText"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETIMPORT R23 K1 [script]
  GETTABLEKS R22 R23 K2 ["Parent"]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETTABLEKS R20 R21 K2 ["Parent"]
  GETTABLEKS R19 R20 K24 ["Util"]
  GETTABLEKS R18 R19 K25 ["counter"]
  CALL R17 1 1
  CALL R17 0 1
  DUPCLOSURE R18 K26 [PROTO_0]
  DUPCLOSURE R19 K27 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R11
  GETTABLEKS R20 R2 K28 ["PureComponent"]
  LOADK R22 K29 ["FlushDetails"]
  NAMECALL R20 R20 K30 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K31 [PROTO_6]
  SETTABLEKS R21 R20 K32 ["init"]
  DUPCLOSURE R21 K33 [PROTO_7]
  SETTABLEKS R21 R20 K34 ["didUpdate"]
  DUPCLOSURE R21 K35 [PROTO_14]
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R16
  SETTABLEKS R21 R20 K36 ["render"]
  MOVE R21 R5
  DUPTABLE R22 K37 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R6 R22 K12 ["Analytics"]
  SETTABLEKS R7 R22 K13 ["Localization"]
  SETTABLEKS R8 R22 K15 ["Stylizer"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  RETURN R20 1
