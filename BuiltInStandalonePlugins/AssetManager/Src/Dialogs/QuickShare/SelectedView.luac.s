PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"LayoutOrder", "tag"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  LOADK R4 K4 ["row auto-xy gap-xsmall align-y-center padding-large"]
  SETTABLEKS R4 R3 K2 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K3 [{"LayoutOrder", "tag"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K1 ["LayoutOrder"]
  LOADK R7 K5 ["col auto-xy"]
  SETTABLEKS R7 R6 K2 ["tag"]
  DUPTABLE R7 K8 [{"Text", "Subtext"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K9 [{"LayoutOrder", "Text", "tag"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K1 ["LayoutOrder"]
  GETTABLEKS R11 R0 K10 ["PlaceholderText"]
  SETTABLEKS R11 R10 K6 ["Text"]
  LOADK R11 K11 ["auto-xy gap-none text-title-medium"]
  SETTABLEKS R11 R10 K2 ["tag"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K6 ["Text"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K9 [{"LayoutOrder", "Text", "tag"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K1 ["LayoutOrder"]
  GETTABLEKS R11 R0 K12 ["PlaceholderSubtext"]
  SETTABLEKS R11 R10 K6 ["Text"]
  LOADK R11 K13 ["auto-xy gap-none text-body-medium"]
  SETTABLEKS R11 R10 K2 ["tag"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Subtext"]
  CALL R4 3 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["children"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"LayoutOrder", "tag", "scroll"}]
  GETTABLEKS R5 R0 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  LOADK R5 K6 ["size-full-0 fill radius-medium stroke-emphasis"]
  SETTABLEKS R5 R4 K3 ["tag"]
  DUPTABLE R5 K10 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
  GETIMPORT R6 K14 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K7 ["AutomaticCanvasSize"]
  GETIMPORT R6 K17 [UDim2.fromOffset]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["CanvasSize"]
  GETIMPORT R6 K18 [Enum.ScrollingDirection.Y]
  SETTABLEKS R6 R5 K9 ["ScrollingDirection"]
  SETTABLEKS R5 R4 K4 ["scroll"]
  NEWTABLE R5 0 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K19 ["Children"]
  GETTABLEKS R7 R8 K20 ["count"]
  MOVE R8 R1
  CALL R7 1 1
  JUMPIFEQKN R7 K21 [0] [+12]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K22 [{"tag"}]
  LOADK R9 K23 ["col size-full-0 auto-y"]
  SETTABLEKS R9 R8 K3 ["tag"]
  MOVE R9 R1
  CALL R6 3 1
  JUMP [+15]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K22 [{"tag"}]
  LOADK R9 K24 ["size-full col align-y-center"]
  SETTABLEKS R9 R8 K3 ["tag"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["createElement"]
  GETUPVAL R10 3
  MOVE R11 R0
  CALL R9 2 -1
  CALL R6 -1 1
  SETLIST R5 R6 1 [1]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R5 R2 K11 ["Text"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPCLOSURE R7 K13 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1
