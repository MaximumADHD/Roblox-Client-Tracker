MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-DialogContainer"]
  DUPTABLE R5 K14 [{"BackgroundColor3", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R6 K15 ["$ForegroundMain"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  LOADN R6 0
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K16 ["::UIListLayout"]
  DUPTABLE R9 K20 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R10 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K17 ["FillDirection"]
  GETIMPORT R10 K26 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Padding"]
  GETIMPORT R10 K28 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K19 ["SortOrder"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K29 ["::UIPadding"]
  DUPTABLE R10 K34 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["PaddingTop"]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["PaddingRight"]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["PaddingBottom"]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["PaddingLeft"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
