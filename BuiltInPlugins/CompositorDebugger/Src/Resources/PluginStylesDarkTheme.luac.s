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
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleSheet"]
  DUPTABLE R3 K15 [{"InactiveLayer", "ActiveLayer", "LayerHover", "ActiveTimeBar", "InactiveTimeBar"}]
  GETIMPORT R4 K18 [Color3.fromHex]
  LOADK R5 K19 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["InactiveLayer"]
  GETIMPORT R4 K18 [Color3.fromHex]
  LOADK R5 K20 ["#E1E1E1"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["ActiveLayer"]
  GETIMPORT R4 K18 [Color3.fromHex]
  LOADK R5 K21 ["#9B9B9B"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["LayerHover"]
  GETIMPORT R4 K18 [Color3.fromHex]
  LOADK R5 K22 ["#008BDB"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["ActiveTimeBar"]
  GETIMPORT R4 K18 [Color3.fromHex]
  LOADK R5 K19 ["#565656"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["InactiveTimeBar"]
  MOVE R4 R2
  LOADK R5 K23 ["CompositorDebuggerDarkTheme"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
