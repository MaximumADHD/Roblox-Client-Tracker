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
  LOADK R4 K9 [".Component-MappingsListRow"]
  DUPTABLE R5 K12 [{"Size", "Position"}]
  GETIMPORT R6 K15 [UDim2.new]
  LOADK R7 K16 [0.5]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 50
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Size"]
  GETIMPORT R6 K15 [UDim2.new]
  LOADK R7 K16 [0.5]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["Position"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K17 ["::UIListLayout"]
  DUPTABLE R9 K20 [{"FillDirection", "SortOrder"}]
  GETIMPORT R10 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K18 ["FillDirection"]
  GETIMPORT R10 K25 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K19 ["SortOrder"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K26 ["> TextButton"]
  DUPTABLE R10 K30 [{"Size", "TextColor3", "BorderSizePixel", "TextXAlignment"}]
  GETIMPORT R11 K15 [UDim2.new]
  LOADK R12 K16 [0.5]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 50
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  LOADK R11 K31 ["$TextPrimary"]
  SETTABLEKS R11 R10 K27 ["TextColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K28 ["BorderSizePixel"]
  GETIMPORT R11 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K29 ["TextXAlignment"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K34 [">> .SrcKey"]
  DUPTABLE R11 K35 [{"TextColor3", "TextXAlignment"}]
  LOADK R12 K31 ["$TextPrimary"]
  SETTABLEKS R12 R11 K27 ["TextColor3"]
  GETIMPORT R12 K37 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K29 ["TextXAlignment"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K38 [">> .SrcKey:hover"]
  DUPTABLE R12 K40 [{"BackgroundColor3"}]
  LOADK R13 K41 ["$ActionHover"]
  SETTABLEKS R13 R12 K39 ["BackgroundColor3"]
  CALL R10 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
