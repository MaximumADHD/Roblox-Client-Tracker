PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"Size", "LayoutOrder", "Layout", "VerticalAlignment"}]
  GETTABLEKS R5 R1 K2 ["Size"]
  SETTABLEKS R5 R4 K2 ["Size"]
  GETTABLEKS R5 R1 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  GETIMPORT R5 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R5 R4 K4 ["Layout"]
  GETIMPORT R5 K12 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R5 R4 K5 ["VerticalAlignment"]
  DUPTABLE R5 K15 [{"Icon", "Title"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K19 [{"Size", "SizeConstraint", "ScaleType", "LayoutOrder", "Style"}]
  GETIMPORT R9 K22 [UDim2.new]
  LOADN R10 0
  LOADN R11 150
  LOADN R12 1
  LOADN R13 206
  CALL R9 4 1
  SETTABLEKS R9 R8 K2 ["Size"]
  GETIMPORT R9 K24 [Enum.SizeConstraint.RelativeYY]
  SETTABLEKS R9 R8 K16 ["SizeConstraint"]
  GETIMPORT R9 K26 [Enum.ScaleType.Fit]
  SETTABLEKS R9 R8 K17 ["ScaleType"]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  DUPTABLE R9 K28 [{"Image"}]
  LOADK R10 K29 ["rbxasset://textures/loading/robloxTilt.png"]
  SETTABLEKS R10 R9 K27 ["Image"]
  SETTABLEKS R9 R8 K18 ["Style"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["Icon"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K31 [{"Size", "LayoutOrder", "Text"}]
  GETIMPORT R9 K33 [UDim2.fromOffset]
  LOADN R10 150
  LOADN R11 50
  CALL R9 2 1
  SETTABLEKS R9 R8 K2 ["Size"]
  LOADN R9 2
  SETTABLEKS R9 R8 K3 ["LayoutOrder"]
  GETTABLEKS R9 R1 K34 ["Localization"]
  LOADK R11 K35 ["Header"]
  LOADK R12 K14 ["Title"]
  NAMECALL R9 R9 K36 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K30 ["Text"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["Title"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R8 R0 K5 ["Packages"]
  GETTABLEKS R7 R8 K8 ["_Index"]
  GETTABLEKS R6 R7 K9 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K9 ["DeveloperFramework"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETTABLEKS R7 R5 K14 ["Localization"]
  GETTABLEKS R9 R2 K15 ["Style"]
  GETTABLEKS R8 R9 K16 ["Stylizer"]
  GETTABLEKS R9 R2 K17 ["UI"]
  GETTABLEKS R10 R9 K18 ["Pane"]
  GETTABLEKS R11 R9 K19 ["TextLabel"]
  GETTABLEKS R12 R1 K20 ["PureComponent"]
  LOADK R14 K21 ["Header"]
  NAMECALL R12 R12 K22 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K23 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K24 ["render"]
  MOVE R13 R6
  DUPTABLE R14 K25 [{"Stylizer", "Localization"}]
  SETTABLEKS R8 R14 K16 ["Stylizer"]
  SETTABLEKS R7 R14 K14 ["Localization"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
