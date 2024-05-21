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
  LOADK R4 K10 [".Component-Checkbox"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K11 ["::UIListLayout"]
  DUPTABLE R9 K15 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R10 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K12 ["FillDirection"]
  GETIMPORT R10 K21 [UDim.new]
  LOADN R11 0
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Padding"]
  GETIMPORT R10 K23 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K14 ["SortOrder"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K24 [">> ImageButton"]
  DUPTABLE R10 K27 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 16
  LOADN R14 0
  LOADN R15 16
  CALL R11 4 1
  SETTABLEKS R11 R10 K25 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K26 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 [">> .Unchecked"]
  DUPTABLE R11 K33 [{"Image", "HoverImage"}]
  LOADK R12 K34 ["$CheckboxUncheckedImage"]
  SETTABLEKS R12 R11 K31 ["Image"]
  LOADK R12 K35 ["$CheckboxHoveredImage"]
  SETTABLEKS R12 R11 K32 ["HoverImage"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K36 [">> .Checked"]
  DUPTABLE R12 K37 [{"Image"}]
  LOADK R13 K38 ["$CheckboxCheckedImage"]
  SETTABLEKS R13 R12 K31 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K39 [">> TextButton"]
  DUPTABLE R13 K45 [{"Font", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "BackgroundTransparency"}]
  GETIMPORT R14 K47 [Enum.Font.SourceSans]
  SETTABLEKS R14 R13 K40 ["Font"]
  LOADK R14 K48 ["$TextPrimary"]
  SETTABLEKS R14 R13 K41 ["TextColor3"]
  LOADN R14 16
  SETTABLEKS R14 R13 K42 ["TextSize"]
  LOADB R14 1
  SETTABLEKS R14 R13 K43 ["TextWrapped"]
  GETIMPORT R14 K50 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K44 ["TextXAlignment"]
  LOADN R14 1
  SETTABLEKS R14 R13 K26 ["BackgroundTransparency"]
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
