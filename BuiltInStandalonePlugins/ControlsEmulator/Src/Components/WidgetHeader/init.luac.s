PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Tag"]
  LOADK R5 K3 ["Component-WidgetHeader data-testid=Component-WidgetHeader"]
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R0 K4 ["LayoutOrder"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  DUPTABLE R4 K7 [{"LeftContents", "RightContents"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  LOADK R9 K5 ["LeftContents"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R0 K8 ["leftContents"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["LeftContents"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  LOADK R9 K6 ["RightContents"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R0 K9 ["rightContents"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K6 ["RightContents"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  GETTABLEKS R3 R1 K9 ["memo"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
