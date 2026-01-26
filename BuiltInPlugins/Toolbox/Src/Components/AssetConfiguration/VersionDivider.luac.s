PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K8 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
  GETTABLEKS R4 R0 K2 ["AnchorPoint"]
  SETTABLEKS R4 R3 K2 ["AnchorPoint"]
  GETTABLEKS R4 R0 K3 ["Position"]
  SETTABLEKS R4 R3 K3 ["Position"]
  GETTABLEKS R4 R0 K4 ["Size"]
  SETTABLEKS R4 R3 K4 ["Size"]
  GETIMPORT R4 K11 [Color3.fromRGB]
  LOADN R5 151
  LOADN R6 151
  LOADN R7 151
  CALL R4 3 1
  SETTABLEKS R4 R3 K5 ["BackgroundColor3"]
  LOADN R4 0
  SETTABLEKS R4 R3 K6 ["BorderSizePixel"]
  GETTABLEKS R5 R0 K7 ["LayoutOrder"]
  ORK R4 R5 K12 [0]
  SETTABLEKS R4 R3 K7 ["LayoutOrder"]
  CALL R1 2 -1
  RETURN R1 -1

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
  DUPCLOSURE R3 K7 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
