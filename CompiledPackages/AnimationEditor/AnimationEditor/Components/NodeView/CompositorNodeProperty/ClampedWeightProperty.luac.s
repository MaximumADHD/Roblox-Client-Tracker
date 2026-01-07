PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnChanged"]
  DUPTABLE R2 K3 [{"Weight", "Clamped"}]
  SETTABLEKS R0 R2 K1 ["Weight"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Value"]
  GETTABLEKS R3 R4 K2 ["Clamped"]
  SETTABLEKS R3 R2 K2 ["Clamped"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Value"]
  GETTABLEKS R1 R2 K1 ["Weight"]
  JUMPIFNOT R0 [+9]
  LOADN R4 0
  LOADN R5 1
  FASTCALL3 MATH_CLAMP R1 R4 R5
  MOVE R3 R1
  GETIMPORT R2 K4 [math.clamp]
  CALL R2 3 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["OnChanged"]
  DUPTABLE R3 K7 [{"Weight", "Clamped"}]
  SETTABLEKS R1 R3 K1 ["Weight"]
  SETTABLEKS R0 R3 K6 ["Clamped"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 2
  GETTABLEKS R4 R0 K1 ["OnChanged"]
  GETTABLEKS R6 R0 K2 ["Value"]
  GETTABLEKS R5 R6 K3 ["Clamped"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useCallback"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K1 ["OnChanged"]
  GETTABLEKS R7 R0 K2 ["Value"]
  GETTABLEKS R6 R7 K4 ["Weight"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["View"]
  DUPTABLE R5 K9 [{"tag", "LayoutOrder"}]
  LOADK R6 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R6 R5 K7 ["tag"]
  GETTABLEKS R6 R0 K8 ["LayoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  DUPTABLE R6 K13 [{"CompositorNodeInputLabel", "Input", "Clamped"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K14 ["Text"]
  DUPTABLE R9 K15 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K16 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
  SETTABLEKS R10 R9 K7 ["tag"]
  GETTABLEKS R10 R0 K17 ["Label"]
  SETTABLEKS R10 R9 K14 ["Text"]
  LOADN R10 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["CompositorNodeInputLabel"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["NumberInput"]
  DUPTABLE R9 K30 [{"size", "width", "label", "value", "LayoutOrder", "precision", "onChanged", "isScrubbable", "controlsVariant", "minimum", "maximum", "step"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K31 ["Enums"]
  GETTABLEKS R11 R12 K32 ["InputSize"]
  GETTABLEKS R10 R11 K33 ["XSmall"]
  SETTABLEKS R10 R9 K19 ["size"]
  GETIMPORT R10 K36 [UDim.new]
  LOADN R11 0
  LOADN R12 90
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["width"]
  LOADK R10 K37 [""]
  SETTABLEKS R10 R9 K21 ["label"]
  GETTABLEKS R11 R0 K2 ["Value"]
  GETTABLEKS R10 R11 K4 ["Weight"]
  SETTABLEKS R10 R9 K22 ["value"]
  LOADN R10 2
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  LOADN R10 2
  SETTABLEKS R10 R9 K23 ["precision"]
  SETTABLEKS R1 R9 K24 ["onChanged"]
  GETTABLEKS R11 R0 K2 ["Value"]
  GETTABLEKS R10 R11 K3 ["Clamped"]
  SETTABLEKS R10 R9 K25 ["isScrubbable"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K31 ["Enums"]
  GETTABLEKS R11 R12 K38 ["NumberInputControlsVariant"]
  GETTABLEKS R10 R11 K39 ["None"]
  SETTABLEKS R10 R9 K26 ["controlsVariant"]
  GETTABLEKS R12 R0 K2 ["Value"]
  GETTABLEKS R11 R12 K3 ["Clamped"]
  JUMPIFNOT R11 [+2]
  LOADN R10 0
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K27 ["minimum"]
  GETTABLEKS R12 R0 K2 ["Value"]
  GETTABLEKS R11 R12 K3 ["Clamped"]
  JUMPIFNOT R11 [+2]
  LOADN R10 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K28 ["maximum"]
  GETTABLEKS R12 R0 K2 ["Value"]
  GETTABLEKS R11 R12 K3 ["Clamped"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K40 [0.05]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K29 ["step"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Input"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K43 [{"info", "updateValue", "LayoutOrder"}]
  DUPTABLE R10 K45 [{"type", "value"}]
  LOADK R11 K46 ["boolean"]
  SETTABLEKS R11 R10 K44 ["type"]
  GETTABLEKS R12 R0 K2 ["Value"]
  GETTABLEKS R11 R12 K3 ["Clamped"]
  SETTABLEKS R11 R10 K22 ["value"]
  SETTABLEKS R10 R9 K41 ["info"]
  SETTABLEKS R2 R9 K42 ["updateValue"]
  LOADN R10 3
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K3 ["Clamped"]
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
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Properties"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["PropertyValue"]
  DUPCLOSURE R5 K12 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R5 1
