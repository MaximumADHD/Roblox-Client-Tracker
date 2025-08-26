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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createNextOrder"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useCallback"]
  DUPCLOSURE R3 K2 [PROTO_1]
  NEWTABLE R4 0 0
  CALL R2 2 1
  GETTABLEKS R5 R0 K3 ["inputPayload"]
  GETTABLEKS R4 R5 K4 ["weight"]
  JUMPIFEQKN R4 K5 [0] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["View"]
  DUPTABLE R6 K10 [{"tag", "LayoutOrder"}]
  LOADK R7 K11 ["row auto-y gap-small size-full-0 align-y-center flex-fill"]
  SETTABLEKS R7 R6 K8 ["tag"]
  GETTABLEKS R7 R0 K9 ["LayoutOrder"]
  SETTABLEKS R7 R6 K9 ["LayoutOrder"]
  DUPTABLE R7 K14 [{"CompositorNodeInputLabel", "NumberInput"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["Text"]
  DUPTABLE R10 K16 [{"tag", "Text", "LayoutOrder"}]
  NEWTABLE R11 2 0
  LOADB R12 1
  SETTABLEKS R12 R11 K17 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R3 R11 K18 ["content-inverse-muted"]
  SETTABLEKS R11 R10 K8 ["tag"]
  GETTABLEKS R11 R0 K15 ["Text"]
  SETTABLEKS R11 R10 K15 ["Text"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K9 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["CompositorNodeInputLabel"]
  GETTABLEKS R10 R0 K3 ["inputPayload"]
  GETTABLEKS R9 R10 K4 ["weight"]
  JUMPIFNOT R9 [+43]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K26 [{"size", "isDisabled", "label", "width", "value", "LayoutOrder", "onChanged", "formatAsString"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K27 ["Enums"]
  GETTABLEKS R12 R13 K28 ["InputSize"]
  GETTABLEKS R11 R12 K29 ["XSmall"]
  SETTABLEKS R11 R10 K19 ["size"]
  SETTABLEKS R3 R10 K20 ["isDisabled"]
  LOADK R11 K30 [""]
  SETTABLEKS R11 R10 K21 ["label"]
  GETIMPORT R11 K33 [UDim.new]
  LOADN R12 0
  LOADN R13 50
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["width"]
  GETTABLEKS R12 R0 K3 ["inputPayload"]
  GETTABLEKS R11 R12 K4 ["weight"]
  SETTABLEKS R11 R10 K23 ["value"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K9 ["LayoutOrder"]
  SETTABLEKS R2 R10 K24 ["onChanged"]
  GETUPVAL R11 4
  SETTABLEKS R11 R10 K25 ["formatAsString"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K13 ["NumberInput"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K11 ["ReactUtils"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K12 ["memo"]
  GETTABLEKS R6 R2 K13 ["NumberInput"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  DUPCLOSURE R7 K15 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
