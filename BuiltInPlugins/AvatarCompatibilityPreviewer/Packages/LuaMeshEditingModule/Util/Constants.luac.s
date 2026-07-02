MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K11 [{[1], ["ControlEdge"], ["ControlPointsAdornmentsFolderName"] = "MeshEditingModuleControlPointsAdornments", ["DefaultRadiusThickness"] = 3, ["DefaultInnerRadiusThickness"] = 1, ["FalloffCursorAdjustment"] = 0.7, ["VertexToolBase"]}]
        2 DUPTABLE                         R1 K19 [{["DefaultColor"], ["HoveredCenterColor"], ["HoveredColor"], ["SelectedColor"], ["SelectedColorNoWeight"], ["PointRadius"] = 0.012}]
        3 GETIMPORT                        R2 K22 [Color3.fromRGB]
        5 LOADN                            R3 53
        6 LOADN                            R4 181
        7 LOADN                            R5 206
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K12 ["DefaultColor"]
       11 GETIMPORT                        R2 K24 [Color3.new]
       13 LOADN                            R3 0
       14 LOADN                            R4 1
       15 LOADN                            R5 0
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K13 ["HoveredCenterColor"]
       19 GETIMPORT                        R2 K24 [Color3.new]
       21 LOADN                            R3 1
       22 LOADN                            R4 1
       23 LOADN                            R5 0
       24 CALL                             R2 3 1
       25 SETTABLEKS                       R2 R1 K14 ["HoveredColor"]
       27 GETIMPORT                        R2 K22 [Color3.fromRGB]
       29 LOADN                            R3 255
       30 LOADN                            R4 64
       31 LOADN                            R5 0
       32 CALL                             R2 3 1
       33 SETTABLEKS                       R2 R1 K15 ["SelectedColor"]
       35 GETIMPORT                        R2 K22 [Color3.fromRGB]
       37 LOADN                            R3 255
       38 LOADN                            R4 183
       39 LOADN                            R5 0
       40 CALL                             R2 3 1
       41 SETTABLEKS                       R2 R1 K16 ["SelectedColorNoWeight"]
       43 SETTABLEKS                       R1 R0 K0 ["ControlPoint"]
       45 DUPTABLE                         R1 K27 [{["DefaultThickness"] = 2}]
       46 SETTABLEKS                       R1 R0 K1 ["ControlEdge"]
       48 DUPTABLE                         R1 K32 [{"DefaultWireframeColor", "DefaultWireframeSegmentsColor", "DefaultWireframeSelectedColor", "DefaultWireframeSelectedNoWeightColor"}]
       49 GETIMPORT                        R2 K22 [Color3.fromRGB]
       51 LOADN                            R3 24
       52 LOADN                            R4 84
       53 LOADN                            R5 195
       54 CALL                             R2 3 1
       55 SETTABLEKS                       R2 R1 K28 ["DefaultWireframeColor"]
       57 GETIMPORT                        R2 K22 [Color3.fromRGB]
       59 LOADN                            R3 53
       60 LOADN                            R4 181
       61 LOADN                            R5 206
       62 CALL                             R2 3 1
       63 SETTABLEKS                       R2 R1 K29 ["DefaultWireframeSegmentsColor"]
       65 GETIMPORT                        R2 K22 [Color3.fromRGB]
       67 LOADN                            R3 255
       68 LOADN                            R4 64
       69 LOADN                            R5 0
       70 CALL                             R2 3 1
       71 SETTABLEKS                       R2 R1 K30 ["DefaultWireframeSelectedColor"]
       73 GETIMPORT                        R2 K22 [Color3.fromRGB]
       75 LOADN                            R3 255
       76 LOADN                            R4 183
       77 LOADN                            R5 0
       78 CALL                             R2 3 1
       79 SETTABLEKS                       R2 R1 K31 ["DefaultWireframeSelectedNoWeightColor"]
       81 SETTABLEKS                       R1 R0 K10 ["VertexToolBase"]
       83 RETURN                           R0 1
