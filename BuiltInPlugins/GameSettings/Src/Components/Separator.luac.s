PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  DUPTABLE R5 K9 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
  GETTABLEKS R6 R1 K4 ["Size"]
  JUMPIF R6 [+7]
  GETIMPORT R6 K12 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 2
  CALL R6 4 1
  SETTABLEKS R6 R5 K4 ["Size"]
  GETTABLEKS R6 R1 K5 ["Position"]
  SETTABLEKS R6 R5 K5 ["Position"]
  GETTABLEKS R6 R2 K13 ["separator"]
  SETTABLEKS R6 R5 K6 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["BorderSizePixel"]
  GETTABLEKS R7 R1 K8 ["LayoutOrder"]
  ORK R6 R7 K14 [1]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  CALL R3 2 -1
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
  GETTABLEKS R5 R1 K10 ["PureComponent"]
  LOADK R7 K11 ["Separator"]
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
