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
  DUPTABLE R4 K13 [{"Image", "Size", "Color"}]
  LOADK R5 K14 ["rbxasset://textures/CompositorDebugger/settings.png"]
  SETTABLEKS R5 R4 K10 ["Image"]
  GETIMPORT R5 K17 [UDim2.fromOffset]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Size"]
  GETTABLEKS R5 R3 K18 ["MainText"]
  SETTABLEKS R5 R4 K12 ["Color"]
  RETURN R4 1
