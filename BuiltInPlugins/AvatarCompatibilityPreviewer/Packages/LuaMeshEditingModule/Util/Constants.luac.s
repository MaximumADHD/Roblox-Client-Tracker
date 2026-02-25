MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"ControlPoint", "ControlEdge", "ControlPointsAdornmentsFolderName", "DefaultRadiusThickness", "DefaultInnerRadiusThickness", "FalloffCursorAdjustment", "VertexToolBase"}]
        2 DUPTABLE                         R1 K14 [{"DefaultColor", "HoveredCenterColor", "HoveredColor", "SelectedColor", "SelectedColorNoWeight", "PointRadius"}]
        3 GETIMPORT                        R2 K17 [Color3.fromRGB]
        5 LOADN                            R3 53
        6 LOADN                            R4 181
        7 LOADN                            R5 206
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K8 ["DefaultColor"]
       11 GETIMPORT                        R2 K19 [Color3.new]
       13 LOADN                            R3 0
       14 LOADN                            R4 1
       15 LOADN                            R5 0
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K9 ["HoveredCenterColor"]
       19 GETIMPORT                        R2 K19 [Color3.new]
       21 LOADN                            R3 1
       22 LOADN                            R4 1
       23 LOADN                            R5 0
       24 CALL                             R2 3 1
       25 SETTABLEKS                       R2 R1 K10 ["HoveredColor"]
       27 GETIMPORT                        R2 K17 [Color3.fromRGB]
       29 LOADN                            R3 255
       30 LOADN                            R4 64
       31 LOADN                            R5 0
       32 CALL                             R2 3 1
       33 SETTABLEKS                       R2 R1 K11 ["SelectedColor"]
       35 GETIMPORT                        R2 K17 [Color3.fromRGB]
       37 LOADN                            R3 255
       38 LOADN                            R4 183
       39 LOADN                            R5 0
       40 CALL                             R2 3 1
       41 SETTABLEKS                       R2 R1 K12 ["SelectedColorNoWeight"]
       43 LOADK                            R2 K20 [0.012]
       44 SETTABLEKS                       R2 R1 K13 ["PointRadius"]
       46 SETTABLEKS                       R1 R0 K0 ["ControlPoint"]
       48 DUPTABLE                         R1 K22 [{"DefaultThickness"}]
       49 LOADN                            R2 2
       50 SETTABLEKS                       R2 R1 K21 ["DefaultThickness"]
       52 SETTABLEKS                       R1 R0 K1 ["ControlEdge"]
       54 LOADK                            R1 K23 ["MeshEditingModuleControlPointsAdornments"]
       55 SETTABLEKS                       R1 R0 K2 ["ControlPointsAdornmentsFolderName"]
       57 LOADN                            R1 3
       58 SETTABLEKS                       R1 R0 K3 ["DefaultRadiusThickness"]
       60 LOADN                            R1 1
       61 SETTABLEKS                       R1 R0 K4 ["DefaultInnerRadiusThickness"]
       63 LOADK                            R1 K24 [0.7]
       64 SETTABLEKS                       R1 R0 K5 ["FalloffCursorAdjustment"]
       66 DUPTABLE                         R1 K29 [{"DefaultWireframeColor", "DefaultWireframeSegmentsColor", "DefaultWireframeSelectedColor", "DefaultWireframeSelectedNoWeightColor"}]
       67 GETIMPORT                        R2 K17 [Color3.fromRGB]
       69 LOADN                            R3 24
       70 LOADN                            R4 84
       71 LOADN                            R5 195
       72 CALL                             R2 3 1
       73 SETTABLEKS                       R2 R1 K25 ["DefaultWireframeColor"]
       75 GETIMPORT                        R2 K17 [Color3.fromRGB]
       77 LOADN                            R3 53
       78 LOADN                            R4 181
       79 LOADN                            R5 206
       80 CALL                             R2 3 1
       81 SETTABLEKS                       R2 R1 K26 ["DefaultWireframeSegmentsColor"]
       83 GETIMPORT                        R2 K17 [Color3.fromRGB]
       85 LOADN                            R3 255
       86 LOADN                            R4 64
       87 LOADN                            R5 0
       88 CALL                             R2 3 1
       89 SETTABLEKS                       R2 R1 K27 ["DefaultWireframeSelectedColor"]
       91 GETIMPORT                        R2 K17 [Color3.fromRGB]
       93 LOADN                            R3 255
       94 LOADN                            R4 183
       95 LOADN                            R5 0
       96 CALL                             R2 3 1
       97 SETTABLEKS                       R2 R1 K28 ["DefaultWireframeSelectedNoWeightColor"]
       99 SETTABLEKS                       R1 R0 K6 ["VertexToolBase"]
      101 RETURN                           R0 1
