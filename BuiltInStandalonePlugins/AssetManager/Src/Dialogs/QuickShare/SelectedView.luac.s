PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"LayoutOrder", "tag", "scroll"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  LOADK R4 K5 ["size-full-0 fill"]
  SETTABLEKS R4 R3 K2 ["tag"]
  DUPTABLE R4 K9 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
  GETIMPORT R5 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K6 ["AutomaticCanvasSize"]
  GETIMPORT R5 K16 [UDim2.fromOffset]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["CanvasSize"]
  GETIMPORT R5 K17 [Enum.ScrollingDirection.Y]
  SETTABLEKS R5 R4 K8 ["ScrollingDirection"]
  SETTABLEKS R4 R3 K3 ["scroll"]
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K18 [{"tag"}]
  LOADK R8 K19 ["col size-full-0 auto-y padding-small gap-small"]
  SETTABLEKS R8 R7 K2 ["tag"]
  GETTABLEKS R8 R0 K20 ["children"]
  CALL R5 3 -1
  SETLIST R4 R5 -1 [1]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["View"]
  GETTABLEKS R4 R2 K10 ["ScrollView"]
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
