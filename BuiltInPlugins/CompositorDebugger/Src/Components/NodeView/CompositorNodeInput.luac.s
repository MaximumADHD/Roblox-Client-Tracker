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
  GETTABLEKS R1 R0 K0 ["outputPayload"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["outputPayload"]
  GETTABLEKS R1 R2 K1 ["className"]
  GETTABLEKS R2 R0 K2 ["Text"]
  GETTABLEKS R5 R0 K3 ["inputPayload"]
  GETTABLEKS R4 R5 K4 ["weight"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOTEQKS R1 K5 ["GraphOutput"] [+3]
  LOADK R2 K6 ["Pose"]
  LOADB R3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createNextOrder"]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["useCallback"]
  DUPCLOSURE R6 K9 [PROTO_1]
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETTABLEKS R8 R0 K3 ["inputPayload"]
  GETTABLEKS R7 R8 K4 ["weight"]
  JUMPIFEQKN R7 K10 [0] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K12 ["View"]
  DUPTABLE R9 K15 [{"tag", "LayoutOrder"}]
  LOADK R10 K16 ["row gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R10 R9 K13 ["tag"]
  GETTABLEKS R10 R0 K14 ["LayoutOrder"]
  SETTABLEKS R10 R9 K14 ["LayoutOrder"]
  DUPTABLE R10 K19 [{"CompositorNodeInputLabel", "NumberInput"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K2 ["Text"]
  DUPTABLE R13 K20 [{"tag", "Text", "LayoutOrder"}]
  NEWTABLE R14 2 0
  LOADB R15 1
  SETTABLEKS R15 R14 K21 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R6 R14 K22 ["content-inverse-muted"]
  SETTABLEKS R14 R13 K13 ["tag"]
  SETTABLEKS R2 R13 K2 ["Text"]
  MOVE R14 R4
  CALL R14 0 1
  SETTABLEKS R14 R13 K14 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["CompositorNodeInputLabel"]
  JUMPIFNOT R3 [+43]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K30 [{"size", "isDisabled", "label", "width", "value", "LayoutOrder", "onChanged", "formatAsString"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K31 ["Enums"]
  GETTABLEKS R15 R16 K32 ["InputSize"]
  GETTABLEKS R14 R15 K33 ["XSmall"]
  SETTABLEKS R14 R13 K23 ["size"]
  SETTABLEKS R6 R13 K24 ["isDisabled"]
  LOADK R14 K34 [""]
  SETTABLEKS R14 R13 K25 ["label"]
  GETIMPORT R14 K37 [UDim.new]
  LOADN R15 0
  LOADN R16 90
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["width"]
  GETTABLEKS R15 R0 K3 ["inputPayload"]
  GETTABLEKS R14 R15 K4 ["weight"]
  SETTABLEKS R14 R13 K27 ["value"]
  MOVE R14 R4
  CALL R14 0 1
  SETTABLEKS R14 R13 K14 ["LayoutOrder"]
  SETTABLEKS R5 R13 K28 ["onChanged"]
  GETUPVAL R14 4
  SETTABLEKS R14 R13 K29 ["formatAsString"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["NumberInput"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AnimationEditor"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["ReactUtils"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K11 ["memo"]
  GETTABLEKS R6 R3 K12 ["NumberInput"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
