PROTO_0:
  JUMPIFNOTEQKN R0 K0 [0] [+3]
  LOADK R1 K1 ["0%"]
  RETURN R1 1
  GETIMPORT R1 K4 [string.format]
  LOADK R2 K5 ["%d%%"]
  MULK R3 R0 K6 [100]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["TODO: Set weight in compositor"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Text"]
  GETTABLEKS R2 R0 K1 ["inputPayload"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K1 ["inputPayload"]
  GETTABLEKS R3 R4 K2 ["weight"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createNextOrder"]
  CALL R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["useCallback"]
  DUPCLOSURE R5 K5 [PROTO_1]
  NEWTABLE R6 0 0
  CALL R4 2 1
  GETTABLEKS R5 R0 K1 ["inputPayload"]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R7 R0 K1 ["inputPayload"]
  GETTABLEKS R6 R7 K2 ["weight"]
  JUMPIFEQKN R6 K6 [0] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["View"]
  DUPTABLE R8 K11 [{"tag", "LayoutOrder"}]
  LOADK R9 K12 ["row gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R9 R8 K9 ["tag"]
  GETTABLEKS R9 R0 K10 ["LayoutOrder"]
  SETTABLEKS R9 R8 K10 ["LayoutOrder"]
  DUPTABLE R9 K15 [{"CompositorNodeInputLabel", "NumberInput"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K0 ["Text"]
  DUPTABLE R12 K16 [{"tag", "Text", "LayoutOrder"}]
  NEWTABLE R13 2 0
  LOADB R14 1
  SETTABLEKS R14 R13 K17 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R5 R13 K18 ["content-inverse-muted"]
  SETTABLEKS R13 R12 K9 ["tag"]
  SETTABLEKS R1 R12 K0 ["Text"]
  MOVE R13 R3
  CALL R13 0 1
  SETTABLEKS R13 R12 K10 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["CompositorNodeInputLabel"]
  JUMPIFNOT R2 [+48]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"size", "isDisabled", "label", "width", "value", "LayoutOrder", "onChanged", "formatAsString"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K27 ["Enums"]
  GETTABLEKS R14 R15 K28 ["InputSize"]
  GETTABLEKS R13 R14 K29 ["XSmall"]
  SETTABLEKS R13 R12 K19 ["size"]
  SETTABLEKS R5 R12 K20 ["isDisabled"]
  LOADK R13 K30 [""]
  SETTABLEKS R13 R12 K21 ["label"]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  LOADN R15 90
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["width"]
  GETTABLEKS R14 R0 K1 ["inputPayload"]
  JUMPIFNOT R14 [+5]
  GETTABLEKS R14 R0 K1 ["inputPayload"]
  GETTABLEKS R13 R14 K2 ["weight"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K23 ["value"]
  MOVE R13 R3
  CALL R13 0 1
  SETTABLEKS R13 R12 K10 ["LayoutOrder"]
  SETTABLEKS R4 R12 K24 ["onChanged"]
  GETUPVAL R13 4
  SETTABLEKS R13 R12 K25 ["formatAsString"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K14 ["NumberInput"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R3 R0 K8 ["NodeViewTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K10 ["ReactUtils"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["memo"]
  GETTABLEKS R6 R1 K12 ["NumberInput"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
