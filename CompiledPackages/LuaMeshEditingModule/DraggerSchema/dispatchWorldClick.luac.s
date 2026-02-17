PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  NAMECALL R3 R1 K0 ["doesAllowFreeformDrag"]
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADK R3 K1 ["FreeformSelectionDrag"]
  RETURN R3 1
  GETTABLEKS R3 R2 K2 ["ClickedItem"]
  JUMPIF R3 [+2]
  LOADK R3 K3 ["DragSelecting"]
  RETURN R3 1
  LOADK R3 K4 ["Ready"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["LuaMeshEditingModule"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
