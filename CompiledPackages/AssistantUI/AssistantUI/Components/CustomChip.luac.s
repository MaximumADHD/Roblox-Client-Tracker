PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["CustomChip should only be used when FFlagMCPAssistantImprovedChips is false"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K4 ["textTags"]
  ORK R1 R2 K3 [""]
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  DUPTABLE R5 K7 [{"tag", "LayoutOrder"}]
  NEWTABLE R6 2 0
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["row auto-xy gap-xsmall align-x-center align-y-center shrink"]
  GETTABLEKS R8 R0 K9 ["viewTags"]
  ORK R7 R8 K3 [""]
  GETTABLEKS R9 R0 K9 ["viewTags"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K5 ["tag"]
  GETTABLEKS R6 R0 K6 ["LayoutOrder"]
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  DUPTABLE R6 K12 [{"Icon", "Text"}]
  GETTABLEKS R7 R0 K13 ["icon"]
  JUMPIFNOT R7 [+28]
  GETUPVAL R7 2
  GETUPVAL R8 4
  DUPTABLE R9 K17 [{"tag", "iconTag", "icon", "iconRectOffset", "iconRectSize", "LayoutOrder"}]
  GETTABLEKS R10 R0 K18 ["iconOuterTag"]
  SETTABLEKS R10 R9 K5 ["tag"]
  GETTABLEKS R10 R0 K14 ["iconTag"]
  SETTABLEKS R10 R9 K14 ["iconTag"]
  GETTABLEKS R10 R0 K13 ["icon"]
  SETTABLEKS R10 R9 K13 ["icon"]
  GETTABLEKS R10 R0 K15 ["iconRectOffset"]
  SETTABLEKS R10 R9 K15 ["iconRectOffset"]
  GETTABLEKS R10 R0 K16 ["iconRectSize"]
  SETTABLEKS R10 R9 K16 ["iconRectSize"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["Icon"]
  GETUPVAL R7 2
  GETUPVAL R8 5
  DUPTABLE R9 K19 [{"tag", "Text", "LayoutOrder"}]
  NEWTABLE R10 2 0
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["auto-xy shrink text-truncate-end content-action-standard text-body-small text-align-y-center text-wrap"]
  LOADB R11 1
  SETTABLE R11 R10 R1
  SETTABLEKS R10 R9 K5 ["tag"]
  GETTABLEKS R10 R0 K21 ["text"]
  SETTABLEKS R10 R9 K11 ["Text"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Text"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R7 R0 K12 ["Flags"]
  GETTABLEKS R6 R7 K13 ["FFlagMCPAssistantImprovedChips"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["Text"]
  GETTABLEKS R7 R2 K15 ["View"]
  GETTABLEKS R8 R4 K16 ["createNextOrder"]
  GETTABLEKS R9 R3 K17 ["createElement"]
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  GETTABLEKS R11 R3 K19 ["memo"]
  MOVE R12 R10
  CALL R11 1 -1
  RETURN R11 -1
