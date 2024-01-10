PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["ToggleCallback"]
  GETTABLEKS R3 R0 K2 ["CommentOn"]
  NOT R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K0 ["toggleCallback"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Title"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["TotalHeight"]
  GETTABLEKS R5 R1 K4 ["CommentOn"]
  GETTABLEKS R6 R1 K5 ["CommentEnabled"]
  GETTABLEKS R7 R1 K6 ["ToggleCallback"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K7 ["Stylizer"]
  GETTABLEKS R9 R8 K8 ["publishAsset"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  LOADK R11 K10 ["Frame"]
  DUPTABLE R12 K14 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R13 K17 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  MOVE R17 R4
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BorderSizePixel"]
  SETTABLEKS R3 R12 K2 ["LayoutOrder"]
  DUPTABLE R13 K20 [{"UIListLayout", "Title", "ToggleButton"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K18 ["UIListLayout"]
  DUPTABLE R16 K26 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R17 K29 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K21 ["FillDirection"]
  GETIMPORT R17 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K22 ["HorizontalAlignment"]
  GETIMPORT R17 K33 [Enum.VerticalAlignment.Top]
  SETTABLEKS R17 R16 K23 ["VerticalAlignment"]
  GETIMPORT R17 K34 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K24 ["SortOrder"]
  GETIMPORT R17 K36 [UDim.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["UIListLayout"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K37 ["TextLabel"]
  DUPTABLE R16 K44 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
  GETIMPORT R17 K17 [UDim2.new]
  LOADN R18 0
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K45 ["TITLE_GUTTER_WIDTH"]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K11 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K12 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K13 ["BorderSizePixel"]
  SETTABLEKS R2 R16 K38 ["Text"]
  GETIMPORT R17 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K39 ["TextXAlignment"]
  GETIMPORT R17 K47 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K40 ["TextYAlignment"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K48 ["FONT_SIZE_TITLE"]
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R9 K49 ["titleTextColor"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K50 ["FONT"]
  SETTABLEKS R17 R16 K43 ["Font"]
  LOADN R17 1
  SETTABLEKS R17 R16 K2 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K1 ["Title"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K54 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
  NOT R17 R6
  SETTABLEKS R17 R16 K51 ["Disabled"]
  LOADN R17 2
  SETTABLEKS R17 R16 K2 ["LayoutOrder"]
  GETTABLEKS R17 R0 K55 ["toggleCallback"]
  SETTABLEKS R17 R16 K52 ["OnClick"]
  SETTABLEKS R5 R16 K53 ["Selected"]
  GETIMPORT R17 K17 [UDim2.new]
  LOADN R18 0
  LOADN R19 40
  LOADN R20 0
  LOADN R21 24
  CALL R17 4 1
  SETTABLEKS R17 R16 K11 ["Size"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["ToggleButton"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K7 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R6 R0 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K12 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K13 ["AssetConfigConstants"]
  CALL R7 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R1 K7 ["Framework"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K14 ["UI"]
  GETTABLEKS R8 R9 K15 ["ToggleButton"]
  GETTABLEKS R9 R2 K16 ["PureComponent"]
  LOADK R11 K17 ["ConfigComment"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_1]
  SETTABLEKS R10 R9 K20 ["init"]
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K22 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K24 [{"Stylizer"}]
  GETTABLEKS R12 R3 K23 ["Stylizer"]
  SETTABLEKS R12 R11 K23 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
