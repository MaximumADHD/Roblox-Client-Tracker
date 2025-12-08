PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETTABLEKS R4 R1 K3 ["CellSize"]
  GETTABLEKS R5 R1 K4 ["CellPadding"]
  GETUPVAL R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Children"]
  GETTABLE R7 R1 R8
  CALL R6 1 1
  JUMPIFNOT R6 [+28]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["UIGridLayout"]
  DUPTABLE R9 K12 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "CellPadding", "CellSize"}]
  GETIMPORT R10 K15 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K8 ["FillDirection"]
  GETIMPORT R10 K17 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K9 ["HorizontalAlignment"]
  GETIMPORT R10 K19 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K10 ["VerticalAlignment"]
  GETIMPORT R10 K20 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K11 ["SortOrder"]
  SETTABLEKS R5 R9 K4 ["CellPadding"]
  SETTABLEKS R4 R9 K3 ["CellSize"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["UIGridLayout"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K21 [{"Size", "LayoutOrder"}]
  SETTABLEKS R3 R9 K2 ["Size"]
  SETTABLEKS R2 R9 K1 ["LayoutOrder"]
  DUPTABLE R10 K23 [{"ScrollingFrame"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K26 [{"LayoutOrder", "Size", "CanvasSize", "AutomaticCanvasSize"}]
  SETTABLEKS R2 R13 K1 ["LayoutOrder"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K2 ["Size"]
  GETIMPORT R14 K31 [UDim2.fromScale]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["CanvasSize"]
  GETIMPORT R14 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K25 ["AutomaticCanvasSize"]
  MOVE R14 R6
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["ScrollingFrame"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["UI"]
  GETTABLEKS R4 R3 K8 ["Pane"]
  GETTABLEKS R5 R3 K9 ["ScrollingFrame"]
  GETTABLEKS R6 R2 K10 ["Util"]
  GETTABLEKS R7 R6 K11 ["deepCopy"]
  GETTABLEKS R8 R6 K12 ["Typecheck"]
  GETTABLEKS R9 R1 K13 ["PureComponent"]
  LOADK R11 K14 ["ScrollableGrid"]
  NAMECALL R9 R9 K15 ["extend"]
  CALL R9 2 1
  GETTABLEKS R10 R8 K16 ["wrap"]
  MOVE R11 R9
  GETIMPORT R12 K1 [script]
  CALL R10 2 0
  DUPTABLE R10 K18 [{"LayoutOrder"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K17 ["LayoutOrder"]
  SETTABLEKS R10 R9 K19 ["defaultProps"]
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K21 ["render"]
  RETURN R9 1
