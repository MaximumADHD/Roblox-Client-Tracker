MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{"PointSize", "PointHalfSize", "SnapToPointEpsilon", "SnapToSegmentEpsilon", "DragEpsilon", "DragTangentToCenterToDeleteZoneSizePixels", "ChangeHistoryServiceActionName", "DefaultTangentLength", "MaxControlPoints", "SurfaceGuiDragRaycastDepth"}]
        2 GETIMPORT                        R1 K13 [Vector2.new]
        4 LOADN                            R2 16
        5 LOADN                            R3 16
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["PointSize"]
        9 GETIMPORT                        R1 K13 [Vector2.new]
       11 LOADN                            R2 8
       12 LOADN                            R3 8
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K1 ["PointHalfSize"]
       16 LOADN                            R1 6
       17 SETTABLEKS                       R1 R0 K2 ["SnapToPointEpsilon"]
       19 LOADN                            R1 4
       20 SETTABLEKS                       R1 R0 K3 ["SnapToSegmentEpsilon"]
       22 LOADN                            R1 3
       23 SETTABLEKS                       R1 R0 K4 ["DragEpsilon"]
       25 LOADN                            R1 7
       26 SETTABLEKS                       R1 R0 K5 ["DragTangentToCenterToDeleteZoneSizePixels"]
       28 LOADK                            R1 K14 ["PathEditorAction"]
       29 SETTABLEKS                       R1 R0 K6 ["ChangeHistoryServiceActionName"]
       31 LOADN                            R1 50
       32 SETTABLEKS                       R1 R0 K7 ["DefaultTangentLength"]
       34 LOADN                            R1 50
       35 SETTABLEKS                       R1 R0 K8 ["MaxControlPoints"]
       37 LOADN                            R1 136
       38 SETTABLEKS                       R1 R0 K9 ["SurfaceGuiDragRaycastDepth"]
       40 RETURN                           R0 1
