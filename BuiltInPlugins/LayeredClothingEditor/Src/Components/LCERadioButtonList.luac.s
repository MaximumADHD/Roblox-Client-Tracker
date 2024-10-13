PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Title"]
  GETTABLEKS R3 R1 K2 ["Buttons"]
  GETTABLEKS R4 R1 K3 ["OnClick"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["InitialSelectedKey"]
  GETTABLEKS R7 R1 K6 ["Stylizer"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["new"]
  CALL R8 0 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K14 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  GETIMPORT R12 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K9 ["AutomaticSize"]
  SETTABLEKS R5 R11 K4 ["LayoutOrder"]
  GETIMPORT R12 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K10 ["Layout"]
  GETIMPORT R12 K22 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K11 ["HorizontalAlignment"]
  GETIMPORT R12 K24 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K12 ["VerticalAlignment"]
  GETTABLEKS R12 R7 K25 ["HeaderPadding"]
  SETTABLEKS R12 R11 K13 ["Spacing"]
  DUPTABLE R12 K27 [{"Title", "List"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K33 [{"TextXAlignment", "TextYAlignment", "Size", "Text", "Font", "LayoutOrder"}]
  GETIMPORT R16 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K28 ["TextXAlignment"]
  GETIMPORT R16 K36 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K29 ["TextYAlignment"]
  GETIMPORT R16 K38 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 24
  CALL R16 4 1
  SETTABLEKS R16 R15 K30 ["Size"]
  SETTABLEKS R2 R15 K31 ["Text"]
  GETTABLEKS R16 R7 K39 ["FontBold"]
  SETTABLEKS R16 R15 K32 ["Font"]
  NAMECALL R16 R8 K40 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K4 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K1 ["Title"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K42 [{"Buttons", "OnClick", "LayoutOrder", "SelectedKey"}]
  SETTABLEKS R3 R15 K2 ["Buttons"]
  SETTABLEKS R4 R15 K3 ["OnClick"]
  NAMECALL R16 R8 K40 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K4 ["LayoutOrder"]
  SETTABLEKS R6 R15 K41 ["SelectedKey"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["List"]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["TextLabel"]
  GETTABLEKS R7 R5 K12 ["RadioButtonList"]
  GETTABLEKS R8 R5 K13 ["Pane"]
  GETTABLEKS R9 R2 K14 ["Util"]
  GETTABLEKS R10 R9 K15 ["LayoutOrderIterator"]
  GETTABLEKS R11 R9 K16 ["Typecheck"]
  GETTABLEKS R12 R1 K17 ["PureComponent"]
  LOADK R14 K18 ["LCERadioButtonList"]
  NAMECALL R12 R12 K19 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R11 K20 ["wrap"]
  MOVE R14 R12
  GETIMPORT R15 K1 [script]
  CALL R13 2 0
  DUPCLOSURE R13 K21 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K22 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K24 [{"Stylizer"}]
  GETTABLEKS R15 R3 K23 ["Stylizer"]
  SETTABLEKS R15 R14 K23 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
