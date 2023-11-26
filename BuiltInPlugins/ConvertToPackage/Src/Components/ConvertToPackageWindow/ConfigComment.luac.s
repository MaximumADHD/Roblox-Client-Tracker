PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Title"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["TotalHeight"]
  GETTABLEKS R6 R1 K5 ["CommentOn"]
  GETTABLEKS R7 R1 K6 ["CommentEnabled"]
  GETTABLEKS R8 R1 K7 ["ToggleCallback"]
  GETTABLEKS R9 R2 K8 ["publishAsset"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  LOADK R11 K10 ["Frame"]
  DUPTABLE R12 K14 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R13 K17 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  MOVE R17 R5
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BorderSizePixel"]
  SETTABLEKS R4 R12 K3 ["LayoutOrder"]
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
  SETTABLEKS R3 R16 K38 ["Text"]
  GETIMPORT R17 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K39 ["TextXAlignment"]
  GETIMPORT R17 K47 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K40 ["TextYAlignment"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K48 ["FONT_SIZE_TITLE"]
  SETTABLEKS R17 R16 K41 ["TextSize"]
  GETTABLEKS R17 R9 K49 ["titleTextColor"]
  SETTABLEKS R17 R16 K42 ["TextColor3"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K50 ["FONT"]
  SETTABLEKS R17 R16 K43 ["Font"]
  LOADN R17 1
  SETTABLEKS R17 R16 K3 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K2 ["Title"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K54 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
  NOT R17 R7
  SETTABLEKS R17 R16 K51 ["Disabled"]
  LOADN R17 2
  SETTABLEKS R17 R16 K3 ["LayoutOrder"]
  SETTABLEKS R8 R16 K52 ["OnClick"]
  SETTABLEKS R6 R16 K53 ["Selected"]
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
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R2 R1 K3 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K6 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K7 ["Roact"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K8 ["ContextServices"]
  GETTABLEKS R6 R5 K9 ["withContext"]
  GETTABLEKS R8 R1 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K12 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K13 ["UI"]
  GETTABLEKS R10 R9 K14 ["ToggleButton"]
  GETTABLEKS R11 R4 K15 ["PureComponent"]
  LOADK R13 K16 ["ConfigComment"]
  NAMECALL R11 R11 K17 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K18 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K19 ["render"]
  MOVE R12 R6
  DUPTABLE R13 K21 [{"Stylizer"}]
  GETTABLEKS R14 R5 K20 ["Stylizer"]
  SETTABLEKS R14 R13 K20 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
