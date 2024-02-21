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
  GETIMPORT R3 K11 [UDim2.new]
  LOADN R4 0
  LOADN R5 96
  LOADN R6 0
  LOADN R7 96
  CALL R3 4 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["SharedFlags"]
  GETTABLEKS R5 R6 K15 ["getFFlagNotificationsMarkAllAsRead"]
  CALL R4 1 1
  MOVE R5 R2
  LOADK R6 K16 [".Component-EmptyNotificationTray"]
  DUPTABLE R7 K20 [{"BackgroundTransparency", "Size", "BorderSizePixel"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K17 ["BackgroundTransparency"]
  GETIMPORT R8 K11 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 213
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Size"]
  LOADN R8 0
  SETTABLEKS R8 R7 K19 ["BorderSizePixel"]
  NEWTABLE R8 0 6
  MOVE R9 R2
  LOADK R10 K21 ["::UIPadding"]
  DUPTABLE R11 K24 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K26 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["PaddingLeft"]
  GETIMPORT R12 K26 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["PaddingRight"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K27 ["> #ErrorState"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K28 ["::UIListLayout"]
  DUPTABLE R16 K33 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R17 K36 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K29 ["FillDirection"]
  GETIMPORT R17 K38 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K30 ["HorizontalAlignment"]
  GETIMPORT R17 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K31 ["SortOrder"]
  GETIMPORT R17 K26 [UDim.new]
  LOADN R18 0
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K41 ["> #ErrorImage"]
  DUPTABLE R17 K43 [{"Image", "Size", "BackgroundTransparency"}]
  LOADK R18 K44 ["$NotificationErrorIcon"]
  SETTABLEKS R18 R17 K42 ["Image"]
  SETTABLEKS R3 R17 K18 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K17 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K45 ["> #RefreshButton"]
  DUPTABLE R18 K52 [{"AutomaticSize", "BackgroundColor3", "TextColor3", "TextSize", "TextWrapped", "Font"}]
  GETIMPORT R19 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K46 ["AutomaticSize"]
  MOVE R20 R4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADK R19 K55 ["$BackgroundPaper"]
  JUMP [+1]
  LOADK R19 K56 ["$BackgroundDefault"]
  SETTABLEKS R19 R18 K47 ["BackgroundColor3"]
  LOADK R19 K57 ["$TextPrimary"]
  SETTABLEKS R19 R18 K48 ["TextColor3"]
  LOADN R19 24
  SETTABLEKS R19 R18 K49 ["TextSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K50 ["TextWrapped"]
  GETIMPORT R19 K59 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R19 R18 K51 ["Font"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K60 ["::UICorner"]
  DUPTABLE R22 K62 [{"CornerRadius"}]
  GETIMPORT R23 K26 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K61 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K63 ["::UIStroke"]
  DUPTABLE R23 K68 [{"Color", "Thickness", "LineJoinMode", "ApplyStrokeMode"}]
  LOADK R24 K69 ["$SecondaryRestingOutlineBorder"]
  SETTABLEKS R24 R23 K64 ["Color"]
  LOADN R24 1
  SETTABLEKS R24 R23 K65 ["Thickness"]
  GETIMPORT R24 K71 [Enum.LineJoinMode.Round]
  SETTABLEKS R24 R23 K66 ["LineJoinMode"]
  GETIMPORT R24 K73 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K67 ["ApplyStrokeMode"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K21 ["::UIPadding"]
  DUPTABLE R24 K76 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R25 K26 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K74 ["PaddingTop"]
  GETIMPORT R25 K26 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K75 ["PaddingBottom"]
  GETIMPORT R25 K26 [UDim.new]
  LOADN R26 0
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K22 ["PaddingLeft"]
  GETIMPORT R25 K26 [UDim.new]
  LOADN R26 0
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K23 ["PaddingRight"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K77 ["> #EmptyState"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K28 ["::UIListLayout"]
  DUPTABLE R17 K33 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R18 K36 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K29 ["FillDirection"]
  GETIMPORT R18 K38 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R18 R17 K30 ["HorizontalAlignment"]
  GETIMPORT R18 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K31 ["SortOrder"]
  GETIMPORT R18 K26 [UDim.new]
  LOADN R19 0
  LOADN R20 6
  CALL R18 2 1
  SETTABLEKS R18 R17 K32 ["Padding"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K78 ["> #EmptyImage"]
  DUPTABLE R18 K43 [{"Image", "Size", "BackgroundTransparency"}]
  LOADK R19 K79 ["$NotificationEmptyTrayIcon"]
  SETTABLEKS R19 R18 K42 ["Image"]
  SETTABLEKS R3 R18 K18 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K80 [">> .Component-EmptyNotificationTray-Centering"]
  DUPTABLE R14 K83 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "Position", "AnchorPoint"}]
  GETIMPORT R15 K11 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K18 ["Size"]
  GETIMPORT R15 K85 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K46 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K17 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K19 ["BorderSizePixel"]
  GETIMPORT R15 K11 [UDim2.new]
  LOADK R16 K86 [0.5]
  LOADN R17 0
  LOADK R18 K86 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K81 ["Position"]
  GETIMPORT R15 K88 [Vector2.new]
  LOADK R16 K86 [0.5]
  LOADK R17 K86 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K82 ["AnchorPoint"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K89 [">> .Component-EmptyNotificationTray-MainText"]
  DUPTABLE R15 K90 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "TextColor3", "TextSize", "TextWrapped", "Font"}]
  GETIMPORT R16 K11 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K18 ["Size"]
  GETIMPORT R16 K85 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K46 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K19 ["BorderSizePixel"]
  LOADK R16 K57 ["$TextPrimary"]
  SETTABLEKS R16 R15 K48 ["TextColor3"]
  LOADN R16 18
  SETTABLEKS R16 R15 K49 ["TextSize"]
  LOADB R16 1
  SETTABLEKS R16 R15 K50 ["TextWrapped"]
  GETIMPORT R16 K59 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R16 R15 K51 ["Font"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K91 [">> .Component-EmptyNotificationTray-SubText"]
  DUPTABLE R16 K90 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "TextColor3", "TextSize", "TextWrapped", "Font"}]
  GETIMPORT R17 K11 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K18 ["Size"]
  GETIMPORT R17 K85 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K46 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K19 ["BorderSizePixel"]
  LOADK R17 K92 ["$TextSecondary"]
  SETTABLEKS R17 R16 K48 ["TextColor3"]
  LOADN R17 18
  SETTABLEKS R17 R16 K49 ["TextSize"]
  LOADB R17 1
  SETTABLEKS R17 R16 K50 ["TextWrapped"]
  GETIMPORT R17 K59 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R17 R16 K51 ["Font"]
  CALL R14 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
