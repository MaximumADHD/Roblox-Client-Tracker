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
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["Value"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["View"]
  DUPTABLE R4 K6 [{"tag", "LayoutOrder"}]
  LOADK R5 K7 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R5 R4 K4 ["tag"]
  GETTABLEKS R5 R0 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  DUPTABLE R5 K10 [{"CompositorNodeInputLabel", "Input"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["Text"]
  DUPTABLE R8 K12 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K13 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R9 R8 K4 ["tag"]
  GETTABLEKS R9 R0 K14 ["Label"]
  SETTABLEKS R9 R8 K11 ["Text"]
  LOADN R9 1
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["CompositorNodeInputLabel"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["NumberInput"]
  DUPTABLE R8 K22 [{"size", "width", "label", "value", "LayoutOrder", "precision", "onChanged"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K23 ["Enums"]
  GETTABLEKS R10 R11 K24 ["InputSize"]
  GETTABLEKS R9 R10 K25 ["XSmall"]
  SETTABLEKS R9 R8 K16 ["size"]
  GETIMPORT R9 K28 [UDim.new]
  LOADN R10 0
  LOADN R11 90
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["width"]
  LOADK R9 K29 [""]
  SETTABLEKS R9 R8 K18 ["label"]
  SETTABLEKS R1 R8 K19 ["value"]
  LOADN R9 2
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  LOADN R9 2
  SETTABLEKS R9 R8 K20 ["precision"]
  GETTABLEKS R9 R0 K30 ["OnChanged"]
  SETTABLEKS R9 R8 K21 ["onChanged"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Input"]
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
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
