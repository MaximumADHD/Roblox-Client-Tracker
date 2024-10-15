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
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K20 ["::UIPadding"]
  DUPTABLE R9 K22 [{"PaddingBottom"}]
  LOADK R10 K23 ["$Padding"]
  SETTABLEKS R10 R9 K21 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K24 ["::UIListLayout"]
  DUPTABLE R10 K30 [{"FillDirection", "Padding", "SortOrder", "Wraps", "HorizontalFlex"}]
  GETIMPORT R11 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K25 ["FillDirection"]
  LOADK R11 K23 ["$Padding"]
  SETTABLEKS R11 R10 K26 ["Padding"]
  GETIMPORT R11 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K27 ["SortOrder"]
  LOADB R11 1
  SETTABLEKS R11 R10 K28 ["Wraps"]
  GETIMPORT R11 K38 [Enum.UIFlexAlignment.None]
  SETTABLEKS R11 R10 K29 ["HorizontalFlex"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  NEWTABLE R7 0 0
  CALL R3 4 -1
  RETURN R3 -1
