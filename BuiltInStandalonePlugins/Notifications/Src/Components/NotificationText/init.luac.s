PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 4 0
  GETTABLEKS R4 R0 K2 ["Size"]
  SETTABLEKS R4 R3 K2 ["Size"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Tag"]
  LOADK R5 K5 ["Component-NotificationText X-Column"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K9 [{"Subject", "Subline", "ElapsedTime"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K10 ["TextLabel"]
  DUPTABLE R7 K12 [{"Text", "LayoutOrder"}]
  GETTABLEKS R8 R0 K6 ["Subject"]
  SETTABLEKS R8 R7 K11 ["Text"]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Subject"]
  GETTABLEKS R6 R0 K7 ["Subline"]
  JUMPIFEQKNIL R6 [+19]
  GETTABLEKS R6 R0 K7 ["Subline"]
  JUMPIFEQKS R6 K13 [""] [+15]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K10 ["TextLabel"]
  DUPTABLE R7 K12 [{"Text", "LayoutOrder"}]
  GETTABLEKS R8 R0 K7 ["Subline"]
  SETTABLEKS R8 R7 K11 ["Text"]
  LOADN R8 2
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K7 ["Subline"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K10 ["TextLabel"]
  DUPTABLE R7 K12 [{"Text", "LayoutOrder"}]
  GETTABLEKS R8 R0 K8 ["ElapsedTime"]
  SETTABLEKS R8 R7 K11 ["Text"]
  LOADN R8 3
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["ElapsedTime"]
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
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  GETTABLEKS R3 R1 K8 ["memo"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
