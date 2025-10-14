MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"ControlPoint", "ControlEdge", "ControlPointsAdornmentsFolderName", "DefaultRadiusThickness", "DefaultInnerRadiusThickness", "FalloffCursorAdjustment", "VertexToolBase"}]
  DUPTABLE R1 K14 [{"DefaultColor", "HoveredCenterColor", "HoveredColor", "SelectedColor", "SelectedColorNoWeight", "PointRadius"}]
  GETIMPORT R2 K17 [Color3.fromRGB]
  LOADN R3 53
  LOADN R4 181
  LOADN R5 206
  CALL R2 3 1
  SETTABLEKS R2 R1 K8 ["DefaultColor"]
  GETIMPORT R2 K19 [Color3.new]
  LOADN R3 0
  LOADN R4 1
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K9 ["HoveredCenterColor"]
  GETIMPORT R2 K19 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K10 ["HoveredColor"]
  GETIMPORT R2 K17 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 64
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K11 ["SelectedColor"]
  GETIMPORT R2 K17 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 183
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K12 ["SelectedColorNoWeight"]
  LOADK R2 K20 [0.012]
  SETTABLEKS R2 R1 K13 ["PointRadius"]
  SETTABLEKS R1 R0 K0 ["ControlPoint"]
  DUPTABLE R1 K22 [{"DefaultThickness"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K21 ["DefaultThickness"]
  SETTABLEKS R1 R0 K1 ["ControlEdge"]
  LOADK R1 K23 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R1 R0 K2 ["ControlPointsAdornmentsFolderName"]
  LOADN R1 3
  SETTABLEKS R1 R0 K3 ["DefaultRadiusThickness"]
  LOADN R1 1
  SETTABLEKS R1 R0 K4 ["DefaultInnerRadiusThickness"]
  LOADK R1 K24 [0.7]
  SETTABLEKS R1 R0 K5 ["FalloffCursorAdjustment"]
  DUPTABLE R1 K29 [{"DefaultWireframeColor", "DefaultWireframeSegmentsColor", "DefaultWireframeSelectedColor", "DefaultWireframeSelectedNoWeightColor"}]
  GETIMPORT R2 K17 [Color3.fromRGB]
  LOADN R3 24
  LOADN R4 84
  LOADN R5 195
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["DefaultWireframeColor"]
  GETIMPORT R2 K17 [Color3.fromRGB]
  LOADN R3 53
  LOADN R4 181
  LOADN R5 206
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["DefaultWireframeSegmentsColor"]
  GETIMPORT R2 K17 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 64
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K27 ["DefaultWireframeSelectedColor"]
  GETIMPORT R2 K17 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 183
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K28 ["DefaultWireframeSelectedNoWeightColor"]
  SETTABLEKS R1 R0 K6 ["VertexToolBase"]
  RETURN R0 1
