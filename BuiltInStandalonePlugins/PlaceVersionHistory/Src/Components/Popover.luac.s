PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K1 ["WindowFocusReleased"]
  GETTABLEKS R5 R0 K2 ["toggle"]
  GETTABLEKS R4 R5 K3 ["disable"]
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K2 ["toggle"]
  SETLIST R5 R6 1 [1]
  CALL R2 3 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["Popover"]
  GETTABLEKS R3 R4 K6 ["Root"]
  DUPTABLE R4 K8 [{"isOpen"}]
  GETTABLEKS R6 R0 K2 ["toggle"]
  GETTABLEKS R5 R6 K9 ["enabled"]
  SETTABLEKS R5 R4 K7 ["isOpen"]
  DUPTABLE R5 K12 [{"Anchor", "Content"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["Popover"]
  GETTABLEKS R7 R8 K10 ["Anchor"]
  DUPTABLE R8 K14 [{"LayoutOrder"}]
  GETTABLEKS R9 R0 K13 ["LayoutOrder"]
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETTABLEKS R10 R0 K15 ["children"]
  GETTABLEKS R9 R10 K10 ["Anchor"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["Anchor"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["Popover"]
  GETTABLEKS R7 R8 K11 ["Content"]
  DUPTABLE R8 K20 [{"onPressedOutside", "side", "align", "hasArrow"}]
  GETTABLEKS R10 R0 K2 ["toggle"]
  GETTABLEKS R9 R10 K3 ["disable"]
  SETTABLEKS R9 R8 K16 ["onPressedOutside"]
  DUPTABLE R9 K23 [{"position", "offset"}]
  GETTABLEKS R10 R0 K17 ["side"]
  SETTABLEKS R10 R9 K21 ["position"]
  LOADN R10 5
  SETTABLEKS R10 R9 K22 ["offset"]
  SETTABLEKS R9 R8 K17 ["side"]
  DUPTABLE R9 K23 [{"position", "offset"}]
  GETTABLEKS R10 R0 K18 ["align"]
  SETTABLEKS R10 R9 K21 ["position"]
  LOADN R10 0
  SETTABLEKS R10 R9 K22 ["offset"]
  SETTABLEKS R9 R8 K18 ["align"]
  LOADB R9 0
  SETTABLEKS R9 R8 K19 ["hasArrow"]
  GETTABLEKS R10 R0 K2 ["toggle"]
  GETTABLEKS R9 R10 K9 ["enabled"]
  JUMPIFNOT R9 [+4]
  GETTABLEKS R10 R0 K15 ["children"]
  GETTABLEKS R9 R10 K11 ["Content"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["Content"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Contexts"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["WidgetContext"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K13 ["useEventConnection"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R7 1
