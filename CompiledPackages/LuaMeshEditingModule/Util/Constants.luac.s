MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Flags"]
  GETTABLEKS R2 R3 K6 ["getFFlagAvatarPreviewerCageEditingTools"]
  CALL R1 1 1
  DUPTABLE R2 K17 [{"ControlPoint", "ControlEdge", "ControlPointsFolderName", "ToolAdorneesFolderName", "ControlPointsAdornmentsFolderName", "DefaultRadiusThickness", "DefaultInnerRadiusThickness", "FalloffCursorAdjustment", "MinimumBrushRadius", "VertexToolBase"}]
  DUPTABLE R3 K24 [{"DefaultColor", "HoveredCenterColor", "HoveredColor", "SelectedColor", "SelectedColorNoWeight", "Size"}]
  GETIMPORT R4 K27 [Color3.new]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K18 ["DefaultColor"]
  GETIMPORT R4 K27 [Color3.new]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K19 ["HoveredCenterColor"]
  GETIMPORT R4 K27 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K20 ["HoveredColor"]
  GETIMPORT R4 K27 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K21 ["SelectedColor"]
  GETIMPORT R4 K27 [Color3.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K22 ["SelectedColorNoWeight"]
  MOVE R5 R1
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADK R4 K28 [0.012]
  JUMP [+1]
  LOADK R4 K29 [0.015]
  SETTABLEKS R4 R3 K23 ["Size"]
  SETTABLEKS R3 R2 K7 ["ControlPoint"]
  DUPTABLE R3 K31 [{"DefaultThickness"}]
  LOADN R4 2
  SETTABLEKS R4 R3 K30 ["DefaultThickness"]
  SETTABLEKS R3 R2 K8 ["ControlEdge"]
  LOADK R3 K32 ["MeshEditingModuleControlPoints"]
  SETTABLEKS R3 R2 K9 ["ControlPointsFolderName"]
  LOADK R3 K33 ["MeshEditingModuleToolAdornees"]
  SETTABLEKS R3 R2 K10 ["ToolAdorneesFolderName"]
  LOADK R3 K34 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R3 R2 K11 ["ControlPointsAdornmentsFolderName"]
  LOADN R3 3
  SETTABLEKS R3 R2 K12 ["DefaultRadiusThickness"]
  LOADN R3 1
  SETTABLEKS R3 R2 K13 ["DefaultInnerRadiusThickness"]
  LOADK R3 K35 [0.7]
  SETTABLEKS R3 R2 K14 ["FalloffCursorAdjustment"]
  LOADK R3 K36 [0.001]
  SETTABLEKS R3 R2 K15 ["MinimumBrushRadius"]
  DUPTABLE R3 K39 [{"DefaultWireframeColor", "DefaultWireframeSegmentsColor"}]
  GETIMPORT R4 K41 [Color3.fromRGB]
  LOADN R5 140
  LOADN R6 65
  LOADN R7 168
  CALL R4 3 1
  SETTABLEKS R4 R3 K37 ["DefaultWireframeColor"]
  GETIMPORT R4 K41 [Color3.fromRGB]
  LOADN R5 255
  LOADN R6 165
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K38 ["DefaultWireframeSegmentsColor"]
  SETTABLEKS R3 R2 K16 ["VertexToolBase"]
  RETURN R2 1
