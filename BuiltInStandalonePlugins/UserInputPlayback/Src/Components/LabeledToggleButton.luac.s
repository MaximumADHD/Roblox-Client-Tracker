PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Pane"]
  DUPTABLE R5 K12 [{"Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing", "LayoutOrder"}]
  GETTABLEKS R6 R2 K13 ["ComponentSize"]
  SETTABLEKS R6 R5 K4 ["Size"]
  GETIMPORT R6 K16 [Enum.AutomaticSize.X]
  SETTABLEKS R6 R5 K5 ["AutomaticSize"]
  GETIMPORT R6 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R6 R5 K6 ["Layout"]
  GETIMPORT R6 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R6 R5 K7 ["HorizontalAlignment"]
  GETIMPORT R6 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R6 R5 K8 ["VerticalAlignment"]
  DUPTABLE R6 K24 [{"Left"}]
  GETTABLEKS R7 R2 K25 ["LeftInsetPx"]
  SETTABLEKS R7 R6 K20 ["Left"]
  SETTABLEKS R6 R5 K9 ["Padding"]
  GETTABLEKS R6 R2 K26 ["PaddingPx"]
  SETTABLEKS R6 R5 K10 ["Spacing"]
  GETTABLEKS R6 R1 K11 ["LayoutOrder"]
  SETTABLEKS R6 R5 K11 ["LayoutOrder"]
  DUPTABLE R6 K29 [{"ToggleButton", "TextLabel"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K34 [{"OnClick", "Size", "Selected", "AnchorPoint", "Disabled"}]
  GETTABLEKS R10 R1 K30 ["OnClick"]
  SETTABLEKS R10 R9 K30 ["OnClick"]
  GETTABLEKS R10 R2 K35 ["ToggleSize"]
  SETTABLEKS R10 R9 K4 ["Size"]
  GETTABLEKS R10 R1 K31 ["Selected"]
  SETTABLEKS R10 R9 K31 ["Selected"]
  GETIMPORT R10 K38 [Vector2.new]
  LOADN R11 0
  LOADK R12 K39 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["AnchorPoint"]
  GETTABLEKS R10 R1 K33 ["Disabled"]
  SETTABLEKS R10 R9 K33 ["Disabled"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K27 ["ToggleButton"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K44 [{"Size", "AutomaticSize", "Text", "TextXAlignment", "TextYAlignment", "StyleModifier"}]
  GETIMPORT R10 K47 [UDim2.fromScale]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K4 ["Size"]
  GETIMPORT R10 K49 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K5 ["AutomaticSize"]
  GETTABLEKS R10 R1 K40 ["Text"]
  SETTABLEKS R10 R9 K40 ["Text"]
  GETIMPORT R10 K50 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K41 ["TextXAlignment"]
  GETIMPORT R10 K51 [Enum.TextYAlignment.Center]
  SETTABLEKS R10 R9 K42 ["TextYAlignment"]
  GETTABLEKS R11 R1 K33 ["Disabled"]
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K33 ["Disabled"]
  JUMPIF R10 [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K43 ["StyleModifier"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K28 ["TextLabel"]
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
  GETTABLEKS R6 R4 K11 ["ToggleButton"]
  GETTABLEKS R7 R2 K12 ["Util"]
  GETTABLEKS R8 R7 K13 ["StyleModifier"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["LabeledToggleButton"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPTABLE R10 K19 [{"Disabled", "Selected"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K17 ["Disabled"]
  LOADB R11 0
  SETTABLEKS R11 R10 K18 ["Selected"]
  SETTABLEKS R10 R9 K20 ["defaultProps"]
  DUPCLOSURE R10 K21 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K22 ["render"]
  GETTABLEKS R10 R3 K23 ["withContext"]
  DUPTABLE R11 K25 [{"Stylizer"}]
  GETTABLEKS R12 R3 K24 ["Stylizer"]
  SETTABLEKS R12 R11 K24 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
