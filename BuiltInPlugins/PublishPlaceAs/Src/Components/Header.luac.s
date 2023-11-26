PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Title"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  ORK R4 R5 K3 [1]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  LOADK R6 K6 ["TextLabel"]
  DUPTABLE R7 K16 [{"Size", "Text", "BackgroundTransparency", "BorderSizePixel", "TextSize", "TextXAlignment", "TextYAlignment", "Font", "TextColor3", "LayoutOrder"}]
  GETIMPORT R8 K19 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 45
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Size"]
  SETTABLEKS R3 R7 K8 ["Text"]
  LOADN R8 1
  SETTABLEKS R8 R7 K9 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K10 ["BorderSizePixel"]
  LOADN R8 28
  SETTABLEKS R8 R7 K11 ["TextSize"]
  GETIMPORT R8 K22 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K12 ["TextXAlignment"]
  GETIMPORT R8 K24 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R8 R7 K13 ["TextYAlignment"]
  GETTABLEKS R9 R2 K25 ["header"]
  GETTABLEKS R8 R9 K26 ["font"]
  SETTABLEKS R8 R7 K14 ["Font"]
  GETTABLEKS R9 R2 K25 ["header"]
  GETTABLEKS R8 R9 K27 ["text"]
  SETTABLEKS R8 R7 K15 ["TextColor3"]
  SETTABLEKS R4 R7 K4 ["LayoutOrder"]
  CALL R5 2 -1
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
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R1 K10 ["PureComponent"]
  LOADK R7 K11 ["Header"]
  NAMECALL R5 R5 K12 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K14 ["render"]
  MOVE R6 R4
  DUPTABLE R7 K16 [{"Stylizer"}]
  GETTABLEKS R8 R3 K15 ["Stylizer"]
  SETTABLEKS R8 R7 K15 ["Stylizer"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
