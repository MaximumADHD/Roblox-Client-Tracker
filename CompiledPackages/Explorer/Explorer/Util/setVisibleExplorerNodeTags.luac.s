PROTO_0:
  MOVE R3 R2
  LOADK R4 K0 ["selected"]
  GETTABLEKS R6 R0 K2 ["selectionState"]
  ANDK R5 R6 K1 ["Explorer-Selected"]
  CALL R3 2 0
  MOVE R3 R2
  LOADK R4 K3 ["selectionKind"]
  GETTABLEKS R5 R0 K2 ["selectionState"]
  JUMPIFNOT R5 [+9]
  LOADK R6 K4 ["Explorer-SelectionKind-%*"]
  GETTABLEKS R9 R0 K2 ["selectionState"]
  GETTABLEKS R8 R9 K5 ["kind"]
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 0
  MOVE R3 R2
  LOADK R4 K7 ["selectionSegment"]
  GETTABLEKS R5 R0 K2 ["selectionState"]
  JUMPIFNOT R5 [+9]
  LOADK R6 K8 ["Explorer-SelectionSegment-%*"]
  GETTABLEKS R9 R0 K2 ["selectionState"]
  GETTABLEKS R8 R9 K9 ["segment"]
  NAMECALL R6 R6 K6 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R3 2 0
  MOVE R3 R2
  LOADK R4 K10 ["isSelectedWithin"]
  GETTABLEKS R6 R0 K10 ["isSelectedWithin"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K11 ["Explorer-SelectedWithin"]
  JUMP [+1]
  LOADNIL R5
  CALL R3 2 0
  JUMPIFNOT R1 [+2]
  LOADNIL R3
  JUMP [+2]
  GETTABLEKS R3 R0 K12 ["hoverState"]
  MOVE R4 R2
  LOADK R5 K13 ["hovered"]
  ANDK R6 R3 K14 ["Explorer-Hovered"]
  CALL R4 2 0
  MOVE R4 R2
  LOADK R5 K15 ["hoveredKind"]
  MOVE R6 R3
  JUMPIFNOT R6 [+6]
  LOADK R7 K16 ["Explorer-HoveredKind-%*"]
  MOVE R9 R3
  NAMECALL R7 R7 K6 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  CALL R4 2 0
  MOVE R4 R2
  LOADK R5 K17 ["dragging"]
  JUMPIFEQKNIL R1 [+11]
  GETTABLEKS R7 R1 K18 ["targetId"]
  GETTABLEKS R9 R0 K19 ["datum"]
  GETTABLEKS R8 R9 K20 ["id"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R6 K21 ["Explorer-DraggingInto"]
  JUMP [+1]
  LOADK R6 K22 [""]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Hooks"]
  GETTABLEKS R2 R3 K7 ["useDragAndDrop"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Hooks"]
  GETTABLEKS R3 R4 K8 ["useImperativeTagger"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Hooks"]
  GETTABLEKS R4 R5 K9 ["useVisibleExplorerNodeRange"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  RETURN R4 1
