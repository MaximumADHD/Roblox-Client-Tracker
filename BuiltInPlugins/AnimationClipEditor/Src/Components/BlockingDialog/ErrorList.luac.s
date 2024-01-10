PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K4 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R4 K7 [UDim2.fromOffset]
  LOADN R5 0
  LOADN R6 5
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Size"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R2 K3 ["dialogTheme"]
  GETTABLEKS R5 R1 K4 ["ErrorList"]
  GETTABLEKS R6 R1 K5 ["ErrorKey"]
  NEWTABLE R7 0 0
  GETIMPORT R8 K7 [ipairs]
  MOVE R9 R5
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLEKS R13 R12 K8 ["Data"]
  LOADN R14 1
  JUMPIFNOTLT R14 R11 [+9]
  MOVE R15 R7
  NAMECALL R16 R0 K9 ["makeSeparator"]
  CALL R16 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K12 [table.insert]
  CALL R14 -1 0
  MOVE R15 R7
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K13 ["createElement"]
  LOADK R17 K14 ["TextLabel"]
  DUPTABLE R18 K26 [{"AutomaticSize", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTruncate", "RichText", "Text"}]
  GETIMPORT R19 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K15 ["AutomaticSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  GETTABLEKS R19 R4 K30 ["textSize"]
  SETTABLEKS R19 R18 K17 ["TextSize"]
  GETTABLEKS R19 R4 K31 ["textColor"]
  SETTABLEKS R19 R18 K18 ["TextColor3"]
  GETTABLEKS R19 R2 K32 ["font"]
  SETTABLEKS R19 R18 K19 ["Font"]
  GETIMPORT R19 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K20 ["TextXAlignment"]
  GETIMPORT R19 K36 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K21 ["TextYAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K22 ["TextWrapped"]
  GETIMPORT R19 K38 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K23 ["TextTruncate"]
  LOADB R19 1
  SETTABLEKS R19 R18 K24 ["RichText"]
  LOADK R20 K39 ["<b>"]
  MOVE R25 R6
  GETTABLEKS R26 R12 K40 ["ID"]
  DUPTABLE R27 K42 [{"entries"}]
  LOADK R28 K43 [""]
  SETTABLEKS R28 R27 K41 ["entries"]
  NAMECALL R23 R3 K44 ["getText"]
  CALL R23 4 1
  MOVE R21 R23
  LOADK R22 K45 ["</b>"]
  CONCAT R19 R20 R22
  SETTABLEKS R19 R18 K25 ["Text"]
  CALL R16 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K12 [table.insert]
  CALL R14 -1 0
  JUMPIFNOT R13 [+87]
  NEWTABLE R14 0 0
  GETIMPORT R15 K7 [ipairs]
  MOVE R16 R13
  CALL R15 1 3
  FORGPREP_INEXT R15
  GETTABLEKS R22 R19 K46 ["Name"]
  FASTCALL2 TABLE_INSERT R14 R22 [+4]
  MOVE R21 R14
  GETIMPORT R20 K12 [table.insert]
  CALL R20 2 0
  FORGLOOP R15 2 [inext] [-9]
  GETIMPORT R15 K48 [table.concat]
  MOVE R16 R14
  LOADK R17 K49 [", "]
  CALL R15 2 1
  MOVE R17 R7
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K13 ["createElement"]
  LOADK R19 K14 ["TextLabel"]
  DUPTABLE R20 K52 [{"Size", "Position", "AutomaticSize", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTruncate", "Text"}]
  GETIMPORT R21 K55 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 236
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K50 ["Size"]
  GETIMPORT R21 K55 [UDim2.new]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 20
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K51 ["Position"]
  GETIMPORT R21 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K15 ["AutomaticSize"]
  LOADN R21 1
  SETTABLEKS R21 R20 K16 ["BackgroundTransparency"]
  GETTABLEKS R21 R4 K30 ["textSize"]
  SETTABLEKS R21 R20 K17 ["TextSize"]
  GETTABLEKS R21 R4 K31 ["textColor"]
  SETTABLEKS R21 R20 K18 ["TextColor3"]
  GETTABLEKS R21 R2 K32 ["font"]
  SETTABLEKS R21 R20 K19 ["Font"]
  GETIMPORT R21 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K20 ["TextXAlignment"]
  GETIMPORT R21 K36 [Enum.TextYAlignment.Top]
  SETTABLEKS R21 R20 K21 ["TextYAlignment"]
  LOADB R21 1
  SETTABLEKS R21 R20 K22 ["TextWrapped"]
  GETIMPORT R21 K38 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R21 R20 K23 ["TextTruncate"]
  SETTABLEKS R15 R20 K25 ["Text"]
  CALL R18 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R16 K12 [table.insert]
  CALL R16 -1 0
  FORGLOOP R8 2 [inext] [-166]
  RETURN R7 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R2 K3 ["dialogTheme"]
  GETTABLEKS R5 R1 K4 ["HeaderKey"]
  GETTABLEKS R6 R1 K5 ["ErrorKey"]
  NAMECALL R7 R0 K6 ["makeErrorElements"]
  CALL R7 1 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["Frame"]
  DUPTABLE R10 K11 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K9 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K10 ["BackgroundTransparency"]
  DUPTABLE R11 K18 [{"Layout", "Header", "Body"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K19 ["UIListLayout"]
  DUPTABLE R14 K23 [{"SortOrder", "FillDirection", "Padding"}]
  GETIMPORT R15 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K20 ["SortOrder"]
  GETIMPORT R15 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K21 ["FillDirection"]
  GETIMPORT R15 K30 [UDim.new]
  LOADN R16 0
  LOADN R17 10
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["Padding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["Layout"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K8 ["Frame"]
  DUPTABLE R14 K31 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 21
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K10 ["BackgroundTransparency"]
  DUPTABLE R15 K34 [{"Icon", "Text"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K7 ["createElement"]
  LOADK R17 K35 ["ImageLabel"]
  DUPTABLE R18 K37 [{"Size", "BackgroundTransparency", "Image"}]
  GETIMPORT R19 K14 [UDim2.new]
  LOADN R20 0
  LOADN R21 21
  LOADN R22 0
  LOADN R23 21
  CALL R19 4 1
  SETTABLEKS R19 R18 K9 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K10 ["BackgroundTransparency"]
  GETTABLEKS R19 R4 K38 ["errorImage"]
  SETTABLEKS R19 R18 K36 ["Image"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["Icon"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K7 ["createElement"]
  LOADK R17 K39 ["TextLabel"]
  DUPTABLE R18 K45 [{"Size", "Position", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "Text"}]
  GETIMPORT R19 K14 [UDim2.new]
  LOADN R20 1
  LOADN R21 235
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K9 ["Size"]
  GETIMPORT R19 K14 [UDim2.new]
  LOADN R20 0
  LOADN R21 31
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K40 ["Position"]
  LOADN R19 1
  SETTABLEKS R19 R18 K10 ["BackgroundTransparency"]
  GETTABLEKS R19 R4 K46 ["textSize"]
  SETTABLEKS R19 R18 K41 ["TextSize"]
  GETTABLEKS R19 R4 K47 ["textColor"]
  SETTABLEKS R19 R18 K42 ["TextColor3"]
  GETTABLEKS R19 R4 K48 ["headerFont"]
  SETTABLEKS R19 R18 K43 ["Font"]
  GETIMPORT R19 K50 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K44 ["TextXAlignment"]
  MOVE R21 R6
  LOADK R22 K16 ["Header"]
  NAMECALL R19 R3 K51 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K33 ["Text"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["Text"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Header"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K52 [{"LayoutOrder", "Size"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 225
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Size"]
  MOVE R15 R7
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["Body"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["ScrollingFrame"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["withContext"]
  GETTABLEKS R8 R1 K16 ["PureComponent"]
  LOADK R10 K17 ["ErrorList"]
  NAMECALL R8 R8 K18 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K20 ["makeSeparator"]
  DUPCLOSURE R9 K21 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K22 ["makeErrorElements"]
  DUPCLOSURE R9 K23 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K24 ["render"]
  MOVE R9 R7
  DUPTABLE R10 K27 [{"Stylizer", "Localization"}]
  GETTABLEKS R11 R6 K25 ["Stylizer"]
  SETTABLEKS R11 R10 K25 ["Stylizer"]
  GETTABLEKS R11 R6 K26 ["Localization"]
  SETTABLEKS R11 R10 K26 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
