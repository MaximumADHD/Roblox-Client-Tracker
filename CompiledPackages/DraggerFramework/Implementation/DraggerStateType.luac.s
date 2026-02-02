PROTO_0:
  GETIMPORT R2 K1 [error]
  LOADK R4 K2 ["Attempt to get invalid StateType `"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K4 [tostring]
  CALL R7 1 1
  MOVE R5 R7
  LOADK R6 K5 ["`"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPTABLE R3 K1 [{"__index"}]
  DUPCLOSURE R4 K2 [PROTO_0]
  SETTABLEKS R4 R3 K0 ["__index"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  LOADK R1 K5 ["Ready"]
  SETTABLEKS R1 R0 K5 ["Ready"]
  LOADK R1 K6 ["PendingDraggingParts"]
  SETTABLEKS R1 R0 K6 ["PendingDraggingParts"]
  LOADK R1 K7 ["PendingSelectNext"]
  SETTABLEKS R1 R0 K7 ["PendingSelectNext"]
  LOADK R1 K8 ["DraggingHandle"]
  SETTABLEKS R1 R0 K8 ["DraggingHandle"]
  LOADK R1 K9 ["DraggingParts"]
  SETTABLEKS R1 R0 K9 ["DraggingParts"]
  LOADK R1 K10 ["DragSelecting"]
  SETTABLEKS R1 R0 K10 ["DragSelecting"]
  LOADK R1 K11 ["DraggingFaceInstance"]
  SETTABLEKS R1 R0 K11 ["DraggingFaceInstance"]
  RETURN R0 1
