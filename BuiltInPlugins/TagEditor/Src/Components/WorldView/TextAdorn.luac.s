PROTO_0:
  NEWTABLE R1 1 0
  GETTABLEKS R3 R0 K0 ["TagName"]
  LENGTH R2 R3
  LOADN R3 1
  JUMPIFNOTLT R3 R2 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K2 ["UIListLayout"]
  DUPTABLE R4 K4 [{"SortOrder"}]
  GETIMPORT R5 K7 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R5 R4 K3 ["SortOrder"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["UIListLayout"]
  LOADN R4 1
  GETTABLEKS R5 R0 K0 ["TagName"]
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K0 ["TagName"]
  GETTABLE R5 R6 R4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K8 ["TextLabel"]
  DUPTABLE R8 K19 [{"LayoutOrder", "Size", "Text", "TextScaled", "TextSize", "Font", "TextColor3", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextStrokeTransparency"}]
  SETTABLEKS R4 R8 K6 ["LayoutOrder"]
  GETIMPORT R9 K22 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  GETTABLEKS R14 R0 K0 ["TagName"]
  LENGTH R13 R14
  DIVRK R12 R23 K13 ["Font"]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  SETTABLEKS R5 R8 K10 ["Text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K11 ["TextScaled"]
  LOADN R9 20
  SETTABLEKS R9 R8 K12 ["TextSize"]
  GETIMPORT R9 K25 [Enum.Font.SourceSansBold]
  SETTABLEKS R9 R8 K13 ["Font"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K26 ["White"]
  SETTABLEKS R9 R8 K14 ["TextColor3"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  GETIMPORT R9 K28 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K16 ["TextXAlignment"]
  GETIMPORT R9 K30 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R9 R8 K17 ["TextYAlignment"]
  LOADN R9 0
  SETTABLEKS R9 R8 K18 ["TextStrokeTransparency"]
  CALL R6 2 1
  SETTABLE R6 R1 R5
  FORNLOOP R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K31 ["BillboardGui"]
  DUPTABLE R4 K36 [{"Adornee", "Size", "SizeOffset", "ExtentsOffsetWorldSpace", "AlwaysOnTop"}]
  GETTABLEKS R5 R0 K32 ["Adornee"]
  SETTABLEKS R5 R4 K32 ["Adornee"]
  GETIMPORT R5 K22 [UDim2.new]
  LOADN R6 10
  LOADN R7 0
  GETTABLEKS R9 R0 K0 ["TagName"]
  LENGTH R8 R9
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K9 ["Size"]
  GETIMPORT R5 K38 [Vector2.new]
  LOADK R6 K39 [0.5]
  LOADK R7 K39 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K33 ["SizeOffset"]
  LOADK R5 K40 [{1, 1, 1}]
  SETTABLEKS R5 R4 K34 ["ExtentsOffsetWorldSpace"]
  GETTABLEKS R5 R0 K35 ["AlwaysOnTop"]
  SETTABLEKS R5 R4 K35 ["AlwaysOnTop"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
