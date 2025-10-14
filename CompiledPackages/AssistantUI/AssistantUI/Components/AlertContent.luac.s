PROTO_0:
  GETUPVAL R0 0
  JUMPIF R0 [+3]
  NEWTABLE R0 0 0
  RETURN R0 1
  NEWTABLE R0 4 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["auto-xy text-body-small text-wrap text-align-x-left radius-small"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Disabled"]
  SETTABLEKS R1 R0 K2 ["content-muted"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Disabled"]
  NOT R1 R2
  SETTABLEKS R1 R0 K3 ["content-action-link"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["ButtonContent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  NEWTABLE R4 0 1
  MOVE R5 R1
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  DUPTABLE R6 K4 [{"tag", "LayoutOrder"}]
  LOADK R7 K5 ["row size-full-0 auto-y padding-x-medium padding-y-small gap-small align-y-center radius-medium stroke-standard stroke-default"]
  SETTABLEKS R7 R6 K2 ["tag"]
  GETTABLEKS R7 R0 K3 ["LayoutOrder"]
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  DUPTABLE R7 K11 [{"Icon", "Text", "TextButton", "Spacer", "CloseButton"}]
  GETUPVAL R8 2
  GETUPVAL R9 4
  DUPTABLE R10 K13 [{"tag", "Image", "LayoutOrder"}]
  LOADK R11 K14 ["size-500-500 content-system-warning"]
  SETTABLEKS R11 R10 K2 ["tag"]
  LOADK R11 K15 ["icons/status/error_large"]
  SETTABLEKS R11 R10 K12 ["Image"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K6 ["Icon"]
  GETUPVAL R8 2
  GETUPVAL R9 5
  DUPTABLE R10 K16 [{"tag", "Text", "LayoutOrder"}]
  LOADK R11 K17 ["auto-xy shrink text-body-small text-wrap text-align-x-left"]
  SETTABLEKS R11 R10 K2 ["tag"]
  GETTABLEKS R11 R0 K7 ["Text"]
  SETTABLEKS R11 R10 K7 ["Text"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Text"]
  MOVE R8 R1
  JUMPIFNOT R8 [+33]
  GETUPVAL R8 2
  GETUPVAL R9 5
  DUPTABLE R10 K22 [{"tag", "Text", "RichText", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
  SETTABLEKS R2 R10 K2 ["tag"]
  LOADK R12 K23 ["<u>%*</u>"]
  GETTABLEKS R14 R1 K7 ["Text"]
  NAMECALL R12 R12 K24 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K7 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K18 ["RichText"]
  GETTABLEKS R11 R1 K25 ["Disabled"]
  SETTABLEKS R11 R10 K19 ["isDisabled"]
  GETTABLEKS R11 R1 K26 ["OnClick"]
  SETTABLEKS R11 R10 K20 ["onActivated"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  LOADK R11 K27 ["Assistant-Alert-Continue"]
  SETTABLEKS R11 R10 K21 ["testId"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["TextButton"]
  GETUPVAL R8 2
  GETUPVAL R9 3
  DUPTABLE R10 K4 [{"tag", "LayoutOrder"}]
  LOADK R11 K28 ["fill"]
  SETTABLEKS R11 R10 K2 ["tag"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Spacer"]
  GETUPVAL R8 2
  GETUPVAL R9 6
  DUPTABLE R10 K31 [{"icon", "LayoutOrder", "tag", "iconTag", "onActivated", "testId"}]
  LOADK R11 K32 ["icons/navigation/close"]
  SETTABLEKS R11 R10 K29 ["icon"]
  MOVE R11 R3
  CALL R11 0 1
  SETTABLEKS R11 R10 K3 ["LayoutOrder"]
  LOADK R11 K33 ["size-600-600 radius-small align-x-center align-y-center"]
  SETTABLEKS R11 R10 K2 ["tag"]
  LOADK R11 K34 ["size-300-300 content-emphasis"]
  SETTABLEKS R11 R10 K30 ["iconTag"]
  GETTABLEKS R11 R0 K35 ["OnClose"]
  SETTABLEKS R11 R10 K20 ["onActivated"]
  LOADK R11 K36 ["Assistant-Alert-Close"]
  SETTABLEKS R11 R10 K21 ["testId"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["CloseButton"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["CustomIconButton"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Parent"]
  GETTABLEKS R5 R6 K11 ["ReactUtils"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["Image"]
  GETTABLEKS R6 R2 K13 ["Text"]
  GETTABLEKS R7 R2 K14 ["View"]
  GETTABLEKS R8 R4 K15 ["createNextOrder"]
  GETTABLEKS R9 R3 K16 ["createElement"]
  DUPCLOSURE R10 K17 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  GETTABLEKS R11 R3 K18 ["memo"]
  MOVE R12 R10
  CALL R11 1 -1
  RETURN R11 -1
