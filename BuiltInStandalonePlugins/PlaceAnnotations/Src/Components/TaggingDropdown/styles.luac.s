MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-TaggingDropdown"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K11 ["::UIStroke"]
  DUPTABLE R9 K13 [{"Thickness"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K12 ["Thickness"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K14 ["::UIPadding"]
  DUPTABLE R10 K17 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K20 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["PaddingTop"]
  GETIMPORT R11 K20 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K21 ["::UICorner"]
  DUPTABLE R11 K23 [{"CornerRadius"}]
  GETIMPORT R12 K20 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K24 ["> .Component-DropdownItem"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K25 ["::UIListLayout"]
  DUPTABLE R16 K30 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R17 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K26 ["FillDirection"]
  GETIMPORT R17 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K27 ["HorizontalAlignment"]
  GETIMPORT R17 K37 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K28 ["VerticalAlignment"]
  GETIMPORT R17 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K29 ["SortOrder"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K40 ["> #TextLabel"]
  DUPTABLE R17 K42 [{"BackgroundTransparency"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K41 ["BackgroundTransparency"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K14 ["::UIPadding"]
  DUPTABLE R21 K44 [{"PaddingLeft"}]
  GETIMPORT R22 K20 [UDim.new]
  LOADN R23 0
  LOADN R24 10
  CALL R22 2 1
  SETTABLEKS R22 R21 K43 ["PaddingLeft"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K45 ["> .Hover"]
  DUPTABLE R13 K47 [{"BackgroundColor3"}]
  LOADK R14 K48 ["$SecondaryHoverBackground"]
  SETTABLEKS R14 R13 K46 ["BackgroundColor3"]
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
