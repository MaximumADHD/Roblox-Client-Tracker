PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 4 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Tag"]
  LOADK R5 K3 ["VisualizationModes-Bottom-Divider"]
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R0 K4 ["LayoutOrder"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  GETTABLEKS R4 R0 K5 ["Visible"]
  SETTABLEKS R4 R3 K5 ["Visible"]
  DUPTABLE R4 K7 [{"DividerRender"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K6 ["DividerRender"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
