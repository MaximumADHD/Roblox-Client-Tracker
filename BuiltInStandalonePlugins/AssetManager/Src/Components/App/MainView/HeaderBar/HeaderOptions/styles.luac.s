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
  GETIMPORT R3 K12 [UDim2.fromOffset]
  LOADN R4 20
  LOADN R5 20
  CALL R3 2 1
  MOVE R4 R2
  LOADK R5 K13 [".HeaderOptions"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 4
  MOVE R8 R2
  LOADK R9 K14 ["> .ClearFilter"]
  DUPTABLE R10 K16 [{"Size"}]
  SETTABLEKS R3 R10 K15 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K17 ["> .BulkImportButton"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K18 ["> Image .Disabled"]
  DUPTABLE R15 K20 [{"ImageColor3"}]
  LOADK R16 K21 ["$TextSecondary"]
  SETTABLEKS R16 R15 K19 ["ImageColor3"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K22 ["::UIPadding"]
  DUPTABLE R12 K26 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K29 [UDim.new]
  LOADN R14 0
  LOADN R15 20
  CALL R13 2 1
  SETTABLEKS R13 R12 K23 ["PaddingRight"]
  GETIMPORT R13 K29 [UDim.new]
  LOADN R14 0
  LOADN R15 5
  CALL R13 2 1
  SETTABLEKS R13 R12 K24 ["PaddingTop"]
  GETIMPORT R13 K29 [UDim.new]
  LOADN R14 0
  LOADN R15 5
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K30 ["::UIListLayout"]
  DUPTABLE R13 K34 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R14 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K31 ["FillDirection"]
  GETIMPORT R14 K29 [UDim.new]
  LOADN R15 0
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["Padding"]
  GETIMPORT R14 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K33 ["SortOrder"]
  CALL R11 2 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K42 [{"FilterSize", "FilterIconSize"}]
  GETIMPORT R9 K12 [UDim2.fromOffset]
  LOADN R10 80
  LOADN R11 32
  CALL R9 2 1
  SETTABLEKS R9 R8 K40 ["FilterSize"]
  SETTABLEKS R3 R8 K41 ["FilterIconSize"]
  CALL R4 4 -1
  RETURN R4 -1
