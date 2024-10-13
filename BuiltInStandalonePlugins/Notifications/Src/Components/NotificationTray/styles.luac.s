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
  LOADK R6 K17 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K18 [">> .Component-NotificationTrayScrollingFrame"]
  DUPTABLE R9 K27 [{"Size", "Position", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "VerticalScrollBarInset", "ScrollingDirection"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 1
  LOADN R12 252
  LOADN R13 1
  LOADN R14 218
  CALL R10 4 1
  SETTABLEKS R10 R9 K10 ["Size"]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 38
  CALL R10 4 1
  SETTABLEKS R10 R9 K19 ["Position"]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 1
  LOADN R12 252
  LOADN R13 1
  LOADN R14 218
  CALL R10 4 1
  SETTABLEKS R10 R9 K20 ["CanvasSize"]
  GETIMPORT R10 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K21 ["AutomaticCanvasSize"]
  LOADN R10 1
  SETTABLEKS R10 R9 K22 ["BackgroundTransparency"]
  LOADN R10 0
  SETTABLEKS R10 R9 K12 ["BorderSizePixel"]
  LOADN R10 6
  SETTABLEKS R10 R9 K23 ["ScrollBarThickness"]
  LOADK R10 K32 ["$NotificationScrollBarColor"]
  SETTABLEKS R10 R9 K24 ["ScrollBarImageColor3"]
  GETIMPORT R10 K35 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R10 R9 K25 ["VerticalScrollBarInset"]
  GETIMPORT R10 K36 [Enum.ScrollingDirection.Y]
  SETTABLEKS R10 R9 K26 ["ScrollingDirection"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K37 ["::UIListLayout"]
  DUPTABLE R13 K43 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R14 K45 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K38 ["FillDirection"]
  GETIMPORT R14 K47 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K39 ["HorizontalAlignment"]
  GETIMPORT R14 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K40 ["SortOrder"]
  GETIMPORT R14 K51 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K41 ["VerticalAlignment"]
  GETIMPORT R14 K53 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K42 ["Padding"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K54 [">> .Component-NotificationTrayLoading"]
  DUPTABLE R10 K55 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  GETIMPORT R11 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K29 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K22 ["BackgroundTransparency"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K56 ["::UIPadding"]
  DUPTABLE R14 K59 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K53 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K57 ["PaddingTop"]
  GETIMPORT R15 K53 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K58 ["PaddingBottom"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
