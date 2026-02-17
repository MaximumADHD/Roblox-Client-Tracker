PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Value"]
  FASTCALL1 TYPE R1 [+2]
  GETIMPORT R0 K2 [type]
  CALL R0 1 1
  JUMPIFNOTEQKS R0 K3 ["number"] [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Value"]
  RETURN R0 1
  LOADN R0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["IsParameterOverridden"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["PROPERTY_WIDTH_UDIM"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["Value"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K2 ["IsParameterOverridden"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["View"]
  DUPTABLE R5 K7 [{"tag", "LayoutOrder"}]
  LOADK R6 K8 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R6 R5 K5 ["tag"]
  GETTABLEKS R6 R0 K6 ["LayoutOrder"]
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  DUPTABLE R6 K12 [{"CompositorNodeInputLabel", "InputField", "PinChildren"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K15 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
  LOADK R10 K16 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
  SETTABLEKS R10 R9 K5 ["tag"]
  GETTABLEKS R10 R0 K17 ["Label"]
  SETTABLEKS R10 R9 K13 ["Text"]
  LOADN R10 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  GETTABLEKS R10 R0 K18 ["IsReadOnly"]
  SETTABLEKS R10 R9 K14 ["isDisabled"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["CompositorNodeInputLabel"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K20 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
  GETTABLEKS R10 R0 K2 ["IsParameterOverridden"]
  SETTABLEKS R10 R9 K2 ["IsParameterOverridden"]
  GETTABLEKS R10 R0 K19 ["OnParameterOverrideRevert"]
  SETTABLEKS R10 R9 K19 ["OnParameterOverrideRevert"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K21 ["NumberInput"]
  DUPTABLE R12 K29 [{"size", "width", "label", "value", "LayoutOrder", "precision", "isScrubbable", "onChanged", "isDisabled"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K30 ["Enums"]
  GETTABLEKS R14 R15 K31 ["InputSize"]
  GETTABLEKS R13 R14 K32 ["XSmall"]
  SETTABLEKS R13 R12 K22 ["size"]
  SETTABLEKS R2 R12 K23 ["width"]
  LOADK R13 K33 [""]
  SETTABLEKS R13 R12 K24 ["label"]
  SETTABLEKS R1 R12 K25 ["value"]
  LOADN R13 2
  SETTABLEKS R13 R12 K6 ["LayoutOrder"]
  LOADN R13 2
  SETTABLEKS R13 R12 K26 ["precision"]
  LOADB R13 1
  SETTABLEKS R13 R12 K27 ["isScrubbable"]
  GETTABLEKS R13 R0 K34 ["OnChanged"]
  SETTABLEKS R13 R12 K28 ["onChanged"]
  GETTABLEKS R13 R0 K18 ["IsReadOnly"]
  SETTABLEKS R13 R12 K14 ["isDisabled"]
  CALL R10 2 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K10 ["InputField"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K35 ["Folder"]
  NEWTABLE R9 0 0
  GETTABLEKS R10 R0 K36 ["children"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["PinChildren"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R3 R4 K11 ["InputPropertyField"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K9 ["NodeView"]
  GETTABLEKS R5 R6 K10 ["CompositorNodeProperty"]
  GETTABLEKS R4 R5 K12 ["PropertyConstants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K9 ["NodeView"]
  GETTABLEKS R6 R7 K10 ["CompositorNodeProperty"]
  GETTABLEKS R5 R6 K13 ["PropertyLabel"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Parent"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R6 1
