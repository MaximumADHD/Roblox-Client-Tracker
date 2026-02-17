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
  DUPTABLE R4 K9 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K12 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
  LOADK R8 K13 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
  SETTABLEKS R8 R7 K2 ["tag"]
  GETTABLEKS R8 R0 K14 ["Label"]
  SETTABLEKS R8 R7 K10 ["Text"]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  GETTABLEKS R8 R0 K15 ["IsReadOnly"]
  SETTABLEKS R8 R7 K11 ["isDisabled"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["CompositorNodeInputLabel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K18 [{"info", "updateValue", "LayoutOrder"}]
  DUPTABLE R8 K22 [{"type", "value", "readonly"}]
  LOADK R9 K23 ["boolean"]
  SETTABLEKS R9 R8 K19 ["type"]
  GETTABLEKS R10 R0 K25 ["Value"]
  ORK R9 R10 K24 [False]
  SETTABLEKS R9 R8 K20 ["value"]
  GETTABLEKS R9 R0 K26 ["IsParameterized"]
  JUMPIF R9 [+4]
  GETTABLEKS R9 R0 K15 ["IsReadOnly"]
  JUMPIF R9 [+1]
  LOADB R9 0
  SETTABLEKS R9 R8 K21 ["readonly"]
  SETTABLEKS R8 R7 K16 ["info"]
  GETTABLEKS R8 R0 K27 ["OnChanged"]
  SETTABLEKS R8 R7 K17 ["updateValue"]
  LOADN R8 2
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Input"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K28 ["Folder"]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R0 K29 ["children"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K8 ["PinChildren"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Components"]
  GETTABLEKS R7 R8 K11 ["NodeView"]
  GETTABLEKS R6 R7 K12 ["CompositorNodeProperty"]
  GETTABLEKS R5 R6 K13 ["PropertyLabel"]
  CALL R4 1 1
  GETTABLEKS R6 R2 K10 ["Components"]
  GETTABLEKS R5 R6 K14 ["PropertyValue"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
