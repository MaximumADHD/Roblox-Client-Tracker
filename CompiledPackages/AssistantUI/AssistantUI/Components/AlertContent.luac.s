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

PROTO_2:
  GETTABLEKS R1 R0 K0 ["ButtonContent"]
  GETTABLEKS R2 R0 K1 ["SecondaryButtonContent"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["useMemo"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NEWTABLE R5 0 1
  MOVE R6 R1
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useMemo"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 1
  CALL R5 0 1
  GETUPVAL R6 2
  GETUPVAL R7 3
  DUPTABLE R8 K5 [{"tag", "LayoutOrder"}]
  LOADK R9 K6 ["row size-full-0 auto-y padding-x-medium padding-y-small gap-small align-y-center radius-medium stroke-standard stroke-default"]
  SETTABLEKS R9 R8 K3 ["tag"]
  GETTABLEKS R9 R0 K4 ["LayoutOrder"]
  SETTABLEKS R9 R8 K4 ["LayoutOrder"]
  DUPTABLE R9 K13 [{"Icon", "Text", "TextButton", "SecondaryTextButton", "Spacer", "CloseButton"}]
  GETUPVAL R10 2
  GETUPVAL R11 4
  DUPTABLE R12 K15 [{"tag", "Image", "LayoutOrder"}]
  LOADK R13 K16 ["size-500-500 content-system-warning"]
  SETTABLEKS R13 R12 K3 ["tag"]
  LOADK R13 K17 ["icons/status/error_large"]
  SETTABLEKS R13 R12 K14 ["Image"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K7 ["Icon"]
  GETUPVAL R10 2
  GETUPVAL R11 5
  DUPTABLE R12 K18 [{"tag", "Text", "LayoutOrder"}]
  LOADK R13 K19 ["auto-xy shrink text-body-small text-wrap text-align-x-left"]
  SETTABLEKS R13 R12 K3 ["tag"]
  GETTABLEKS R13 R0 K8 ["Text"]
  SETTABLEKS R13 R12 K8 ["Text"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K8 ["Text"]
  MOVE R10 R1
  JUMPIFNOT R10 [+37]
  GETUPVAL R10 2
  GETUPVAL R11 5
  DUPTABLE R12 K24 [{"tag", "Text", "RichText", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
  SETTABLEKS R3 R12 K3 ["tag"]
  LOADK R14 K25 ["<u>%*</u>"]
  GETTABLEKS R16 R1 K8 ["Text"]
  NAMECALL R14 R14 K26 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K8 ["Text"]
  LOADB R13 1
  SETTABLEKS R13 R12 K20 ["RichText"]
  GETTABLEKS R13 R1 K27 ["Disabled"]
  SETTABLEKS R13 R12 K21 ["isDisabled"]
  GETTABLEKS R13 R1 K28 ["OnClick"]
  SETTABLEKS R13 R12 K22 ["onActivated"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K29 ["Alert"]
  GETTABLEKS R13 R14 K30 ["Continue"]
  SETTABLEKS R13 R12 K23 ["testId"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K9 ["TextButton"]
  MOVE R10 R2
  JUMPIFNOT R10 [+37]
  GETUPVAL R10 2
  GETUPVAL R11 5
  DUPTABLE R12 K24 [{"tag", "Text", "RichText", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
  SETTABLEKS R4 R12 K3 ["tag"]
  LOADK R14 K25 ["<u>%*</u>"]
  GETTABLEKS R16 R2 K8 ["Text"]
  NAMECALL R14 R14 K26 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K8 ["Text"]
  LOADB R13 1
  SETTABLEKS R13 R12 K20 ["RichText"]
  GETTABLEKS R13 R2 K27 ["Disabled"]
  SETTABLEKS R13 R12 K21 ["isDisabled"]
  GETTABLEKS R13 R2 K28 ["OnClick"]
  SETTABLEKS R13 R12 K22 ["onActivated"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K29 ["Alert"]
  GETTABLEKS R13 R14 K31 ["EditApiKeys"]
  SETTABLEKS R13 R12 K23 ["testId"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["SecondaryTextButton"]
  GETUPVAL R10 2
  GETUPVAL R11 3
  DUPTABLE R12 K5 [{"tag", "LayoutOrder"}]
  LOADK R13 K32 ["fill"]
  SETTABLEKS R13 R12 K3 ["tag"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Spacer"]
  GETUPVAL R10 2
  GETUPVAL R11 7
  DUPTABLE R12 K35 [{"icon", "LayoutOrder", "tag", "iconTag", "onActivated", "testId"}]
  LOADK R13 K36 ["icons/navigation/close"]
  SETTABLEKS R13 R12 K33 ["icon"]
  MOVE R13 R5
  CALL R13 0 1
  SETTABLEKS R13 R12 K4 ["LayoutOrder"]
  LOADK R13 K37 ["size-600-600 radius-small align-x-center align-y-center"]
  SETTABLEKS R13 R12 K3 ["tag"]
  LOADK R13 K38 ["size-300-300 content-emphasis"]
  SETTABLEKS R13 R12 K34 ["iconTag"]
  GETTABLEKS R13 R0 K39 ["OnClose"]
  SETTABLEKS R13 R12 K22 ["onActivated"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K29 ["Alert"]
  GETTABLEKS R13 R14 K40 ["Close"]
  SETTABLEKS R13 R12 K23 ["testId"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["CloseButton"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["TestIds"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["Image"]
  GETTABLEKS R7 R2 K15 ["Text"]
  GETTABLEKS R8 R2 K16 ["View"]
  GETTABLEKS R9 R4 K17 ["createNextOrder"]
  GETTABLEKS R10 R3 K18 ["createElement"]
  DUPCLOSURE R11 K19 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  GETTABLEKS R12 R3 K20 ["memo"]
  MOVE R13 R11
  CALL R12 1 -1
  RETURN R12 -1
