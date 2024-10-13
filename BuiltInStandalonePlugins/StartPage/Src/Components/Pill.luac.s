PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 4 0
  GETTABLEKS R4 R0 K2 ["Position"]
  SETTABLEKS R4 R3 K2 ["Position"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Tag"]
  LOADK R5 K5 ["X-Row X-Fit X-Middle X-Center StartPage-Selected StartPage-Circular StartPage-Selected StartPage-PillPaddingS"]
  SETTABLE R5 R3 R4
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K6 ["TextLabel"]
  NEWTABLE R7 4 0
  GETTABLEKS R8 R0 K7 ["Text"]
  SETTABLEKS R8 R7 K7 ["Text"]
  LOADN R8 12
  SETTABLEKS R8 R7 K8 ["TextSize"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["Tag"]
  LOADK R9 K9 ["X-Fit StartPage-TextColor StartPage-FontBold X-Transparent"]
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
