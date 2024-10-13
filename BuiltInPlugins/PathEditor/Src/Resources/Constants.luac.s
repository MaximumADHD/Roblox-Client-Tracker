MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K10 [{"PointSize", "PointHalfSize", "SnapToPointEpsilon", "SnapToSegmentEpsilon", "DragEpsilon", "DragTangentToCenterToDeleteZoneSizePixels", "ChangeHistoryServiceActionName", "DefaultTangentLength", "MaxControlPoints", "SurfaceGuiDragRaycastDepth"}]
  GETIMPORT R1 K13 [Vector2.new]
  LOADN R2 16
  LOADN R3 16
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["PointSize"]
  GETIMPORT R1 K13 [Vector2.new]
  LOADN R2 8
  LOADN R3 8
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["PointHalfSize"]
  LOADN R1 6
  SETTABLEKS R1 R0 K2 ["SnapToPointEpsilon"]
  LOADN R1 4
  SETTABLEKS R1 R0 K3 ["SnapToSegmentEpsilon"]
  LOADN R1 3
  SETTABLEKS R1 R0 K4 ["DragEpsilon"]
  LOADN R1 7
  SETTABLEKS R1 R0 K5 ["DragTangentToCenterToDeleteZoneSizePixels"]
  LOADK R1 K14 ["PathEditorAction"]
  SETTABLEKS R1 R0 K6 ["ChangeHistoryServiceActionName"]
  LOADN R1 50
  SETTABLEKS R1 R0 K7 ["DefaultTangentLength"]
  LOADN R1 50
  SETTABLEKS R1 R0 K8 ["MaxControlPoints"]
  LOADN R1 136
  SETTABLEKS R1 R0 K9 ["SurfaceGuiDragRaycastDepth"]
  RETURN R0 1
