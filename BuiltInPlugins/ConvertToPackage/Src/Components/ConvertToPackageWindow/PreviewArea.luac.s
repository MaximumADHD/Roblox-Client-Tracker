PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["TotalWidth"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R2 K4 ["previewArea"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["Frame"]
  DUPTABLE R9 K12 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R10 K14 [UDim2.new]
  LOADN R11 0
  MOVE R12 R3
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  LOADN R10 0
  SETTABLEKS R10 R9 K9 ["BackgroundTransparency"]
  GETTABLEKS R10 R5 K15 ["backgroundColor"]
  SETTABLEKS R10 R9 K10 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K11 ["BorderSizePixel"]
  SETTABLEKS R4 R9 K3 ["LayoutOrder"]
  DUPTABLE R10 K19 [{"Padding", "UIListLayout", "AssetThumbnailPreview"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K20 ["UIPadding"]
  DUPTABLE R13 K25 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["PaddingTop"]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 5
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["PaddingBottom"]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 5
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["PaddingLeft"]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 5
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["PaddingRight"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["Padding"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K17 ["UIListLayout"]
  DUPTABLE R13 K32 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R14 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K28 ["FillDirection"]
  GETIMPORT R14 K37 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K29 ["HorizontalAlignment"]
  GETIMPORT R14 K39 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K30 ["VerticalAlignment"]
  GETIMPORT R14 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K31 ["SortOrder"]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["UIListLayout"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K42 [{"Size", "ShowTitle", "LayoutOrder"}]
  GETIMPORT R14 K14 [UDim2.new]
  LOADN R15 0
  LOADN R16 150
  LOADN R17 0
  LOADN R18 150
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  LOADB R14 0
  SETTABLEKS R14 R13 K41 ["ShowTitle"]
  NAMECALL R14 R6 K43 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K3 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["AssetThumbnailPreview"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K3 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Components"]
  GETTABLEKS R8 R9 K12 ["ConvertToPackageWindow"]
  GETTABLEKS R7 R8 K13 ["AssetThumbnailPreview"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K15 ["LayoutOrderIterator"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K16 ["PureComponent"]
  LOADK R11 K17 ["PreviewArea"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K20 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K22 [{"Stylizer"}]
  GETTABLEKS R12 R4 K21 ["Stylizer"]
  SETTABLEKS R12 R11 K21 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
