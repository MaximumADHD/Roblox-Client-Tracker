MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-DeviceBlueprint"]
  DUPTABLE R5 K12 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R6 K13 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K10 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K14 ["::UIListLayout"]
  DUPTABLE R9 K18 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R10 K21 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K15 ["SortOrder"]
  GETIMPORT R10 K23 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K16 ["HorizontalAlignment"]
  GETIMPORT R10 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K17 ["FillDirection"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K26 ["> TextLabel"]
  DUPTABLE R10 K34 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  LOADN R11 24
  SETTABLEKS R11 R10 K27 ["TextSize"]
  GETIMPORT R11 K36 [Enum.Font.Gotham]
  SETTABLEKS R11 R10 K28 ["Font"]
  LOADK R11 K37 ["$TextPrimary"]
  SETTABLEKS R11 R10 K29 ["TextColor3"]
  GETIMPORT R11 K40 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 50
  CALL R11 4 1
  SETTABLEKS R11 R10 K30 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K31 ["BackgroundTransparency"]
  GETIMPORT R11 K41 [Enum.TextXAlignment.Center]
  SETTABLEKS R11 R10 K32 ["TextXAlignment"]
  GETIMPORT R11 K42 [Enum.TextYAlignment.Center]
  SETTABLEKS R11 R10 K33 ["TextYAlignment"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K43 ["> TextButton"]
  DUPTABLE R11 K34 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  LOADN R12 50
  SETTABLEKS R12 R11 K27 ["TextSize"]
  GETIMPORT R12 K36 [Enum.Font.Gotham]
  SETTABLEKS R12 R11 K28 ["Font"]
  LOADK R12 K37 ["$TextPrimary"]
  SETTABLEKS R12 R11 K29 ["TextColor3"]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 100
  CALL R12 4 1
  SETTABLEKS R12 R11 K30 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K31 ["BackgroundTransparency"]
  GETIMPORT R12 K41 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K32 ["TextXAlignment"]
  GETIMPORT R12 K42 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K33 ["TextYAlignment"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K44 [">> .X-Circle"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K45 ["::UICorner"]
  DUPTABLE R16 K47 [{"CornerRadius"}]
  GETIMPORT R17 K49 [UDim.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["CornerRadius"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
