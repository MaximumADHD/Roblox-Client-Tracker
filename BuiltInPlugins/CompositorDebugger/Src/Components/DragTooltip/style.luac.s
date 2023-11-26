MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Style"]
  GETTABLEKS R3 R2 K9 ["StyleKey"]
  DUPTABLE R4 K15 [{"Padding", "MaxWidth", "ShowDelay", "Offset", "DropShadow"}]
  LOADN R5 5
  SETTABLEKS R5 R4 K10 ["Padding"]
  LOADN R5 200
  SETTABLEKS R5 R4 K11 ["MaxWidth"]
  LOADK R5 K16 [0.3]
  SETTABLEKS R5 R4 K12 ["ShowDelay"]
  GETIMPORT R5 K19 [Vector2.new]
  LOADN R6 10
  LOADN R7 5
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["Offset"]
  DUPTABLE R5 K25 [{"Color", "Image", "ImageSize", "Offset", "Radius", "Transparency"}]
  GETTABLEKS R6 R3 K26 ["Border"]
  SETTABLEKS R6 R5 K20 ["Color"]
  LOADK R6 K27 ["rbxasset://textures/StudioSharedUI/dropShadow.png"]
  SETTABLEKS R6 R5 K21 ["Image"]
  LOADN R6 16
  SETTABLEKS R6 R5 K22 ["ImageSize"]
  GETIMPORT R6 K19 [Vector2.new]
  CALL R6 0 1
  SETTABLEKS R6 R5 K13 ["Offset"]
  LOADN R6 3
  SETTABLEKS R6 R5 K23 ["Radius"]
  LOADN R6 0
  SETTABLEKS R6 R5 K24 ["Transparency"]
  SETTABLEKS R5 R4 K14 ["DropShadow"]
  RETURN R4 1
