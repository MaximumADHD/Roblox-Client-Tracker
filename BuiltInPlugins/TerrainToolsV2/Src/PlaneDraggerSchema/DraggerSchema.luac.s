PROTO_0:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K18 [{"getMouseTarget", "beginBoxSelect", "SelectionInfo", "Selection", "FreeformDragger", "TransformHandlesImplementation", "BoundsChangedTracker", "getSelectionBoxComponent", "isExclusiveSelectable", "endBoxSelect", "getNextSelectables", "getSelectableWithCache", "setActivePoint", "dispatchWorldClick", "addUndoWaypoint", "setHover", "HoverEscapeDetector"}]
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
  GETTABLEKS R3 R4 K3 ["SelectionInfo"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["SelectionInfo"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Selection"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["Selection"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K5 ["FreeformDragger"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["FreeformDragger"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K6 ["TransformHandlesImplementation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["TransformHandlesImplementation"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K7 ["BoundsChangedTracker"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["BoundsChangedTracker"]
  SETTABLEKS R0 R1 K8 ["getSelectionBoxComponent"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K9 ["isExclusiveSelectable"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["isExclusiveSelectable"]
  SETTABLEKS R0 R1 K10 ["endBoxSelect"]
  SETTABLEKS R0 R1 K11 ["getNextSelectables"]
  SETTABLEKS R0 R1 K12 ["getSelectableWithCache"]
  SETTABLEKS R0 R1 K13 ["setActivePoint"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K14 ["dispatchWorldClick"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K14 ["dispatchWorldClick"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K15 ["addUndoWaypoint"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K15 ["addUndoWaypoint"]
  SETTABLEKS R0 R1 K16 ["setHover"]
  GETIMPORT R2 K20 [require]
  GETIMPORT R5 K22 [script]
  GETTABLEKS R4 R5 K23 ["Parent"]
  GETTABLEKS R3 R4 K17 ["HoverEscapeDetector"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K17 ["HoverEscapeDetector"]
  RETURN R1 1
