PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  DUPTABLE R5 K7 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R6 K10 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R10 R2 K11 ["HeightPx"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K4 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K5 ["BackgroundTransparency"]
  GETTABLEKS R6 R1 K6 ["LayoutOrder"]
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  DUPTABLE R6 K15 [{"Layout", "KeyTextLabel", "ValueTextLabel"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K16 ["UIListLayout"]
  DUPTABLE R9 K21 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R10 K24 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K17 ["FillDirection"]
  GETIMPORT R10 K26 [UDim.new]
  LOADN R11 0
  GETTABLEKS R12 R2 K27 ["PaddingPx"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Padding"]
  GETIMPORT R10 K28 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K19 ["SortOrder"]
  GETIMPORT R10 K30 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K20 ["VerticalAlignment"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Layout"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K34 [{"Text", "Size", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  GETTABLEKS R11 R1 K35 ["Label"]
  LOADK R12 K36 [":"]
  CONCAT R10 R11 R12
  SETTABLEKS R10 R9 K31 ["Text"]
  GETIMPORT R10 K10 [UDim2.new]
  LOADN R11 0
  GETTABLEKS R12 R2 K37 ["KeyWidthPx"]
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K4 ["Size"]
  GETIMPORT R10 K39 [Enum.TextXAlignment.Right]
  SETTABLEKS R10 R9 K32 ["TextXAlignment"]
  GETIMPORT R10 K40 [Enum.TextYAlignment.Center]
  SETTABLEKS R10 R9 K33 ["TextYAlignment"]
  LOADN R10 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["KeyTextLabel"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K34 [{"Text", "Size", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  GETTABLEKS R10 R1 K41 ["Value"]
  SETTABLEKS R10 R9 K31 ["Text"]
  GETIMPORT R10 K10 [UDim2.new]
  LOADN R11 1
  GETTABLEKS R13 R2 K37 ["KeyWidthPx"]
  MINUS R12 R13
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K4 ["Size"]
  GETIMPORT R10 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K32 ["TextXAlignment"]
  GETIMPORT R10 K40 [Enum.TextYAlignment.Center]
  SETTABLEKS R10 R9 K33 ["TextYAlignment"]
  LOADN R10 2
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["ValueTextLabel"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["TextLabel"]
  GETTABLEKS R6 R1 K11 ["PureComponent"]
  LOADK R8 K12 ["UIKeyValueTextLabel"]
  NAMECALL R6 R6 K13 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K15 ["render"]
  GETTABLEKS R7 R3 K16 ["withContext"]
  DUPTABLE R8 K19 [{"Stylizer", "Localization"}]
  GETTABLEKS R9 R3 K17 ["Stylizer"]
  SETTABLEKS R9 R8 K17 ["Stylizer"]
  GETTABLEKS R9 R3 K18 ["Localization"]
  SETTABLEKS R9 R8 K18 ["Localization"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
