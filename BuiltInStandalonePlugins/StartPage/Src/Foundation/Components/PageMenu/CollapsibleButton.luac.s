PROTO_0:
  GETUPVAL R1 0
  LOADK R2 K0 ["PointingHand"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K7 [{"LayoutOrder", "onActivated", "onStateChanged", "tag", "testId"}]
  GETTABLEKS R5 R0 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  GETTABLEKS R5 R0 K3 ["onActivated"]
  SETTABLEKS R5 R4 K3 ["onActivated"]
  SETTABLEKS R1 R4 K4 ["onStateChanged"]
  LOADK R5 K8 ["row align-y-center radius-medium padding-medium gap-medium auto-xy"]
  SETTABLEKS R5 R4 K5 ["tag"]
  GETTABLEKS R6 R0 K9 ["isActive"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K10 ["--start-page-CollapsibleButton-active"]
  JUMP [+1]
  LOADK R5 K11 ["--start-page-CollapsibleButton"]
  SETTABLEKS R5 R4 K6 ["testId"]
  DUPTABLE R5 K14 [{"Image", "Text"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K15 [{"LayoutOrder", "tag", "Image"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETUPVAL R9 4
  GETTABLEKS R11 R0 K9 ["isActive"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K16 ["content-emphasis"]
  JUMP [+1]
  LOADK R10 K17 ["content-default"]
  LOADK R11 K18 ["size-600"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K5 ["tag"]
  GETTABLEKS R9 R0 K19 ["icon"]
  SETTABLEKS R9 R8 K12 ["Image"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Image"]
  GETTABLEKS R7 R0 K20 ["isCollapsed"]
  JUMPIFNOT R7 [+2]
  LOADNIL R6
  JUMP [+24]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K21 [{"LayoutOrder", "Text", "tag"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETTABLEKS R9 R0 K22 ["text"]
  SETTABLEKS R9 R8 K13 ["Text"]
  GETUPVAL R9 4
  LOADK R10 K23 ["text-align-x-left auto-xy text-title-medium"]
  GETTABLEKS R12 R0 K9 ["isActive"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K16 ["content-emphasis"]
  JUMP [+1]
  LOADK R11 K17 ["content-default"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K5 ["tag"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["Text"]
  CALL R2 3 1
  GETTABLEKS R3 R0 K20 ["isCollapsed"]
  JUMPIFNOT R3 [+21]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 6
  DUPTABLE R5 K26 [{"title", "align", "LayoutOrder"}]
  GETTABLEKS R6 R0 K22 ["text"]
  SETTABLEKS R6 R5 K24 ["title"]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K27 ["Center"]
  SETTABLEKS R6 R5 K25 ["align"]
  GETTABLEKS R6 R0 K2 ["LayoutOrder"]
  SETTABLEKS R6 R5 K2 ["LayoutOrder"]
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["View"]
  GETTABLEKS R5 R3 K13 ["Text"]
  GETTABLEKS R6 R3 K14 ["Image"]
  GETTABLEKS R7 R3 K15 ["Tooltip"]
  GETTABLEKS R9 R3 K16 ["Enums"]
  GETTABLEKS R8 R9 K17 ["PopoverAlign"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K18 ["Hooks"]
  GETTABLEKS R10 R11 K19 ["useOnStateChangedCursor"]
  CALL R9 1 1
  GETTABLEKS R11 R2 K20 ["Styling"]
  GETTABLEKS R10 R11 K21 ["joinTags"]
  DUPCLOSURE R11 K22 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R11 1
