MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Toolbar"]
  DUPTABLE R5 K13 [{"AnchorPoint", "Position"}]
  GETIMPORT R6 K16 [Vector2.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["AnchorPoint"]
  GETIMPORT R6 K19 [UDim2.fromScale]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Position"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K20 ["::UIPadding"]
  DUPTABLE R9 K22 [{"PaddingBottom"}]
  GETIMPORT R10 K24 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["PaddingBottom"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  NEWTABLE R7 0 0
  CALL R3 4 -1
  RETURN R3 -1
