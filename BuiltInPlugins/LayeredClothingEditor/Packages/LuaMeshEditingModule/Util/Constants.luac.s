MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K24 [{["ControlPoint"], ["ControlEdge"], ["ControlPointsFolderName"] = "MeshEditingModuleControlPoints", ["ToolAdorneesFolderName"] = "MeshEditingModuleToolAdornees", ["ControlPointsAdornmentsFolderName"] = "MeshEditingModuleControlPointsAdornments", ["DefaultRadiusThickness"] = 3, ["DefaultInnerRadiusThickness"] = 1, ["FalloffCursorAdjustment"] = 0.7, ["MinimumBrushRadius"] = 0.001, ["VertexToolBase"]}]
       15 DUPTABLE                         R3 K31 [{"DefaultColor", "HoveredCenterColor", "HoveredColor", "SelectedColor", "SelectedColorNoWeight", "Size"}]
       16 GETIMPORT                        R4 K34 [Color3.new]
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 LOADN                            R7 1
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K25 ["DefaultColor"]
       24 GETIMPORT                        R4 K34 [Color3.new]
       26 LOADN                            R5 0
       27 LOADN                            R6 1
       28 LOADN                            R7 0
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K26 ["HoveredCenterColor"]
       32 GETIMPORT                        R4 K34 [Color3.new]
       34 LOADN                            R5 1
       35 LOADN                            R6 1
       36 LOADN                            R7 0
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K27 ["HoveredColor"]
       40 GETIMPORT                        R4 K34 [Color3.new]
       42 LOADN                            R5 1
       43 LOADN                            R6 1
       44 LOADN                            R7 0
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K28 ["SelectedColor"]
       48 GETIMPORT                        R4 K34 [Color3.new]
       50 LOADN                            R5 1
       51 LOADN                            R6 0
       52 LOADN                            R7 0
       53 CALL                             R4 3 1
       54 SETTABLEKS                       R4 R3 K29 ["SelectedColorNoWeight"]
       56 MOVE                             R5 R1
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+2]
       59 LOADK                            R4 K35 [0.012]
       60 JUMP                             ; [+1]
       61 LOADK                            R4 K36 [0.015]
       62 SETTABLEKS                       R4 R3 K30 ["Size"]
       64 SETTABLEKS                       R3 R2 K7 ["ControlPoint"]
       66 DUPTABLE                         R3 K39 [{["DefaultThickness"] = 2}]
       67 SETTABLEKS                       R3 R2 K8 ["ControlEdge"]
       69 DUPTABLE                         R3 K42 [{"DefaultWireframeColor", "DefaultWireframeSegmentsColor"}]
       70 GETIMPORT                        R4 K44 [Color3.fromRGB]
       72 LOADN                            R5 140
       73 LOADN                            R6 65
       74 LOADN                            R7 168
       75 CALL                             R4 3 1
       76 SETTABLEKS                       R4 R3 K40 ["DefaultWireframeColor"]
       78 GETIMPORT                        R4 K44 [Color3.fromRGB]
       80 LOADN                            R5 255
       81 LOADN                            R6 165
       82 LOADN                            R7 0
       83 CALL                             R4 3 1
       84 SETTABLEKS                       R4 R3 K41 ["DefaultWireframeSegmentsColor"]
       86 SETTABLEKS                       R3 R2 K23 ["VertexToolBase"]
       88 RETURN                           R2 1
