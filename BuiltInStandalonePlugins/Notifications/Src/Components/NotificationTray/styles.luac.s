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
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  LOADK R8 K12 ["HeaderSize"]
  NAMECALL R6 R2 K13 ["GetAttribute"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K14 ["Height"]
  GETTABLEKS R4 R5 K15 ["Offset"]
  LOADK R8 K16 ["Margin"]
  NAMECALL R6 R2 K13 ["GetAttribute"]
  CALL R6 2 1
  GETTABLEKS R5 R6 K15 ["Offset"]
  LOADK R8 K17 ["ScrollBarWidth"]
  NAMECALL R6 R2 K13 ["GetAttribute"]
  CALL R6 2 1
  LOADK R9 K18 ["ScrollBarGutter"]
  NAMECALL R7 R2 K13 ["GetAttribute"]
  CALL R7 2 1
  SUB R11 R7 R6
  SUBK R10 R11 K20 [1]
  DIVK R9 R10 K19 [2]
  FASTCALL1 MATH_FLOOR R9 [+2]
  GETIMPORT R8 K23 [math.floor]
  CALL R8 1 1
  LOADN R9 0
  JUMPIFNOTLT R8 R9 [+2]
  LOADN R8 0
  MOVE R9 R3
  LOADK R10 K24 [".Component-NotificationTray"]
  DUPTABLE R11 K28 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R12 K31 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["Size"]
  LOADK R12 K32 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K26 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K27 ["BorderSizePixel"]
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K33 [">> .Component-NotificationTrayScrollingFrame"]
  DUPTABLE R15 K41 [{"Size", "Position", "CanvasSize", "AutomaticCanvasSize", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "ScrollingDirection"}]
  GETIMPORT R16 K31 [UDim2.new]
  LOADN R17 1
  MINUS R18 R8
  LOADN R19 1
  MINUS R20 R4
  CALL R16 4 1
  SETTABLEKS R16 R15 K25 ["Size"]
  GETIMPORT R16 K31 [UDim2.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  MOVE R20 R4
  CALL R16 4 1
  SETTABLEKS R16 R15 K34 ["Position"]
  GETIMPORT R16 K31 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  MOVE R20 R4
  CALL R16 4 1
  SETTABLEKS R16 R15 K35 ["CanvasSize"]
  GETIMPORT R16 K45 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K36 ["AutomaticCanvasSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K37 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K27 ["BorderSizePixel"]
  SETTABLEKS R6 R15 K38 ["ScrollBarThickness"]
  LOADK R16 K46 ["$NotificationScrollBarColor"]
  SETTABLEKS R16 R15 K39 ["ScrollBarImageColor3"]
  GETIMPORT R16 K47 [Enum.ScrollingDirection.Y]
  SETTABLEKS R16 R15 K40 ["ScrollingDirection"]
  NEWTABLE R16 0 2
  MOVE R17 R3
  LOADK R18 K48 ["::UIListLayout"]
  DUPTABLE R19 K54 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R20 K56 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K49 ["FillDirection"]
  GETIMPORT R20 K58 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K50 ["HorizontalAlignment"]
  GETIMPORT R20 K60 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K51 ["SortOrder"]
  GETIMPORT R20 K62 [Enum.VerticalAlignment.Top]
  SETTABLEKS R20 R19 K52 ["VerticalAlignment"]
  LOADK R20 K63 ["$Margin"]
  SETTABLEKS R20 R19 K53 ["Padding"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K64 ["::UIPadding"]
  DUPTABLE R20 K69 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R21 K71 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K65 ["PaddingTop"]
  GETIMPORT R21 K71 [UDim.new]
  LOADN R22 0
  SUBK R23 R5 K19 [2]
  CALL R21 2 1
  SETTABLEKS R21 R20 K66 ["PaddingLeft"]
  GETIMPORT R21 K71 [UDim.new]
  LOADN R22 0
  SUBK R23 R5 K19 [2]
  CALL R21 2 1
  SETTABLEKS R21 R20 K67 ["PaddingBottom"]
  GETIMPORT R21 K71 [UDim.new]
  LOADN R22 0
  SUBK R23 R7 K19 [2]
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["PaddingRight"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K72 [">> .Component-NotificationTrayLoading"]
  DUPTABLE R16 K73 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R17 K31 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K25 ["Size"]
  GETIMPORT R17 K45 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K43 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K37 ["BackgroundTransparency"]
  NEWTABLE R17 0 1
  MOVE R18 R3
  LOADK R19 K64 ["::UIPadding"]
  DUPTABLE R20 K74 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K71 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K65 ["PaddingTop"]
  GETIMPORT R21 K71 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K67 ["PaddingBottom"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  RETURN R9 -1
