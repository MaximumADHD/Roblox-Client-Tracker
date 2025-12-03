PROTO_0:
  GETTABLEKS R1 R0 K0 ["isChecked"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"LayoutOrder", "onActivated", "tag"}]
  GETTABLEKS R5 R0 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  GETTABLEKS R5 R0 K3 ["onActivated"]
  SETTABLEKS R5 R4 K3 ["onActivated"]
  LOADK R6 K6 ["row auto-y align-y-center size-full-600 radius-small padding-x-small gap-medium %*"]
  JUMPIFNOT R1 [+2]
  LOADK R8 K7 ["bg-surface-300"]
  JUMP [+1]
  LOADK R8 K8 [""]
  NAMECALL R6 R6 K9 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K4 ["tag"]
  DUPTABLE R5 K12 [{"CheckIcon", "Label"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K13 [{"LayoutOrder", "tag"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  LOADK R9 K14 ["size-300"]
  SETTABLEKS R9 R8 K4 ["tag"]
  NEWTABLE R9 0 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K17 [{"name", "size"}]
  JUMPIFNOT R1 [+6]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K18 ["IconName"]
  GETTABLEKS R13 R14 K19 ["CheckLarge"]
  JUMP [+1]
  LOADK R13 K8 [""]
  SETTABLEKS R13 R12 K15 ["name"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K20 ["XSmall"]
  SETTABLEKS R13 R12 K16 ["size"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["CheckIcon"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K22 [{"LayoutOrder", "Text", "tag"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETTABLEKS R9 R0 K21 ["Text"]
  SETTABLEKS R9 R8 K21 ["Text"]
  LOADK R9 K23 ["auto-xy text-caption-medium text-align-x-left text-truncate-split content-emphasis"]
  SETTABLEKS R9 R8 K4 ["tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Label"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
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
  GETTABLEKS R3 R2 K9 ["Enums"]
  GETTABLEKS R4 R2 K10 ["View"]
  GETTABLEKS R5 R2 K11 ["Text"]
  GETTABLEKS R6 R2 K12 ["Icon"]
  GETTABLEKS R8 R2 K9 ["Enums"]
  GETTABLEKS R7 R8 K13 ["IconSize"]
  DUPCLOSURE R8 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R8 1
