MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K17 [{[1], ["PointHalfSize"], ["SnapToPointEpsilon"] = 6, ["SnapToSegmentEpsilon"] = 4, ["DragEpsilon"] = 3, ["DragTangentToCenterToDeleteZoneSizePixels"] = 7, ["ChangeHistoryServiceActionName"] = "PathEditorAction", ["DefaultTangentLength"] = 50, ["MaxControlPoints"] = 50, ["SurfaceGuiDragRaycastDepth"] = 5000}]
        2 GETIMPORT                        R1 K20 [Vector2.new]
        4 LOADN                            R2 16
        5 LOADN                            R3 16
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["PointSize"]
        9 GETIMPORT                        R1 K20 [Vector2.new]
       11 LOADN                            R2 8
       12 LOADN                            R3 8
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K1 ["PointHalfSize"]
       16 RETURN                           R0 1
