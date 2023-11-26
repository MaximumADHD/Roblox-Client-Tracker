PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K2 ["Frame"]
  DUPTABLE R4 K5 [{"BackgroundTransparency", "Size"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K3 ["BackgroundTransparency"]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 45
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  DUPTABLE R5 K11 [{"UIPadding", "Header"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K9 ["UIPadding"]
  DUPTABLE R8 K13 [{"PaddingLeft"}]
  GETIMPORT R9 K15 [UDim.new]
  LOADN R10 0
  LOADN R11 251
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["PaddingLeft"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["UIPadding"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K16 ["TextLabel"]
  DUPTABLE R8 K24 [{"BackgroundTransparency", "Font", "LayoutOrder", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "Size"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["BackgroundTransparency"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K25 ["FONT"]
  SETTABLEKS R9 R8 K17 ["Font"]
  GETTABLEKS R10 R1 K18 ["LayoutOrder"]
  ORK R9 R10 K26 [1]
  SETTABLEKS R9 R8 K18 ["LayoutOrder"]
  GETTABLEKS R9 R1 K27 ["Title"]
  SETTABLEKS R9 R8 K19 ["Text"]
  GETTABLEKS R11 R1 K28 ["Stylizer"]
  GETTABLEKS R10 R11 K29 ["publishAsset"]
  GETTABLEKS R9 R10 K30 ["textColor"]
  SETTABLEKS R9 R8 K20 ["TextColor3"]
  LOADN R9 24
  SETTABLEKS R9 R8 K21 ["TextSize"]
  GETIMPORT R9 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K22 ["TextXAlignment"]
  GETIMPORT R9 K35 [Enum.TextYAlignment.Top]
  SETTABLEKS R9 R8 K23 ["TextYAlignment"]
  GETIMPORT R9 K8 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 45
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Header"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K7 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R6 R0 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K12 ["Constants"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K13 ["PureComponent"]
  LOADK R9 K14 ["Header"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K17 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K19 [{"Stylizer"}]
  GETTABLEKS R10 R3 K18 ["Stylizer"]
  SETTABLEKS R10 R9 K18 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
