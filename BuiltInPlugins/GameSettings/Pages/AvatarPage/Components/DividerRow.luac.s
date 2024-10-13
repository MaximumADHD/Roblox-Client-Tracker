PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K2 ["Frame"]
  DUPTABLE R4 K7 [{"LayoutOrder", "Size", "BorderSizePixel", "BackgroundTransparency"}]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  GETIMPORT R5 K9 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 2
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  LOADN R5 0
  SETTABLEKS R5 R4 K5 ["BorderSizePixel"]
  LOADN R5 1
  SETTABLEKS R5 R4 K6 ["BackgroundTransparency"]
  DUPTABLE R5 K12 [{"UIListLayoutHorizontal", "DividerFrame"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K13 ["UIListLayout"]
  DUPTABLE R8 K18 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection"}]
  GETIMPORT R9 K20 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K14 ["SortOrder"]
  GETIMPORT R9 K22 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K15 ["HorizontalAlignment"]
  GETIMPORT R9 K24 [Enum.VerticalAlignment.Center]
  SETTABLEKS R9 R8 K16 ["VerticalAlignment"]
  GETIMPORT R9 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K17 ["FillDirection"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["UIListLayoutHorizontal"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K2 ["Frame"]
  DUPTABLE R8 K28 [{"Size", "LayoutOrder", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R9 K9 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Size"]
  NAMECALL R9 R1 K29 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  LOADN R9 0
  SETTABLEKS R9 R8 K5 ["BorderSizePixel"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K30 ["getDividerColor"]
  MOVE R10 R0
  CALL R9 1 1
  SETTABLEKS R9 R8 K27 ["BackgroundColor3"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["DividerFrame"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R1 K5 ["Packages"]
  GETTABLEKS R5 R6 K7 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["Util"]
  GETTABLEKS R4 R3 K9 ["LayoutOrderIterator"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K8 ["Util"]
  GETTABLEKS R6 R7 K10 ["StateInterfaceTheme"]
  CALL R5 1 1
  DUPCLOSURE R6 K11 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R6 1
