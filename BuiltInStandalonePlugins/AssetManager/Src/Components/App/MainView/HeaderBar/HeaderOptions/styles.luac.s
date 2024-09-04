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
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K14 ["> .ClearFilter"]
  DUPTABLE R10 K16 [{"Size"}]
  SETTABLEKS R3 R10 K15 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K17 ["::UIPadding"]
  DUPTABLE R11 K21 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K24 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["PaddingRight"]
  GETIMPORT R12 K24 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["PaddingTop"]
  GETIMPORT R12 K24 [UDim.new]
  LOADN R13 0
  LOADN R14 5
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 ["::UIListLayout"]
  DUPTABLE R12 K29 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R13 K32 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K26 ["FillDirection"]
  GETIMPORT R13 K24 [UDim.new]
  LOADN R14 0
  LOADN R15 20
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["Padding"]
  GETIMPORT R13 K34 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K28 ["SortOrder"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K37 [{"FilterSize", "FilterIconSize"}]
  GETIMPORT R9 K12 [UDim2.fromOffset]
  LOADN R10 80
  LOADN R11 32
  CALL R9 2 1
  SETTABLEKS R9 R8 K35 ["FilterSize"]
  SETTABLEKS R3 R8 K36 ["FilterIconSize"]
  CALL R4 4 -1
  RETURN R4 -1
