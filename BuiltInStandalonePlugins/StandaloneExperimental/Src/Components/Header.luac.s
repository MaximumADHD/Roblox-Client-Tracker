PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"Size", "LayoutOrder", "Layout", "VerticalAlignment"}]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K1 ["Size"]
  SETTABLEKS R4 R3 K1 ["Size"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETIMPORT R4 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K3 ["Layout"]
  GETIMPORT R4 K12 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R4 R3 K4 ["VerticalAlignment"]
  DUPTABLE R4 K15 [{"Icon", "Title"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K19 [{"Size", "SizeConstraint", "ScaleType", "LayoutOrder", "Style"}]
  GETIMPORT R8 K22 [UDim2.new]
  LOADN R9 0
  LOADN R10 150
  LOADN R11 1
  LOADN R12 206
  CALL R8 4 1
  SETTABLEKS R8 R7 K1 ["Size"]
  GETIMPORT R8 K24 [Enum.SizeConstraint.RelativeYY]
  SETTABLEKS R8 R7 K16 ["SizeConstraint"]
  GETIMPORT R8 K26 [Enum.ScaleType.Fit]
  SETTABLEKS R8 R7 K17 ["ScaleType"]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  DUPTABLE R8 K28 [{"Image"}]
  LOADK R9 K29 ["rbxasset://textures/loading/robloxTilt.png"]
  SETTABLEKS R9 R8 K27 ["Image"]
  SETTABLEKS R8 R7 K18 ["Style"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["Icon"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K31 [{"Size", "LayoutOrder", "Text"}]
  GETIMPORT R8 K33 [UDim2.fromOffset]
  LOADN R9 150
  LOADN R10 50
  CALL R8 2 1
  SETTABLEKS R8 R7 K1 ["Size"]
  LOADN R8 2
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  GETTABLEKS R9 R0 K6 ["props"]
  GETTABLEKS R8 R9 K34 ["Localization"]
  LOADK R10 K35 ["Header"]
  LOADK R11 K14 ["Title"]
  NAMECALL R8 R8 K36 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K30 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["Title"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R5 R3 K10 ["Localization"]
  GETTABLEKS R7 R2 K11 ["Style"]
  GETTABLEKS R6 R7 K12 ["Stylizer"]
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Pane"]
  GETTABLEKS R9 R7 K15 ["TextLabel"]
  GETTABLEKS R10 R1 K16 ["PureComponent"]
  LOADK R12 K17 ["Header"]
  NAMECALL R10 R10 K18 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K20 ["render"]
  MOVE R11 R4
  DUPTABLE R12 K21 [{"Stylizer", "Localization"}]
  SETTABLEKS R6 R12 K12 ["Stylizer"]
  SETTABLEKS R5 R12 K10 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
