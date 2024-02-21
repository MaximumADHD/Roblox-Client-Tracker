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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFFlagNotificationsMarkAllAsRead"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 1
  JUMPIFNOT R4 [+152]
  MOVE R4 R2
  LOADK R5 K13 [".Component-NotificationTray"]
  DUPTABLE R6 K17 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R7 K20 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADK R7 K21 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  NEWTABLE R7 0 2
  MOVE R8 R2
  LOADK R9 K22 [">> .Component-NotificationTrayScrollingFrame"]
  DUPTABLE R10 K31 [{"Size", "Position", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "VerticalScrollBarInset", "ScrollingDirection"}]
  GETIMPORT R11 K20 [UDim2.new]
  LOADN R12 1
  LOADN R13 252
  LOADN R14 1
  LOADN R15 218
  CALL R11 4 1
  SETTABLEKS R11 R10 K14 ["Size"]
  GETIMPORT R11 K20 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 38
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Position"]
  GETIMPORT R11 K20 [UDim2.new]
  LOADN R12 1
  LOADN R13 252
  LOADN R14 1
  LOADN R15 218
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["CanvasSize"]
  GETIMPORT R11 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K25 ["AutomaticCanvasSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K26 ["BackgroundTransparency"]
  LOADN R11 0
  SETTABLEKS R11 R10 K16 ["BorderSizePixel"]
  LOADN R11 6
  SETTABLEKS R11 R10 K27 ["ScrollBarThickness"]
  LOADK R11 K36 ["$NotificationScrollBarColor"]
  SETTABLEKS R11 R10 K28 ["ScrollBarImageColor3"]
  GETIMPORT R11 K39 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R11 R10 K29 ["VerticalScrollBarInset"]
  GETIMPORT R11 K40 [Enum.ScrollingDirection.Y]
  SETTABLEKS R11 R10 K30 ["ScrollingDirection"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K41 ["::UIListLayout"]
  DUPTABLE R14 K47 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R15 K49 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K42 ["FillDirection"]
  GETIMPORT R15 K51 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K43 ["HorizontalAlignment"]
  GETIMPORT R15 K53 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K44 ["SortOrder"]
  GETIMPORT R15 K55 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K45 ["VerticalAlignment"]
  GETIMPORT R15 K57 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["Padding"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K58 [">> .Component-NotificationTrayLoading"]
  DUPTABLE R11 K59 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R12 K20 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  GETIMPORT R12 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K33 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K26 ["BackgroundTransparency"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K60 ["::UIPadding"]
  DUPTABLE R15 K63 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K57 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K61 ["PaddingTop"]
  GETIMPORT R16 K57 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K62 ["PaddingBottom"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
  MOVE R4 R2
  LOADK R5 K13 [".Component-NotificationTray"]
  DUPTABLE R6 K17 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R7 K20 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADK R7 K64 ["$BackgroundDefault"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K41 ["::UIListLayout"]
  DUPTABLE R10 K65 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R11 K49 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K42 ["FillDirection"]
  GETIMPORT R11 K51 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K43 ["HorizontalAlignment"]
  GETIMPORT R11 K53 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K44 ["SortOrder"]
  GETIMPORT R11 K55 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K45 ["VerticalAlignment"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K22 [">> .Component-NotificationTrayScrollingFrame"]
  DUPTABLE R11 K66 [{"Size", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "VerticalScrollBarInset", "ScrollingDirection"}]
  GETIMPORT R12 K20 [UDim2.new]
  LOADN R13 1
  LOADN R14 251
  LOADN R15 1
  LOADN R16 213
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  GETIMPORT R12 K20 [UDim2.new]
  LOADN R13 1
  LOADN R14 251
  LOADN R15 1
  LOADN R16 213
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["CanvasSize"]
  GETIMPORT R12 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K25 ["AutomaticCanvasSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K26 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BorderSizePixel"]
  LOADN R12 6
  SETTABLEKS R12 R11 K27 ["ScrollBarThickness"]
  LOADK R12 K36 ["$NotificationScrollBarColor"]
  SETTABLEKS R12 R11 K28 ["ScrollBarImageColor3"]
  GETIMPORT R12 K39 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R12 R11 K29 ["VerticalScrollBarInset"]
  GETIMPORT R12 K40 [Enum.ScrollingDirection.Y]
  SETTABLEKS R12 R11 K30 ["ScrollingDirection"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K41 ["::UIListLayout"]
  DUPTABLE R15 K47 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R16 K49 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K42 ["FillDirection"]
  GETIMPORT R16 K51 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K43 ["HorizontalAlignment"]
  GETIMPORT R16 K53 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K44 ["SortOrder"]
  GETIMPORT R16 K55 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K45 ["VerticalAlignment"]
  GETIMPORT R16 K57 [UDim.new]
  LOADN R17 0
  LOADN R18 6
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["Padding"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K58 [">> .Component-NotificationTrayLoading"]
  DUPTABLE R12 K59 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R13 K20 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  GETIMPORT R13 K35 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K33 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K26 ["BackgroundTransparency"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K60 ["::UIPadding"]
  DUPTABLE R16 K63 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K61 ["PaddingTop"]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K62 ["PaddingBottom"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
