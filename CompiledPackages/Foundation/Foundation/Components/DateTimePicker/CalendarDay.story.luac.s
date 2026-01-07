PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "LayoutOrder", "onActivated", "Text"}]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K1 ["emphasizeText"]
  SETTABLEKS R4 R3 K1 ["emphasizeText"]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K2 ["highlight"]
  SETTABLEKS R4 R3 K2 ["highlight"]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K3 ["isSelectable"]
  SETTABLEKS R4 R3 K3 ["isSelectable"]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K4 ["isSelected"]
  SETTABLEKS R4 R3 K4 ["isSelected"]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["LayoutOrder"]
  DUPCLOSURE R4 K10 [PROTO_0]
  SETTABLEKS R4 R3 K6 ["onActivated"]
  LOADK R4 K11 ["10"]
  SETTABLEKS R4 R3 K7 ["Text"]
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
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K8 ["CalendarDay"]
  CALL R3 1 1
  DUPTABLE R4 K12 [{"summary", "stories", "controls"}]
  LOADK R5 K8 ["CalendarDay"]
  SETTABLEKS R5 R4 K9 ["summary"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K15 [{"name", "story"}]
  LOADK R7 K8 ["CalendarDay"]
  SETTABLEKS R7 R6 K13 ["name"]
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K14 ["story"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K10 ["stories"]
  DUPTABLE R5 K21 [{"emphasizeText", "highlight", "isSelectable", "isSelected"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["emphasizeText"]
  LOADB R6 1
  SETTABLEKS R6 R5 K18 ["highlight"]
  LOADB R6 1
  SETTABLEKS R6 R5 K19 ["isSelectable"]
  LOADB R6 0
  SETTABLEKS R6 R5 K20 ["isSelected"]
  SETTABLEKS R5 R4 K11 ["controls"]
  RETURN R4 1
