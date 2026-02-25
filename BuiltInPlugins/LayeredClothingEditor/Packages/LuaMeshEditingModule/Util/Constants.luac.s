MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R3 K6 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K17 [{"ControlPoint", "ControlEdge", "ControlPointsFolderName", "ToolAdorneesFolderName", "ControlPointsAdornmentsFolderName", "DefaultRadiusThickness", "DefaultInnerRadiusThickness", "FalloffCursorAdjustment", "MinimumBrushRadius", "VertexToolBase"}]
       15 DUPTABLE                         R3 K24 [{"DefaultColor", "HoveredCenterColor", "HoveredColor", "SelectedColor", "SelectedColorNoWeight", "Size"}]
       16 GETIMPORT                        R4 K27 [Color3.new]
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 LOADN                            R7 1
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K18 ["DefaultColor"]
       24 GETIMPORT                        R4 K27 [Color3.new]
       26 LOADN                            R5 0
       27 LOADN                            R6 1
       28 LOADN                            R7 0
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K19 ["HoveredCenterColor"]
       32 GETIMPORT                        R4 K27 [Color3.new]
       34 LOADN                            R5 1
       35 LOADN                            R6 1
       36 LOADN                            R7 0
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K20 ["HoveredColor"]
       40 GETIMPORT                        R4 K27 [Color3.new]
       42 LOADN                            R5 1
       43 LOADN                            R6 1
       44 LOADN                            R7 0
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K21 ["SelectedColor"]
       48 GETIMPORT                        R4 K27 [Color3.new]
       50 LOADN                            R5 1
       51 LOADN                            R6 0
       52 LOADN                            R7 0
       53 CALL                             R4 3 1
       54 SETTABLEKS                       R4 R3 K22 ["SelectedColorNoWeight"]
       56 MOVE                             R5 R1
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+2]
       59 LOADK                            R4 K28 [0.012]
       60 JUMP                             ; [+1]
       61 LOADK                            R4 K29 [0.015]
       62 SETTABLEKS                       R4 R3 K23 ["Size"]
       64 SETTABLEKS                       R3 R2 K7 ["ControlPoint"]
       66 DUPTABLE                         R3 K31 [{"DefaultThickness"}]
       67 LOADN                            R4 2
       68 SETTABLEKS                       R4 R3 K30 ["DefaultThickness"]
       70 SETTABLEKS                       R3 R2 K8 ["ControlEdge"]
       72 LOADK                            R3 K32 ["MeshEditingModuleControlPoints"]
       73 SETTABLEKS                       R3 R2 K9 ["ControlPointsFolderName"]
       75 LOADK                            R3 K33 ["MeshEditingModuleToolAdornees"]
       76 SETTABLEKS                       R3 R2 K10 ["ToolAdorneesFolderName"]
       78 LOADK                            R3 K34 ["MeshEditingModuleControlPointsAdornments"]
       79 SETTABLEKS                       R3 R2 K11 ["ControlPointsAdornmentsFolderName"]
       81 LOADN                            R3 3
       82 SETTABLEKS                       R3 R2 K12 ["DefaultRadiusThickness"]
       84 LOADN                            R3 1
       85 SETTABLEKS                       R3 R2 K13 ["DefaultInnerRadiusThickness"]
       87 LOADK                            R3 K35 [0.7]
       88 SETTABLEKS                       R3 R2 K14 ["FalloffCursorAdjustment"]
       90 LOADK                            R3 K36 [0.001]
       91 SETTABLEKS                       R3 R2 K15 ["MinimumBrushRadius"]
       93 DUPTABLE                         R3 K39 [{"DefaultWireframeColor", "DefaultWireframeSegmentsColor"}]
       94 GETIMPORT                        R4 K41 [Color3.fromRGB]
       96 LOADN                            R5 140
       97 LOADN                            R6 65
       98 LOADN                            R7 168
       99 CALL                             R4 3 1
      100 SETTABLEKS                       R4 R3 K37 ["DefaultWireframeColor"]
      102 GETIMPORT                        R4 K41 [Color3.fromRGB]
      104 LOADN                            R5 255
      105 LOADN                            R6 165
      106 LOADN                            R7 0
      107 CALL                             R4 3 1
      108 SETTABLEKS                       R4 R3 K38 ["DefaultWireframeSegmentsColor"]
      110 SETTABLEKS                       R3 R2 K16 ["VertexToolBase"]
      112 RETURN                           R2 1
