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
  LOADK R4 K9 [".Component-NotificationTray"]
  DUPTABLE R5 K13 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Size"]
  LOADK R6 K17 ["$BackgroundDefault"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K18 ["::UIListLayout"]
  DUPTABLE R9 K23 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R10 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K19 ["FillDirection"]
  GETIMPORT R10 K28 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K20 ["HorizontalAlignment"]
  GETIMPORT R10 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K21 ["SortOrder"]
  GETIMPORT R10 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K22 ["VerticalAlignment"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K33 [">> .Component-NotificationTrayScrollingFrame"]
  DUPTABLE R10 K41 [{"Size", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "VerticalScrollBarInset", "ScrollingDirection"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 251
  LOADN R14 1
  LOADN R15 213
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 251
  LOADN R14 1
  LOADN R15 213
  CALL R11 4 1
  SETTABLEKS R11 R10 K34 ["CanvasSize"]
  GETIMPORT R11 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K35 ["AutomaticCanvasSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K36 ["BackgroundTransparency"]
  LOADN R11 0
  SETTABLEKS R11 R10 K12 ["BorderSizePixel"]
  LOADN R11 6
  SETTABLEKS R11 R10 K37 ["ScrollBarThickness"]
  LOADK R11 K45 ["$NotificationScrollBarColor"]
  SETTABLEKS R11 R10 K38 ["ScrollBarImageColor3"]
  GETIMPORT R11 K48 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R11 R10 K39 ["VerticalScrollBarInset"]
  GETIMPORT R11 K49 [Enum.ScrollingDirection.Y]
  SETTABLEKS R11 R10 K40 ["ScrollingDirection"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K18 ["::UIListLayout"]
  DUPTABLE R14 K51 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R15 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K19 ["FillDirection"]
  GETIMPORT R15 K28 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K20 ["HorizontalAlignment"]
  GETIMPORT R15 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K21 ["SortOrder"]
  GETIMPORT R15 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K22 ["VerticalAlignment"]
  GETIMPORT R15 K53 [UDim.new]
  LOADN R16 0
  LOADN R17 6
  CALL R15 2 1
  SETTABLEKS R15 R14 K50 ["Padding"]
  CALL R12 2 -1
  SETLIST R11 R12 4294967295 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K54 [">> .Component-NotificationTrayLoading"]
  DUPTABLE R11 K55 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Size"]
  GETIMPORT R12 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K42 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K36 ["BackgroundTransparency"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K56 ["::UIPadding"]
  DUPTABLE R15 K59 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K53 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K57 ["PaddingTop"]
  GETIMPORT R16 K53 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K58 ["PaddingBottom"]
  CALL R13 2 -1
  SETLIST R12 R13 4294967295 [1]
  CALL R9 3 -1
  SETLIST R6 R7 4294967295 [1]
  CALL R3 3 -1
  RETURN R3 -1
