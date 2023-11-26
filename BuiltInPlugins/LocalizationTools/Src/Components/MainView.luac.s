PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  DUPTABLE R4 K8 [{"Padding", "CloudTableSection", "EmbeddedTableSection", "ImageLocalizationSection", "ExtendedBackground"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  LOADK R6 K10 ["UIPadding"]
  DUPTABLE R7 K15 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R8 K17 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K11 ["PaddingTop"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["PaddingTop"]
  GETIMPORT R8 K17 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K3 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["PaddingBottom"]
  GETIMPORT R8 K17 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K3 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["PaddingLeft"]
  GETIMPORT R8 K17 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K14 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["PaddingRight"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Padding"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K19 [{"LayoutOrder"}]
  NAMECALL R8 R3 K20 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["CloudTableSection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K19 [{"LayoutOrder"}]
  NAMECALL R8 R3 K20 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["EmbeddedTableSection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K19 [{"LayoutOrder"}]
  NAMECALL R8 R3 K20 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["ImageLocalizationSection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  LOADK R6 K21 ["Frame"]
  DUPTABLE R7 K25 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
  GETTABLEKS R8 R2 K26 ["MainBackground"]
  SETTABLEKS R8 R7 K22 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K23 ["BorderSizePixel"]
  NAMECALL R8 R3 K20 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K18 ["LayoutOrder"]
  GETIMPORT R8 K28 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R2 K29 ["EmptyFrameHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K24 ["Size"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["ExtendedBackground"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  LOADK R6 K21 ["Frame"]
  DUPTABLE R7 K32 [{"Size", "BackgroundTransparency", "Position"}]
  GETIMPORT R8 K28 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K24 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K30 ["BackgroundTransparency"]
  GETIMPORT R8 K28 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K31 ["Position"]
  DUPTABLE R8 K36 [{"MessageFrame", "ScrollingFrame", "ProgressSpinner"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 5
  CALL R9 1 1
  SETTABLEKS R9 R8 K33 ["MessageFrame"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K34 ["ScrollingFrame"]
  DUPTABLE R11 K43 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "CanvasSize", "ClipsDescendants", "ScrollBarImageTransparency", "ScrollBarImageColor3", "ScrollingDirection", "Size"}]
  GETTABLEKS R12 R2 K44 ["ScrollingFrameackground"]
  SETTABLEKS R12 R11 K22 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K30 ["BackgroundTransparency"]
  GETTABLEKS R12 R2 K45 ["ScrollBarBorderColor"]
  SETTABLEKS R12 R11 K37 ["BorderColor3"]
  LOADN R12 1
  SETTABLEKS R12 R11 K23 ["BorderSizePixel"]
  GETIMPORT R12 K28 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K46 ["ScrollingFrameCanvasHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K38 ["CanvasSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K39 ["ClipsDescendants"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["ScrollBarImageTransparency"]
  GETTABLEKS R12 R2 K47 ["ScrollBarColor"]
  SETTABLEKS R12 R11 K41 ["ScrollBarImageColor3"]
  GETIMPORT R12 K50 [Enum.ScrollingDirection.XY]
  SETTABLEKS R12 R11 K42 ["ScrollingDirection"]
  GETIMPORT R12 K28 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  GETTABLEKS R17 R2 K52 ["ScrollingFrameHeight"]
  SUBK R16 R17 K51 [1]
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["Size"]
  DUPTABLE R12 K54 [{"Container"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K59 [{"Style", "AutomaticSize", "HorizontalAlignment", "Layout"}]
  LOADK R16 K60 ["Box"]
  SETTABLEKS R16 R15 K55 ["Style"]
  GETIMPORT R16 K62 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K56 ["AutomaticSize"]
  GETIMPORT R16 K64 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K57 ["HorizontalAlignment"]
  GETIMPORT R16 K67 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K58 ["Layout"]
  MOVE R16 R4
  CALL R13 3 1
  SETTABLEKS R13 R12 K53 ["Container"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K34 ["ScrollingFrame"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 7
  CALL R9 1 1
  SETTABLEKS R9 R8 K35 ["ProgressSpinner"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R5 R2 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["LayoutOrderIterator"]
  GETTABLEKS R5 R3 K11 ["withContext"]
  GETTABLEKS R6 R2 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Pane"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K16 ["ProgressSpinner"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K17 ["MessageFrame"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K15 ["Components"]
  GETTABLEKS R11 R12 K18 ["CloudTableSection"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K15 ["Components"]
  GETTABLEKS R12 R13 K19 ["EmbeddedTableSection"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K14 ["Src"]
  GETTABLEKS R14 R15 K15 ["Components"]
  GETTABLEKS R13 R14 K20 ["ImageLocalizationSection"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K21 ["PureComponent"]
  LOADK R15 K22 ["MainView"]
  NAMECALL R13 R13 K23 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K24 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K25 ["render"]
  MOVE R14 R5
  DUPTABLE R15 K27 [{"Stylizer"}]
  GETTABLEKS R16 R3 K26 ["Stylizer"]
  SETTABLEKS R16 R15 K26 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
