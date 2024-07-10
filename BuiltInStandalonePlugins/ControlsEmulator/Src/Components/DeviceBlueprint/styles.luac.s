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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["StyleConstants"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-DeviceBlueprint"]
  DUPTABLE R6 K15 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R7 K16 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K14 ["BorderSizePixel"]
  NEWTABLE R7 0 5
  MOVE R8 R3
  LOADK R9 K17 ["::UIListLayout"]
  DUPTABLE R10 K21 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R11 K24 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K18 ["SortOrder"]
  GETIMPORT R11 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K19 ["HorizontalAlignment"]
  GETIMPORT R11 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K20 ["FillDirection"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K29 ["> .ControllerLayout"]
  DUPTABLE R11 K32 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 0
  LOADN R14 134
  LOADN R15 0
  LOADN R16 250
  CALL R12 4 1
  SETTABLEKS R12 R11 K30 ["Size"]
  LOADK R12 K36 [0.9]
  SETTABLEKS R12 R11 K31 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K37 ["> TextLabel"]
  DUPTABLE R12 K43 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R13 R2 K44 ["normalFontSize"]
  SETTABLEKS R13 R12 K38 ["TextSize"]
  GETIMPORT R13 K46 [Enum.Font.Gotham]
  SETTABLEKS R13 R12 K39 ["Font"]
  LOADK R13 K47 ["$TextPrimary"]
  SETTABLEKS R13 R12 K40 ["TextColor3"]
  GETIMPORT R13 K35 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 30
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K31 ["BackgroundTransparency"]
  GETIMPORT R13 K48 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K41 ["TextXAlignment"]
  GETIMPORT R13 K49 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K42 ["TextYAlignment"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K50 ["> TextButton"]
  DUPTABLE R13 K43 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R14 R2 K44 ["normalFontSize"]
  SETTABLEKS R14 R13 K38 ["TextSize"]
  GETIMPORT R14 K46 [Enum.Font.Gotham]
  SETTABLEKS R14 R13 K39 ["Font"]
  LOADK R14 K47 ["$TextPrimary"]
  SETTABLEKS R14 R13 K40 ["TextColor3"]
  GETIMPORT R14 K35 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 60
  CALL R14 4 1
  SETTABLEKS R14 R13 K30 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K31 ["BackgroundTransparency"]
  GETIMPORT R14 K48 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K41 ["TextXAlignment"]
  GETIMPORT R14 K49 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K42 ["TextYAlignment"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K51 [">> .X-Circle"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R3
  LOADK R17 K52 ["::UICorner"]
  DUPTABLE R18 K54 [{"CornerRadius"}]
  GETIMPORT R19 K56 [UDim.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K53 ["CornerRadius"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
