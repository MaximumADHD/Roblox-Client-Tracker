PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["View"]
  DUPTABLE R3 K4 [{"tag", "LayoutOrder"}]
  LOADK R4 K5 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R4 R3 K2 ["tag"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  DUPTABLE R4 K7 [{"CompositorNodeInputLabel"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["Text"]
  DUPTABLE R7 K9 [{"tag", "Text", "LayoutOrder"}]
  LOADK R8 K10 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R8 R7 K2 ["tag"]
  GETTABLEKS R8 R0 K11 ["Name"]
  SETTABLEKS R8 R7 K8 ["Text"]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["CompositorNodeInputLabel"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["NodeView"]
  GETTABLEKS R4 R5 K10 ["CompositorNodeInput"]
  GETTABLEKS R3 R4 K11 ["InputPanel"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
