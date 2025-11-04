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
  LOADK R6 K6 ["row auto-y size-full-800 align-y-center flex-x-between radius-medium padding-x-small gap-small %*"]
  JUMPIFNOT R1 [+2]
  LOADK R8 K7 ["bg-surface-300"]
  JUMP [+1]
  LOADK R8 K8 [""]
  NAMECALL R6 R6 K9 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K4 ["tag"]
  DUPTABLE R5 K12 [{"Label", "CheckIcon"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K14 [{"LayoutOrder", "Text", "tag"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETTABLEKS R9 R0 K13 ["Text"]
  SETTABLEKS R9 R8 K13 ["Text"]
  LOADK R9 K15 ["auto-xy text-align-x-left text-caption-large text-truncate-end content-emphasis"]
  SETTABLEKS R9 R8 K4 ["tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Label"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K18 [{"LayoutOrder", "name", "size"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K19 ["IconName"]
  GETTABLEKS R9 R10 K20 ["CheckLarge"]
  JUMP [+1]
  LOADK R9 K8 [""]
  SETTABLEKS R9 R8 K16 ["name"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K21 ["Small"]
  SETTABLEKS R9 R8 K17 ["size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["CheckIcon"]
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
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R8 1
