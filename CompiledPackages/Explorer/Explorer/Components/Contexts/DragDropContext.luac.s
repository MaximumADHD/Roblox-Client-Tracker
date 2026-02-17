PROTO_0:
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K3 [{"startSelectionDrag", "selectionDragInProgress", "selectionDragDropped"}]
  GETTABLEKS R2 R0 K0 ["startSelectionDrag"]
  SETTABLEKS R2 R1 K0 ["startSelectionDrag"]
  GETTABLEKS R2 R0 K1 ["selectionDragInProgress"]
  SETTABLEKS R2 R1 K1 ["selectionDragInProgress"]
  GETTABLEKS R2 R0 K2 ["selectionDragDropped"]
  SETTABLEKS R2 R1 K2 ["selectionDragDropped"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Provider"]
  DUPTABLE R4 K6 [{"value"}]
  SETTABLEKS R1 R4 K5 ["value"]
  GETTABLEKS R5 R0 K7 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Signal"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["createElement"]
  DUPTABLE R4 K13 [{"startSelectionDrag", "selectionDragInProgress", "selectionDragDropped"}]
  DUPCLOSURE R5 K14 [PROTO_0]
  SETTABLEKS R5 R4 K10 ["startSelectionDrag"]
  LOADB R5 0
  SETTABLEKS R5 R4 K11 ["selectionDragInProgress"]
  GETTABLEKS R5 R2 K15 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K12 ["selectionDragDropped"]
  GETTABLEKS R5 R1 K16 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K20 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K18 ["Context"]
  SETTABLEKS R6 R7 K19 ["Provider"]
  RETURN R7 1
