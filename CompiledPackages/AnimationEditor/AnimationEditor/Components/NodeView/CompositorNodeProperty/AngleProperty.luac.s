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
  GETTABLEKS R1 R2 K0 ["OnChanged"]
  FASTCALL1 MATH_RAD R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K3 [math.rad]
  CALL R2 1 1
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["formatDegrees"]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K3 ["Value"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K4 ["OnChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["View"]
  DUPTABLE R6 K9 [{"tag", "LayoutOrder"}]
  LOADK R7 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R7 R6 K7 ["tag"]
  GETTABLEKS R7 R0 K8 ["LayoutOrder"]
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  DUPTABLE R7 K14 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K17 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
  LOADK R11 K18 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R11 R10 K7 ["tag"]
  GETTABLEKS R11 R0 K19 ["Label"]
  SETTABLEKS R11 R10 K15 ["Text"]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETTABLEKS R11 R0 K20 ["IsReadOnly"]
  SETTABLEKS R11 R10 K16 ["isDisabled"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["CompositorNodeInputLabel"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K21 ["NumberInput"]
  DUPTABLE R10 K34 [{"size", "width", "label", "value", "isDisabled", "minimum", "maximum", "step", "formatAsString", "LayoutOrder", "precision", "controlsVariant", "onChanged", "isScrubbable"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K35 ["Enums"]
  GETTABLEKS R12 R13 K36 ["InputSize"]
  GETTABLEKS R11 R12 K37 ["XSmall"]
  SETTABLEKS R11 R10 K22 ["size"]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 90
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["width"]
  LOADK R11 K41 [""]
  SETTABLEKS R11 R10 K24 ["label"]
  FASTCALL1 MATH_DEG R2 [+3]
  MOVE R15 R2
  GETIMPORT R14 K45 [math.deg]
  CALL R14 1 1
  MULK R13 R14 K42 [100]
  FASTCALL1 MATH_ROUND R13 [+2]
  GETIMPORT R12 K47 [math.round]
  CALL R12 1 1
  DIVK R11 R12 K42 [100]
  SETTABLEKS R11 R10 K25 ["value"]
  GETTABLEKS R11 R0 K48 ["IsParameterized"]
  JUMPIF R11 [+2]
  GETTABLEKS R11 R0 K20 ["IsReadOnly"]
  SETTABLEKS R11 R10 K16 ["isDisabled"]
  LOADN R11 76
  SETTABLEKS R11 R10 K26 ["minimum"]
  LOADN R11 180
  SETTABLEKS R11 R10 K27 ["maximum"]
  LOADN R11 5
  SETTABLEKS R11 R10 K28 ["step"]
  SETTABLEKS R1 R10 K29 ["formatAsString"]
  LOADN R11 2
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  LOADN R11 2
  SETTABLEKS R11 R10 K30 ["precision"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K35 ["Enums"]
  GETTABLEKS R12 R13 K49 ["NumberInputControlsVariant"]
  GETTABLEKS R11 R12 K50 ["None"]
  SETTABLEKS R11 R10 K31 ["controlsVariant"]
  SETTABLEKS R3 R10 K32 ["onChanged"]
  LOADB R11 1
  SETTABLEKS R11 R10 K33 ["isScrubbable"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Input"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K51 ["Folder"]
  NEWTABLE R10 0 0
  GETTABLEKS R11 R0 K52 ["children"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["PinChildren"]
  CALL R4 3 -1
  RETURN R4 -1

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
  DUPCLOSURE R5 K14 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R5 1
