MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"White", "WorldProvider", "WorldView"}]
  GETIMPORT R1 K6 [Color3.fromRGB]
  LOADN R2 255
  LOADN R3 255
  LOADN R4 255
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["White"]
  DUPTABLE R1 K9 [{"AdornedPartLimit", "CameraMinMovementStepForPartUpdate"}]
  LOADN R2 200
  SETTABLEKS R2 R1 K7 ["AdornedPartLimit"]
  LOADN R2 50
  SETTABLEKS R2 R1 K8 ["CameraMinMovementStepForPartUpdate"]
  SETTABLEKS R1 R0 K1 ["WorldProvider"]
  DUPTABLE R1 K12 [{"BoxAdorn", "OutlineAdorn"}]
  DUPTABLE R2 K17 [{"Size", "Transparency", "LineThickness", "SurfaceTransparency"}]
  LOADK R3 K18 [{1.5, 1.5, 1.5}]
  SETTABLEKS R3 R2 K13 ["Size"]
  LOADK R3 K19 [0.3]
  SETTABLEKS R3 R2 K14 ["Transparency"]
  LOADK R3 K20 [0.03]
  SETTABLEKS R3 R2 K15 ["LineThickness"]
  LOADK R3 K21 [0.7]
  SETTABLEKS R3 R2 K16 ["SurfaceTransparency"]
  SETTABLEKS R2 R1 K10 ["BoxAdorn"]
  DUPTABLE R2 K22 [{"Size", "Transparency", "LineThickness"}]
  LOADK R3 K18 [{1.5, 1.5, 1.5}]
  SETTABLEKS R3 R2 K13 ["Size"]
  LOADK R3 K19 [0.3]
  SETTABLEKS R3 R2 K14 ["Transparency"]
  LOADK R3 K23 [0.05]
  SETTABLEKS R3 R2 K15 ["LineThickness"]
  SETTABLEKS R2 R1 K11 ["OutlineAdorn"]
  SETTABLEKS R1 R0 K2 ["WorldView"]
  RETURN R0 1
