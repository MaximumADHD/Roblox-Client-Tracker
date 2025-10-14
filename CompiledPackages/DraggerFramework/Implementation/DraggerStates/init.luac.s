MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"DragSelecting", "DraggingFaceInstance", "DraggingHandle", "DraggingParts", "PendingDraggingParts", "PendingSelectNext", "Ready"}]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K0 ["DragSelecting"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["DragSelecting"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K1 ["DraggingFaceInstance"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["DraggingFaceInstance"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K2 ["DraggingHandle"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["DraggingHandle"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K3 ["DraggingParts"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["DraggingParts"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K4 ["PendingDraggingParts"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["PendingDraggingParts"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K5 ["PendingSelectNext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["PendingSelectNext"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K6 ["Ready"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["Ready"]
  RETURN R0 1
