PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Value"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["OnChanged"]
  DUPTABLE R2 K5 [{"Position"}]
  SETTABLEKS R0 R2 K4 ["Position"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 2
  GETTABLEKS R4 R0 K1 ["OnChanged"]
  GETTABLEKS R5 R0 K2 ["Value"]
  JUMPIFNOT R5 [+4]
  GETTABLEKS R6 R0 K2 ["Value"]
  GETTABLEKS R5 R6 K3 ["Position"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["View"]
  DUPTABLE R4 K8 [{"tag", "LayoutOrder"}]
  LOADK R5 K9 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R5 R4 K6 ["tag"]
  GETTABLEKS R5 R0 K7 ["LayoutOrder"]
  SETTABLEKS R5 R4 K7 ["LayoutOrder"]
  DUPTABLE R5 K11 [{"CompositorNodeInputLabel", "Position"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["Text"]
  DUPTABLE R8 K13 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K14 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R9 R8 K6 ["tag"]
  GETTABLEKS R9 R0 K15 ["Name"]
  SETTABLEKS R9 R8 K12 ["Text"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["CompositorNodeInputLabel"]
  GETTABLEKS R7 R0 K2 ["Value"]
  JUMPIFEQKNIL R7 [+58]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["NumberInput"]
  DUPTABLE R8 K26 [{"size", "width", "label", "value", "step", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K27 ["Enums"]
  GETTABLEKS R10 R11 K28 ["InputSize"]
  GETTABLEKS R9 R10 K29 ["XSmall"]
  SETTABLEKS R9 R8 K17 ["size"]
  GETIMPORT R9 K32 [UDim.new]
  LOADN R10 0
  LOADN R11 90
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["width"]
  LOADK R9 K33 [""]
  SETTABLEKS R9 R8 K19 ["label"]
  GETTABLEKS R10 R0 K2 ["Value"]
  GETTABLEKS R9 R10 K3 ["Position"]
  SETTABLEKS R9 R8 K20 ["value"]
  LOADN R9 1
  SETTABLEKS R9 R8 K21 ["step"]
  LOADN R9 2
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  LOADN R9 2
  SETTABLEKS R9 R8 K22 ["precision"]
  SETTABLEKS R1 R8 K23 ["onChanged"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K27 ["Enums"]
  GETTABLEKS R10 R11 K34 ["NumberInputControlsVariant"]
  GETTABLEKS R9 R10 K35 ["None"]
  SETTABLEKS R9 R8 K24 ["controlsVariant"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["isScrubbable"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K3 ["Position"]
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
  GETTABLEKS R4 R5 K10 ["CompositorNodeInput"]
  GETTABLEKS R3 R4 K11 ["InputPanel"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
