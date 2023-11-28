MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"PointSize", "PointHalfSize", "DragEpsilon", "DragTangentToCenterToDeleteZoneSizePixels", "ChangeHistoryServiceActionName", "DefaultTangentLength"}]
  GETIMPORT R1 K9 [Vector2.new]
  LOADN R2 16
  LOADN R3 16
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["PointSize"]
  GETIMPORT R1 K9 [Vector2.new]
  LOADN R2 8
  LOADN R3 8
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["PointHalfSize"]
  LOADN R1 3
  SETTABLEKS R1 R0 K2 ["DragEpsilon"]
  LOADN R1 7
  SETTABLEKS R1 R0 K3 ["DragTangentToCenterToDeleteZoneSizePixels"]
  LOADK R1 K10 ["PathEditorAction"]
  SETTABLEKS R1 R0 K4 ["ChangeHistoryServiceActionName"]
  LOADN R1 50
  SETTABLEKS R1 R0 K5 ["DefaultTangentLength"]
  RETURN R0 1
