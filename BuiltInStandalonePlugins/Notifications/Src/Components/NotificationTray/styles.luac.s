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
  GETTABLEKS R3 R4 K9 ["PluginStyles"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  GETTABLEKS R4 R5 K12 ["getFFlagNotificationRedesignM1Q42025"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K13 ["Styling"]
  GETTABLEKS R4 R5 K14 ["createStyleRule"]
  MOVE R5 R3
  CALL R5 0 1
  JUMPIFNOT R5 [+208]
  LOADK R9 K15 ["HeaderSize"]
  NAMECALL R7 R2 K16 ["GetAttribute"]
  CALL R7 2 1
  GETTABLEKS R6 R7 K17 ["Height"]
  GETTABLEKS R5 R6 K18 ["Offset"]
  LOADK R9 K19 ["Margin"]
  NAMECALL R7 R2 K16 ["GetAttribute"]
  CALL R7 2 1
  GETTABLEKS R6 R7 K18 ["Offset"]
  LOADK R9 K20 ["ScrollBarWidth"]
  NAMECALL R7 R2 K16 ["GetAttribute"]
  CALL R7 2 1
  LOADK R10 K21 ["ScrollBarGutter"]
  NAMECALL R8 R2 K16 ["GetAttribute"]
  CALL R8 2 1
  SUB R12 R8 R7
  SUBK R11 R12 K23 [1]
  DIVK R10 R11 K22 [2]
  FASTCALL1 MATH_FLOOR R10 [+2]
  GETIMPORT R9 K26 [math.floor]
  CALL R9 1 1
  LOADN R10 0
  JUMPIFNOTLT R9 R10 [+2]
  LOADN R9 0
  MOVE R10 R4
  LOADK R11 K27 [".Component-NotificationTray"]
  DUPTABLE R12 K31 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R13 K34 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K28 ["Size"]
  LOADK R13 K35 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K29 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K30 ["BorderSizePixel"]
  NEWTABLE R13 0 2
  MOVE R14 R4
  LOADK R15 K36 [">> .Component-NotificationTrayScrollingFrame"]
  DUPTABLE R16 K44 [{"Size", "Position", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "ScrollingDirection"}]
  GETIMPORT R17 K34 [UDim2.new]
  LOADN R18 1
  MINUS R19 R9
  LOADN R20 1
  MINUS R21 R5
  CALL R17 4 1
  SETTABLEKS R17 R16 K28 ["Size"]
  GETIMPORT R17 K34 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  MOVE R21 R5
  CALL R17 4 1
  SETTABLEKS R17 R16 K37 ["Position"]
  GETIMPORT R17 K34 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  MOVE R21 R5
  CALL R17 4 1
  SETTABLEKS R17 R16 K38 ["CanvasSize"]
  GETIMPORT R17 K48 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K39 ["AutomaticCanvasSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K40 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K30 ["BorderSizePixel"]
  SETTABLEKS R7 R16 K41 ["ScrollBarThickness"]
  LOADK R17 K49 ["$NotificationScrollBarColor"]
  SETTABLEKS R17 R16 K42 ["ScrollBarImageColor3"]
  GETIMPORT R17 K50 [Enum.ScrollingDirection.Y]
  SETTABLEKS R17 R16 K43 ["ScrollingDirection"]
  NEWTABLE R17 0 2
  MOVE R18 R4
  LOADK R19 K51 ["::UIListLayout"]
  DUPTABLE R20 K57 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R21 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K52 ["FillDirection"]
  GETIMPORT R21 K61 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K53 ["HorizontalAlignment"]
  GETIMPORT R21 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K54 ["SortOrder"]
  GETIMPORT R21 K65 [Enum.VerticalAlignment.Top]
  SETTABLEKS R21 R20 K55 ["VerticalAlignment"]
  LOADK R21 K66 ["$Margin"]
  SETTABLEKS R21 R20 K56 ["Padding"]
  CALL R18 2 1
  MOVE R19 R4
  LOADK R20 K67 ["::UIPadding"]
  DUPTABLE R21 K72 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K68 ["PaddingTop"]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  SUBK R24 R6 K22 [2]
  CALL R22 2 1
  SETTABLEKS R22 R21 K69 ["PaddingLeft"]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  SUBK R24 R6 K22 [2]
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["PaddingBottom"]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  SUBK R24 R8 K22 [2]
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["PaddingRight"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R4
  LOADK R16 K75 [">> .Component-NotificationTrayLoading"]
  DUPTABLE R17 K76 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R18 K34 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K28 ["Size"]
  GETIMPORT R18 K48 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K46 ["AutomaticSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K40 ["BackgroundTransparency"]
  NEWTABLE R18 0 1
  MOVE R19 R4
  LOADK R20 K67 ["::UIPadding"]
  DUPTABLE R21 K77 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K68 ["PaddingTop"]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  LOADN R24 12
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["PaddingBottom"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  RETURN R10 -1
  MOVE R5 R4
  LOADK R6 K27 [".Component-NotificationTray"]
  DUPTABLE R7 K31 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R8 K34 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K28 ["Size"]
  LOADK R8 K35 ["$BackgroundPaper"]
  SETTABLEKS R8 R7 K29 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K30 ["BorderSizePixel"]
  NEWTABLE R8 0 2
  MOVE R9 R4
  LOADK R10 K36 [">> .Component-NotificationTrayScrollingFrame"]
  DUPTABLE R11 K79 [{"Size", "Position", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "VerticalScrollBarInset", "ScrollingDirection"}]
  GETIMPORT R12 K34 [UDim2.new]
  LOADN R13 1
  LOADN R14 252
  LOADN R15 1
  LOADN R16 218
  CALL R12 4 1
  SETTABLEKS R12 R11 K28 ["Size"]
  GETIMPORT R12 K34 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 38
  CALL R12 4 1
  SETTABLEKS R12 R11 K37 ["Position"]
  GETIMPORT R12 K34 [UDim2.new]
  LOADN R13 1
  LOADN R14 252
  LOADN R15 1
  LOADN R16 218
  CALL R12 4 1
  SETTABLEKS R12 R11 K38 ["CanvasSize"]
  GETIMPORT R12 K48 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K39 ["AutomaticCanvasSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K40 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K30 ["BorderSizePixel"]
  LOADN R12 6
  SETTABLEKS R12 R11 K41 ["ScrollBarThickness"]
  LOADK R12 K49 ["$NotificationScrollBarColor"]
  SETTABLEKS R12 R11 K42 ["ScrollBarImageColor3"]
  GETIMPORT R12 K82 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R12 R11 K78 ["VerticalScrollBarInset"]
  GETIMPORT R12 K50 [Enum.ScrollingDirection.Y]
  SETTABLEKS R12 R11 K43 ["ScrollingDirection"]
  NEWTABLE R12 0 1
  MOVE R13 R4
  LOADK R14 K51 ["::UIListLayout"]
  DUPTABLE R15 K57 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R16 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K52 ["FillDirection"]
  GETIMPORT R16 K61 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K53 ["HorizontalAlignment"]
  GETIMPORT R16 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K54 ["SortOrder"]
  GETIMPORT R16 K65 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K55 ["VerticalAlignment"]
  GETIMPORT R16 K74 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K56 ["Padding"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R4
  LOADK R11 K75 [">> .Component-NotificationTrayLoading"]
  DUPTABLE R12 K76 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R13 K34 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K28 ["Size"]
  GETIMPORT R13 K48 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K46 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K40 ["BackgroundTransparency"]
  NEWTABLE R13 0 1
  MOVE R14 R4
  LOADK R15 K67 ["::UIPadding"]
  DUPTABLE R16 K77 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K74 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K68 ["PaddingTop"]
  GETIMPORT R17 K74 [UDim.new]
  LOADN R18 0
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K70 ["PaddingBottom"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
