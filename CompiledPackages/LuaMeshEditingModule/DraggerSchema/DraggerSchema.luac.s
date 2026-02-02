PROTO_0:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K18 [{"getMouseTarget", "beginBoxSelect", "setHover", "HoverEscapeDetector", "SelectionInfo", "BoundsChangedTracker", "dispatchWorldClick", "getNextSelectables", "getSelectableWithCache", "TransformHandlesImplementation", "ExtrudeHandlesImplementation", "FreeformDragger", "addUndoWaypoint", "endBoxSelect", "getSelectionBoxComponent", "setActivePoint", "isExclusiveSelectable"}]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K1 ["getMouseTarget"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["getMouseTarget"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K2 ["beginBoxSelect"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["beginBoxSelect"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K3 ["setHover"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["setHover"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K4 ["HoverEscapeDetector"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["HoverEscapeDetector"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K5 ["SelectionInfo"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["SelectionInfo"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K6 ["BoundsChangedTracker"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["BoundsChangedTracker"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K7 ["dispatchWorldClick"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["dispatchWorldClick"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K8 ["getNextSelectables"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["getNextSelectables"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K9 ["getSelectableWithCache"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["getSelectableWithCache"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K10 ["TransformHandlesImplementation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["TransformHandlesImplementation"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K11 ["ExtrudeHandlesImplementation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["ExtrudeHandlesImplementation"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K12 ["FreeformDragger"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K12 ["FreeformDragger"]
  SETTABLEKS R0 R1 K13 ["addUndoWaypoint"]
  SETTABLEKS R0 R1 K14 ["endBoxSelect"]
  SETTABLEKS R0 R1 K15 ["getSelectionBoxComponent"]
  SETTABLEKS R0 R1 K16 ["setActivePoint"]
  SETTABLEKS R0 R1 K17 ["isExclusiveSelectable"]
  RETURN R1 1
