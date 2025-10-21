PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"key", "LayoutOrder", "onActivated", "RichText", "Text", "tag", "testId"}]
  GETTABLEKS R4 R0 K1 ["key"]
  SETTABLEKS R4 R3 K1 ["key"]
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETTABLEKS R5 R0 K9 ["isSelectable"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R0 K3 ["onActivated"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["onActivated"]
  GETTABLEKS R5 R0 K9 ["isSelectable"]
  NOT R4 R5
  SETTABLEKS R4 R3 K4 ["RichText"]
  GETTABLEKS R5 R0 K9 ["isSelectable"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R0 K5 ["Text"]
  JUMP [+6]
  GETIMPORT R4 K12 [string.format]
  LOADK R5 K13 ["<s>%s</s>"]
  GETTABLEKS R6 R0 K5 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Text"]
  NEWTABLE R4 4 0
  LOADB R5 1
  SETTABLEKS R5 R4 K14 ["text-align-x-center text-align-y-center text-title-small radius-circle"]
  GETTABLEKS R5 R0 K9 ["isSelectable"]
  JUMPIFNOT R5 [+2]
  GETTABLEKS R5 R0 K15 ["highlight"]
  SETTABLEKS R5 R4 K16 ["content-emphasis"]
  GETTABLEKS R6 R0 K9 ["isSelectable"]
  NOT R5 R6
  JUMPIF R5 [+3]
  GETTABLEKS R6 R0 K15 ["highlight"]
  NOT R5 R6
  SETTABLEKS R5 R4 K17 ["content-inverse-default"]
  GETTABLEKS R5 R0 K18 ["isSelected"]
  SETTABLEKS R5 R4 K19 ["bg-shift-300"]
  SETTABLEKS R4 R3 K6 ["tag"]
  GETTABLEKS R4 R0 K7 ["testId"]
  SETTABLEKS R4 R3 K7 ["testId"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Text"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
