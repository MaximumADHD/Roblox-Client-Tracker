PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["formatTimestamp"]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["View"]
  DUPTABLE R4 K6 [{"tag", "LayoutOrder"}]
  LOADK R5 K7 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R5 R4 K4 ["tag"]
  GETTABLEKS R5 R0 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  DUPTABLE R5 K11 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K14 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
  LOADK R9 K15 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
  SETTABLEKS R9 R8 K4 ["tag"]
  GETTABLEKS R9 R0 K16 ["Label"]
  SETTABLEKS R9 R8 K12 ["Text"]
  LOADN R9 1
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  GETTABLEKS R9 R0 K17 ["IsReadOnly"]
  SETTABLEKS R9 R8 K13 ["isDisabled"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["CompositorNodeInputLabel"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["NumberInput"]
  DUPTABLE R8 K26 [{"size", "width", "label", "value", "isDisabled", "LayoutOrder", "precision", "formatAsString", "onChanged"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K27 ["Enums"]
  GETTABLEKS R10 R11 K28 ["InputSize"]
  GETTABLEKS R9 R10 K29 ["XSmall"]
  SETTABLEKS R9 R8 K19 ["size"]
  GETIMPORT R9 K32 [UDim.new]
  LOADN R10 0
  LOADN R11 90
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["width"]
  LOADK R9 K33 [""]
  SETTABLEKS R9 R8 K21 ["label"]
  GETTABLEKS R9 R0 K34 ["Value"]
  SETTABLEKS R9 R8 K22 ["value"]
  GETTABLEKS R9 R0 K35 ["IsParameterized"]
  JUMPIF R9 [+2]
  GETTABLEKS R9 R0 K17 ["IsReadOnly"]
  SETTABLEKS R9 R8 K13 ["isDisabled"]
  LOADN R9 2
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  LOADN R9 2
  SETTABLEKS R9 R8 K23 ["precision"]
  SETTABLEKS R1 R8 K24 ["formatAsString"]
  GETTABLEKS R9 R0 K36 ["OnChanged"]
  SETTABLEKS R9 R8 K25 ["onChanged"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Input"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K37 ["Folder"]
  NEWTABLE R8 0 0
  GETTABLEKS R9 R0 K38 ["children"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["PinChildren"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R4 R5 K10 ["CompositorNodeProperty"]
  GETTABLEKS R3 R4 K11 ["PropertyLabel"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K9 ["NodeView"]
  GETTABLEKS R5 R6 K10 ["CompositorNodeProperty"]
  GETTABLEKS R4 R5 K12 ["PropertyUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R5 1
