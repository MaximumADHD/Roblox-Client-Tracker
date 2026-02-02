PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Popover"]
  GETTABLEKS R2 R3 K2 ["Root"]
  DUPTABLE R3 K4 [{"isOpen"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["isOpen"]
  DUPTABLE R4 K7 [{"Anchor", "Content"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["Popover"]
  GETTABLEKS R6 R7 K5 ["Anchor"]
  DUPTABLE R7 K9 [{"anchorRef"}]
  GETTABLEKS R8 R0 K10 ["virtualRef"]
  SETTABLEKS R8 R7 K8 ["anchorRef"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Anchor"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["Popover"]
  GETTABLEKS R6 R7 K6 ["Content"]
  DUPTABLE R7 K13 [{"align", "side"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["Enums"]
  GETTABLEKS R9 R10 K15 ["PopoverAlign"]
  GETTABLEKS R8 R9 K16 ["Start"]
  SETTABLEKS R8 R7 K11 ["align"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["Enums"]
  GETTABLEKS R9 R10 K17 ["PopoverSide"]
  GETTABLEKS R8 R9 K18 ["Right"]
  SETTABLEKS R8 R7 K12 ["side"]
  DUPTABLE R8 K20 [{"Body"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K21 ["View"]
  DUPTABLE R11 K23 [{"tag"}]
  LOADK R12 K24 ["auto-xy gap-small padding-small radius-small stroke-standard stroke-default"]
  SETTABLEKS R12 R11 K22 ["tag"]
  DUPTABLE R12 K26 [{"CompositorNodeInputLabel"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K27 ["Text"]
  DUPTABLE R15 K29 [{"tag", "Text", "LayoutOrder"}]
  LOADK R16 K30 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R16 R15 K22 ["tag"]
  GETTABLEKS R16 R0 K27 ["Text"]
  SETTABLEKS R16 R15 K27 ["Text"]
  LOADN R16 1
  SETTABLEKS R16 R15 K28 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["CompositorNodeInputLabel"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K19 ["Body"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K6 ["Content"]
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
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
