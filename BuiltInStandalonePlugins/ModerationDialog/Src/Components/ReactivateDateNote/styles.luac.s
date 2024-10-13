MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-ReactivateDateNote"]
  DUPTABLE R5 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K14 ["::UIListLayout"]
  DUPTABLE R9 K18 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R10 K21 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K15 ["FillDirection"]
  GETIMPORT R10 K24 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Padding"]
  GETIMPORT R10 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K17 ["SortOrder"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
