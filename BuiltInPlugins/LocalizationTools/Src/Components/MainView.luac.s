PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  DUPTABLE R4 K9 [{"Padding", "TextScraperSection", "CloudTableSection", "EmbeddedTableSection", "ImageLocalizationSection", "ExtendedBackground"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  LOADK R6 K11 ["UIPadding"]
  DUPTABLE R7 K16 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R8 K18 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K12 ["PaddingTop"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["PaddingTop"]
  GETIMPORT R8 K18 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K3 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["PaddingBottom"]
  GETIMPORT R8 K18 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K3 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["PaddingLeft"]
  GETIMPORT R8 K18 [UDim.new]
  LOADN R9 0
  GETTABLEKS R10 R2 K15 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["PaddingRight"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Padding"]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+12]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K20 [{"LayoutOrder"}]
  NAMECALL R8 R3 K21 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K4 ["TextScraperSection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K20 [{"LayoutOrder"}]
  NAMECALL R8 R3 K21 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["CloudTableSection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K20 [{"LayoutOrder"}]
  NAMECALL R8 R3 K21 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["EmbeddedTableSection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  GETUPVAL R6 6
  DUPTABLE R7 K20 [{"LayoutOrder"}]
  NAMECALL R8 R3 K21 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["ImageLocalizationSection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  LOADK R6 K22 ["Frame"]
  DUPTABLE R7 K26 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
  GETTABLEKS R8 R2 K27 ["MainBackground"]
  SETTABLEKS R8 R7 K23 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K24 ["BorderSizePixel"]
  NAMECALL R8 R3 K21 ["getNextOrder"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  GETIMPORT R8 K29 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R2 K30 ["EmptyFrameHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K25 ["Size"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["ExtendedBackground"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  LOADK R6 K22 ["Frame"]
  DUPTABLE R7 K33 [{"Size", "BackgroundTransparency", "Position"}]
  GETIMPORT R8 K29 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K25 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K31 ["BackgroundTransparency"]
  GETIMPORT R8 K29 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K32 ["Position"]
  DUPTABLE R8 K37 [{"MessageFrame", "ScrollingFrame", "ProgressSpinner"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 7
  CALL R9 1 1
  SETTABLEKS R9 R8 K34 ["MessageFrame"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  LOADK R10 K35 ["ScrollingFrame"]
  DUPTABLE R11 K44 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "CanvasSize", "ClipsDescendants", "ScrollBarImageTransparency", "ScrollBarImageColor3", "ScrollingDirection", "Size"}]
  GETTABLEKS R12 R2 K45 ["ScrollingFrameackground"]
  SETTABLEKS R12 R11 K23 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K31 ["BackgroundTransparency"]
  GETTABLEKS R12 R2 K46 ["ScrollBarBorderColor"]
  SETTABLEKS R12 R11 K38 ["BorderColor3"]
  LOADN R12 1
  SETTABLEKS R12 R11 K24 ["BorderSizePixel"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K47 ["ScrollingFrameCanvasHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K39 ["CanvasSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K40 ["ClipsDescendants"]
  LOADN R12 0
  SETTABLEKS R12 R11 K41 ["ScrollBarImageTransparency"]
  GETTABLEKS R12 R2 K48 ["ScrollBarColor"]
  SETTABLEKS R12 R11 K42 ["ScrollBarImageColor3"]
  GETIMPORT R12 K51 [Enum.ScrollingDirection.XY]
  SETTABLEKS R12 R11 K43 ["ScrollingDirection"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  GETTABLEKS R17 R2 K53 ["ScrollingFrameHeight"]
  SUBK R16 R17 K52 [1]
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["Size"]
  DUPTABLE R12 K55 [{"Container"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 8
  DUPTABLE R15 K60 [{"Style", "AutomaticSize", "HorizontalAlignment", "Layout"}]
  LOADK R16 K61 ["Box"]
  SETTABLEKS R16 R15 K56 ["Style"]
  GETIMPORT R16 K63 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K57 ["AutomaticSize"]
  GETIMPORT R16 K65 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K58 ["HorizontalAlignment"]
  GETIMPORT R16 K68 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K59 ["Layout"]
  MOVE R16 R4
  CALL R13 3 1
  SETTABLEKS R13 R12 K54 ["Container"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K35 ["ScrollingFrame"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 9
  CALL R9 1 1
  SETTABLEKS R9 R8 K36 ["ProgressSpinner"]
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
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K15 ["Components"]
  GETTABLEKS R14 R15 K21 ["TextScraperSection"]
  CALL R13 1 1
  GETIMPORT R14 K23 [game]
  LOADK R16 K24 ["LocalizationToolsUpdateTextScraperUI"]
  NAMECALL R14 R14 K25 ["GetFastFlag"]
  CALL R14 2 1
  GETTABLEKS R15 R1 K26 ["PureComponent"]
  LOADK R17 K27 ["MainView"]
  NAMECALL R15 R15 K28 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K29 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R16 R15 K30 ["render"]
  MOVE R16 R5
  DUPTABLE R17 K32 [{"Stylizer"}]
  GETTABLEKS R18 R3 K31 ["Stylizer"]
  SETTABLEKS R18 R17 K31 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
