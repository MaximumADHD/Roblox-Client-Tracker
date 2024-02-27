PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"Size", "HorizontalAlignment", "AutomaticSize", "Layout", "VerticalAlignment", "LayoutOrder", "Spacing"}]
  GETIMPORT R4 K11 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 16
  CALL R4 4 1
  SETTABLEKS R4 R3 K1 ["Size"]
  GETIMPORT R4 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R4 R3 K2 ["HorizontalAlignment"]
  GETIMPORT R4 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R4 R3 K3 ["AutomaticSize"]
  GETIMPORT R4 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K4 ["Layout"]
  GETIMPORT R4 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R4 R3 K5 ["VerticalAlignment"]
  GETTABLEKS R4 R0 K6 ["LayoutOrder"]
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  LOADN R4 8
  SETTABLEKS R4 R3 K7 ["Spacing"]
  DUPTABLE R4 K24 [{"TextBox", "Content"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"Text", "TextXAlignment", "LayoutOrder", "AutomaticSize", "Size"}]
  GETTABLEKS R8 R0 K25 ["Text"]
  SETTABLEKS R8 R7 K25 ["Text"]
  GETIMPORT R8 K28 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K26 ["TextXAlignment"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["LayoutOrder"]
  GETIMPORT R8 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K3 ["AutomaticSize"]
  GETIMPORT R8 K11 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K1 ["Size"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K22 ["TextBox"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K29 [{"HorizontalAlignment", "VerticalAlignment", "AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R8 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K2 ["HorizontalAlignment"]
  GETIMPORT R8 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R8 R7 K5 ["VerticalAlignment"]
  GETIMPORT R8 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K3 ["AutomaticSize"]
  GETIMPORT R8 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K4 ["Layout"]
  LOADN R8 2
  SETTABLEKS R8 R7 K6 ["LayoutOrder"]
  LOADN R8 8
  SETTABLEKS R8 R7 K7 ["Spacing"]
  GETTABLEKS R8 R0 K30 ["GroupEntries"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K23 ["Content"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R3 K11 ["TextLabel"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
