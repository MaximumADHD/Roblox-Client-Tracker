PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onActivated"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onActivated"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K2 ["onActivated"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  DUPTABLE R6 K6 [{"tag", "LayoutOrder", "ref"}]
  LOADK R7 K7 ["auto-xy"]
  SETTABLEKS R7 R6 K3 ["tag"]
  GETTABLEKS R7 R0 K4 ["LayoutOrder"]
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  SETTABLEKS R1 R6 K5 ["ref"]
  DUPTABLE R7 K9 [{"IconButton"}]
  GETUPVAL R8 2
  GETUPVAL R9 4
  DUPTABLE R10 K13 [{"testId", "icon", "tag", "iconTag", "LayoutOrder", "onActivated"}]
  GETTABLEKS R11 R0 K10 ["testId"]
  SETTABLEKS R11 R10 K10 ["testId"]
  LOADK R11 K14 ["icons/actions/adjust"]
  SETTABLEKS R11 R10 K11 ["icon"]
  LOADK R11 K15 ["size-700-700 radius-circle bg-action-standard align-x-center align-y-center"]
  SETTABLEKS R11 R10 K3 ["tag"]
  LOADK R11 K16 ["size-700-700 content-emphasis"]
  SETTABLEKS R11 R10 K12 ["iconTag"]
  MOVE R11 R2
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  SETTABLEKS R3 R10 K2 ["onActivated"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["IconButton"]
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
  GETTABLEKS R5 R2 K12 ["View"]
  GETTABLEKS R6 R4 K13 ["createNextOrder"]
  GETTABLEKS R7 R3 K14 ["createElement"]
  DUPCLOSURE R8 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  GETTABLEKS R9 R3 K16 ["memo"]
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
