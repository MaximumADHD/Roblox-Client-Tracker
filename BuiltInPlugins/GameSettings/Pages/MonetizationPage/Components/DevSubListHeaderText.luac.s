PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Size"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Text"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["LayoutOrder"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["Alignment"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["Stylizer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  LOADK R7 K7 ["TextLabel"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["Dictionary"]
  GETTABLEKS R8 R9 K9 ["join"]
  GETTABLEKS R10 R5 K10 ["fontStyle"]
  GETTABLEKS R9 R10 K11 ["Normal"]
  DUPTABLE R10 K15 [{"Size", "Text", "LayoutOrder", "TextXAlignment", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R1 R10 K1 ["Size"]
  SETTABLEKS R2 R10 K2 ["Text"]
  SETTABLEKS R3 R10 K3 ["LayoutOrder"]
  SETTABLEKS R4 R10 K12 ["TextXAlignment"]
  LOADN R11 1
  SETTABLEKS R11 R10 K13 ["BackgroundTransparency"]
  LOADN R11 0
  SETTABLEKS R11 R10 K14 ["BorderSizePixel"]
  CALL R8 2 -1
  CALL R6 -1 -1
  RETURN R6 -1

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
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R1 K11 ["Component"]
  LOADK R7 K12 ["DeveloperSubscriptionListHeaderText"]
  NAMECALL R5 R5 K13 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K15 ["render"]
  MOVE R6 R4
  DUPTABLE R7 K17 [{"Stylizer"}]
  GETTABLEKS R8 R3 K16 ["Stylizer"]
  SETTABLEKS R8 R7 K16 ["Stylizer"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
