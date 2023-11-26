PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Text"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["Frame"]
  DUPTABLE R5 K7 [{"BackgroundTransparency", "Size"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K5 ["BackgroundTransparency"]
  GETIMPORT R6 K10 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K6 ["Size"]
  DUPTABLE R6 K13 [{"UIPadding", "Error"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K11 ["UIPadding"]
  DUPTABLE R9 K18 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R10 K20 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["PaddingBottom"]
  GETIMPORT R10 K20 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["PaddingTop"]
  GETIMPORT R10 K20 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["PaddingLeft"]
  GETIMPORT R10 K20 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["PaddingRight"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["UIPadding"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K21 ["TextLabel"]
  DUPTABLE R9 K28 [{"Size", "BackgroundTransparency", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
  GETIMPORT R10 K10 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K6 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K5 ["BackgroundTransparency"]
  SETTABLEKS R2 R9 K2 ["Text"]
  GETTABLEKS R11 R1 K29 ["labels"]
  GETTABLEKS R10 R11 K30 ["MainFont"]
  SETTABLEKS R10 R9 K22 ["Font"]
  GETTABLEKS R11 R1 K29 ["labels"]
  GETTABLEKS R10 R11 K31 ["MainText"]
  SETTABLEKS R10 R9 K23 ["TextColor3"]
  LOADN R10 18
  SETTABLEKS R10 R9 K24 ["TextSize"]
  GETIMPORT R10 K34 [Enum.TextXAlignment.Center]
  SETTABLEKS R10 R9 K25 ["TextXAlignment"]
  GETIMPORT R10 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R10 R9 K26 ["TextYAlignment"]
  LOADB R10 1
  SETTABLEKS R10 R9 K27 ["TextWrapped"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Error"]
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
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R1 K10 ["Component"]
  LOADK R7 K11 ["FeatureDisabledPage"]
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
