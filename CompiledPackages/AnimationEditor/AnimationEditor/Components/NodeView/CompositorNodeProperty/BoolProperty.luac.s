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
  DUPTABLE R4 K8 [{"CompositorNodeInputLabel", "Input"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["Text"]
  DUPTABLE R7 K10 [{"tag", "Text", "LayoutOrder"}]
  LOADK R8 K11 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
  SETTABLEKS R8 R7 K2 ["tag"]
  GETTABLEKS R8 R0 K12 ["Label"]
  SETTABLEKS R8 R7 K9 ["Text"]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["CompositorNodeInputLabel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K15 [{"info", "updateValue", "LayoutOrder"}]
  DUPTABLE R8 K18 [{"type", "value"}]
  LOADK R9 K19 ["boolean"]
  SETTABLEKS R9 R8 K16 ["type"]
  GETTABLEKS R9 R0 K20 ["Value"]
  SETTABLEKS R9 R8 K17 ["value"]
  SETTABLEKS R8 R7 K13 ["info"]
  GETTABLEKS R8 R0 K21 ["OnChanged"]
  SETTABLEKS R8 R7 K14 ["updateValue"]
  LOADN R8 2
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Input"]
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
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Properties"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["PropertyValue"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R5 1
