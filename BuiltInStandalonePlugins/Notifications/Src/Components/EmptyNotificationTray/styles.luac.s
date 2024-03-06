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
  MOVE R4 R2
  LOADK R5 K12 [".Component-EmptyNotificationTray"]
  DUPTABLE R6 K16 [{"BackgroundTransparency", "Size", "BorderSizePixel"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 213
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADN R7 0
  SETTABLEKS R7 R6 K15 ["BorderSizePixel"]
  NEWTABLE R7 0 6
  MOVE R8 R2
  LOADK R9 K17 ["::UIPadding"]
  DUPTABLE R10 K20 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K22 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["PaddingLeft"]
  GETIMPORT R11 K22 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["PaddingRight"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 ["> #ErrorState"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K24 ["::UIListLayout"]
  DUPTABLE R15 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R16 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K25 ["FillDirection"]
  GETIMPORT R16 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K26 ["HorizontalAlignment"]
  GETIMPORT R16 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K27 ["SortOrder"]
  GETIMPORT R16 K22 [UDim.new]
  LOADN R17 0
  LOADN R18 24
  CALL R16 2 1
  SETTABLEKS R16 R15 K28 ["Padding"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K37 ["> #ErrorImage"]
  DUPTABLE R16 K39 [{"Image", "Size", "BackgroundTransparency"}]
  LOADK R17 K40 ["$NotificationErrorIcon"]
  SETTABLEKS R17 R16 K38 ["Image"]
  SETTABLEKS R3 R16 K14 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K41 ["> #RefreshButton"]
  DUPTABLE R17 K48 [{"AutomaticSize", "BackgroundColor3", "TextColor3", "TextSize", "TextWrapped", "Font"}]
  GETIMPORT R18 K50 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K42 ["AutomaticSize"]
  LOADK R18 K51 ["$BackgroundPaper"]
  SETTABLEKS R18 R17 K43 ["BackgroundColor3"]
  LOADK R18 K52 ["$TextPrimary"]
  SETTABLEKS R18 R17 K44 ["TextColor3"]
  LOADN R18 24
  SETTABLEKS R18 R17 K45 ["TextSize"]
  LOADB R18 1
  SETTABLEKS R18 R17 K46 ["TextWrapped"]
  GETIMPORT R18 K54 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R18 R17 K47 ["Font"]
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K55 ["::UICorner"]
  DUPTABLE R21 K57 [{"CornerRadius"}]
  GETIMPORT R22 K22 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K56 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K58 ["::UIStroke"]
  DUPTABLE R22 K63 [{"Color", "Thickness", "LineJoinMode", "ApplyStrokeMode"}]
  LOADK R23 K64 ["$SecondaryRestingOutlineBorder"]
  SETTABLEKS R23 R22 K59 ["Color"]
  LOADN R23 1
  SETTABLEKS R23 R22 K60 ["Thickness"]
  GETIMPORT R23 K66 [Enum.LineJoinMode.Round]
  SETTABLEKS R23 R22 K61 ["LineJoinMode"]
  GETIMPORT R23 K68 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R23 R22 K62 ["ApplyStrokeMode"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K17 ["::UIPadding"]
  DUPTABLE R23 K71 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K69 ["PaddingTop"]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K70 ["PaddingBottom"]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K18 ["PaddingLeft"]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K19 ["PaddingRight"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K72 ["> #EmptyState"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K24 ["::UIListLayout"]
  DUPTABLE R16 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R17 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K25 ["FillDirection"]
  GETIMPORT R17 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K26 ["HorizontalAlignment"]
  GETIMPORT R17 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K27 ["SortOrder"]
  GETIMPORT R17 K22 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K73 ["> #EmptyImage"]
  DUPTABLE R17 K39 [{"Image", "Size", "BackgroundTransparency"}]
  LOADK R18 K74 ["$NotificationEmptyTrayIcon"]
  SETTABLEKS R18 R17 K38 ["Image"]
  SETTABLEKS R3 R17 K14 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K13 ["BackgroundTransparency"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K75 [">> .Component-EmptyNotificationTray-Centering"]
  DUPTABLE R13 K78 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "Position", "AnchorPoint"}]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K14 ["Size"]
  GETIMPORT R14 K80 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K42 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K13 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K15 ["BorderSizePixel"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADK R15 K81 [0.5]
  LOADN R16 0
  LOADK R17 K81 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K76 ["Position"]
  GETIMPORT R14 K83 [Vector2.new]
  LOADK R15 K81 [0.5]
  LOADK R16 K81 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K77 ["AnchorPoint"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K84 [">> .Component-EmptyNotificationTray-MainText"]
  DUPTABLE R14 K85 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "TextColor3", "TextSize", "TextWrapped", "Font"}]
  GETIMPORT R15 K11 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Size"]
  GETIMPORT R15 K80 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K42 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K13 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K15 ["BorderSizePixel"]
  LOADK R15 K52 ["$TextPrimary"]
  SETTABLEKS R15 R14 K44 ["TextColor3"]
  LOADN R15 18
  SETTABLEKS R15 R14 K45 ["TextSize"]
  LOADB R15 1
  SETTABLEKS R15 R14 K46 ["TextWrapped"]
  GETIMPORT R15 K54 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R15 R14 K47 ["Font"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K86 [">> .Component-EmptyNotificationTray-SubText"]
  DUPTABLE R15 K85 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "TextColor3", "TextSize", "TextWrapped", "Font"}]
  GETIMPORT R16 K11 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K14 ["Size"]
  GETIMPORT R16 K80 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K42 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K15 ["BorderSizePixel"]
  LOADK R16 K87 ["$TextSecondary"]
  SETTABLEKS R16 R15 K44 ["TextColor3"]
  LOADN R16 18
  SETTABLEKS R16 R15 K45 ["TextSize"]
  LOADB R16 1
  SETTABLEKS R16 R15 K46 ["TextWrapped"]
  GETIMPORT R16 K54 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R16 R15 K47 ["Font"]
  CALL R13 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
