MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K3 [{[1] = "Cancel", ["Pause"] = "Pause", ["Resume"] = "Resume"}]
        4 SETTABLEKS                       R1 R0 K4 ["DialogOption"]
        6 DUPTABLE                         R2 K7 [{["Gizmo"] = "Gizmo", ["History"] = "History"}]
        7 SETTABLEKS                       R2 R0 K8 ["OperationSource"]
        9 DUPTABLE                         R3 K12 [{["Active"] = "Active", ["Inactive"] = "Inactive", ["Pending"] = "Pending"}]
       10 SETTABLEKS                       R3 R0 K13 ["RaycastType"]
       12 DUPTABLE                         R4 K22 [{["Apply"] = "Apply", ["CopySelected"] = "CopySelected", ["CutSelected"] = "CutSelected", ["DeleteSelected"] = "DeleteSelected", ["DuplicateSelected"] = "DuplicateSelected", ["EditPlane"] = "EditPlane", ["PasteSelected"] = "PasteSelected", ["Quit"] = "Quit"}]
       13 SETTABLEKS                       R4 R0 K23 ["PluginAction"]
       15 DUPTABLE                         R5 K29 [{["Duplicate"] = "Duplicate", ["Import"] = "Import", ["Move"] = "Move", ["Paste"] = "Paste", ["Stamp"] = "Stamp"}]
       16 SETTABLEKS                       R5 R0 K30 ["TransformMode"]
       18 DUPTABLE                         R6 K33 [{["Colormap"] = "Colormap", ["Heightmap"] = "Heightmap"}]
       19 SETTABLEKS                       R6 R0 K34 ["ImageType"]
       21 RETURN                           R0 1
