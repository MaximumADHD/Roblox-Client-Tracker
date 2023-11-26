PROTO_0:
  GETTABLEKS R1 R0 K0 ["LayoutOrder"]
  GETTABLEKS R2 R0 K1 ["OnActivated"]
  DUPTABLE R3 K5 [{"Padding", "BackButton", "Separator"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  LOADK R5 K7 ["UIPadding"]
  DUPTABLE R6 K9 [{"PaddingTop"}]
  GETIMPORT R7 K12 [UDim.new]
  LOADN R8 0
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["PaddingTop"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Padding"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  LOADK R5 K13 ["ImageButton"]
  NEWTABLE R6 8 0
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["BackgroundTransparency"]
  LOADK R7 K15 ["rbxasset://textures/GameSettings/ArrowLeft.png"]
  SETTABLEKS R7 R6 K16 ["Image"]
  GETIMPORT R7 K18 [UDim2.new]
  LOADN R8 0
  LOADN R9 24
  LOADN R10 0
  LOADN R11 24
  CALL R7 4 1
  SETTABLEKS R7 R6 K19 ["Size"]
  LOADN R7 90
  SETTABLEKS R7 R6 K20 ["Rotation"]
  LOADN R7 1
  SETTABLEKS R7 R6 K0 ["LayoutOrder"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K21 ["Event"]
  GETTABLEKS R7 R8 K22 ["Activated"]
  SETTABLE R2 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["BackButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K23 [{"LayoutOrder"}]
  LOADN R7 2
  SETTABLEKS R7 R6 K0 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Separator"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K28 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing"}]
  GETIMPORT R7 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K24 ["AutomaticSize"]
  GETIMPORT R7 K33 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K25 ["HorizontalAlignment"]
  SETTABLEKS R1 R6 K0 ["LayoutOrder"]
  GETIMPORT R7 K36 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K26 ["Layout"]
  GETIMPORT R7 K12 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K27 ["Spacing"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["Pane"]
  GETTABLEKS R5 R3 K10 ["Separator"]
  DUPCLOSURE R6 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R6 1
