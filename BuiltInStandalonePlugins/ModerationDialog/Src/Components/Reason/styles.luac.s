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
  LOADK R4 K10 [".Component-Reason"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K11 ["::UIListLayout"]
  DUPTABLE R9 K15 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R10 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K12 ["FillDirection"]
  GETIMPORT R10 K21 [UDim.new]
  LOADN R11 0
  LOADN R12 7
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Padding"]
  GETIMPORT R10 K23 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K14 ["SortOrder"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
