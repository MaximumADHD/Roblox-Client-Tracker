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
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["TraySize"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["TRAY_WIDTH"]
  SUBK R5 R4 K13 [11]
  SUBK R7 R4 K15 [20]
  SUBK R6 R7 K14 [65]
  GETIMPORT R7 K18 [UDim2.new]
  LOADN R8 0
  LOADN R9 20
  LOADN R10 0
  LOADN R11 20
  CALL R7 4 1
  GETIMPORT R8 K18 [UDim2.new]
  LOADN R9 0
  LOADN R10 16
  LOADN R11 0
  LOADN R12 16
  CALL R8 4 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K10 ["Util"]
  GETTABLEKS R11 R12 K19 ["SharedFlags"]
  GETTABLEKS R10 R11 K20 ["getFFlagNotificationsMarkAllAsRead"]
  CALL R9 1 1
  MOVE R10 R9
  CALL R10 0 1
  JUMPIFNOT R10 [+214]
  MOVE R10 R2
  LOADK R11 K21 [".Component-InnerNotificationCard"]
  DUPTABLE R12 K26 [{"BackgroundColor3", "BorderSizePixel", "Size", "AutomaticSize"}]
  LOADK R13 K27 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K22 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K23 ["BorderSizePixel"]
  GETIMPORT R13 K18 [UDim2.new]
  LOADN R14 0
  MOVE R15 R5
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K24 ["Size"]
  GETIMPORT R13 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K25 ["AutomaticSize"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K31 ["::UIPadding"]
  DUPTABLE R16 K36 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["PaddingLeft"]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 3
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["PaddingRight"]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K34 ["PaddingTop"]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K39 ["> #InnerCard"]
  DUPTABLE R17 K41 [{"Size", "TextTransparency"}]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K24 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K40 ["TextTransparency"]
  NEWTABLE R18 0 7
  MOVE R19 R2
  LOADK R20 K31 ["::UIPadding"]
  DUPTABLE R21 K36 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K42 ["$NotificationContentPadding"]
  SETTABLEKS R22 R21 K32 ["PaddingLeft"]
  LOADK R22 K43 ["$NotificationContentPaddingXL"]
  SETTABLEKS R22 R21 K33 ["PaddingRight"]
  LOADK R22 K42 ["$NotificationContentPadding"]
  SETTABLEKS R22 R21 K34 ["PaddingTop"]
  LOADK R22 K42 ["$NotificationContentPadding"]
  SETTABLEKS R22 R21 K35 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K44 ["::UIListLayout"]
  DUPTABLE R22 K48 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R23 K50 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K45 ["FillDirection"]
  GETIMPORT R23 K52 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K46 ["SortOrder"]
  LOADK R23 K42 ["$NotificationContentPadding"]
  SETTABLEKS R23 R22 K47 ["Padding"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K53 ["::UICorner"]
  DUPTABLE R23 K55 [{"CornerRadius"}]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K56 ["> .Component-NotificationCard-User"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K53 ["::UICorner"]
  DUPTABLE R28 K55 [{"CornerRadius"}]
  GETIMPORT R29 K38 [UDim.new]
  LOADN R30 1
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K54 ["CornerRadius"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K57 ["> #Icon"]
  DUPTABLE R25 K59 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K58 ["BackgroundTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K23 ["BorderSizePixel"]
  SETTABLEKS R7 R25 K24 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K60 ["> #Content"]
  DUPTABLE R26 K61 [{"Size"}]
  GETIMPORT R27 K18 [UDim2.new]
  LOADN R28 0
  MOVE R29 R6
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K24 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K62 ["> #StatusIndicator"]
  DUPTABLE R27 K63 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R28 K18 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K24 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K58 ["BackgroundTransparency"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K64 ["> #Indicator"]
  DUPTABLE R31 K59 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K58 ["BackgroundTransparency"]
  LOADN R32 0
  SETTABLEKS R32 R31 K23 ["BorderSizePixel"]
  SETTABLEKS R8 R31 K24 ["Size"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  DUPTABLE R14 K67 [{"NotificationContentPadding", "NotificationContentPaddingXL"}]
  GETIMPORT R15 K38 [UDim.new]
  LOADN R16 0
  LOADN R17 6
  CALL R15 2 1
  SETTABLEKS R15 R14 K65 ["NotificationContentPadding"]
  GETIMPORT R15 K38 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K66 ["NotificationContentPaddingXL"]
  CALL R10 4 -1
  RETURN R10 -1
  MOVE R10 R2
  LOADK R11 K21 [".Component-InnerNotificationCard"]
  DUPTABLE R12 K26 [{"BackgroundColor3", "BorderSizePixel", "Size", "AutomaticSize"}]
  LOADK R13 K68 ["$BackgroundDefault"]
  SETTABLEKS R13 R12 K22 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K23 ["BorderSizePixel"]
  GETIMPORT R13 K18 [UDim2.new]
  LOADN R14 0
  MOVE R15 R5
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K24 ["Size"]
  GETIMPORT R13 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K25 ["AutomaticSize"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K31 ["::UIPadding"]
  DUPTABLE R16 K36 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["PaddingLeft"]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 3
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["PaddingRight"]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K34 ["PaddingTop"]
  GETIMPORT R17 K38 [UDim.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K39 ["> #InnerCard"]
  DUPTABLE R17 K69 [{"BackgroundColor3", "Size", "TextTransparency"}]
  LOADK R18 K70 ["$ForegroundMain"]
  SETTABLEKS R18 R17 K22 ["BackgroundColor3"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K24 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K40 ["TextTransparency"]
  NEWTABLE R18 0 6
  MOVE R19 R2
  LOADK R20 K31 ["::UIPadding"]
  DUPTABLE R21 K36 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K42 ["$NotificationContentPadding"]
  SETTABLEKS R22 R21 K32 ["PaddingLeft"]
  LOADK R22 K43 ["$NotificationContentPaddingXL"]
  SETTABLEKS R22 R21 K33 ["PaddingRight"]
  LOADK R22 K42 ["$NotificationContentPadding"]
  SETTABLEKS R22 R21 K34 ["PaddingTop"]
  LOADK R22 K42 ["$NotificationContentPadding"]
  SETTABLEKS R22 R21 K35 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K44 ["::UIListLayout"]
  DUPTABLE R22 K48 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R23 K50 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K45 ["FillDirection"]
  GETIMPORT R23 K52 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K46 ["SortOrder"]
  LOADK R23 K42 ["$NotificationContentPadding"]
  SETTABLEKS R23 R22 K47 ["Padding"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K53 ["::UICorner"]
  DUPTABLE R23 K55 [{"CornerRadius"}]
  GETIMPORT R24 K38 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K57 ["> #Icon"]
  DUPTABLE R24 K59 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K58 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K23 ["BorderSizePixel"]
  SETTABLEKS R7 R24 K24 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K60 ["> #Content"]
  DUPTABLE R25 K61 [{"Size"}]
  GETIMPORT R26 K18 [UDim2.new]
  LOADN R27 0
  MOVE R28 R6
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K24 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K62 ["> #StatusIndicator"]
  DUPTABLE R26 K63 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R27 K18 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K24 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K58 ["BackgroundTransparency"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K64 ["> #Indicator"]
  DUPTABLE R30 K59 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R31 1
  SETTABLEKS R31 R30 K58 ["BackgroundTransparency"]
  LOADN R31 0
  SETTABLEKS R31 R30 K23 ["BorderSizePixel"]
  SETTABLEKS R8 R30 K24 ["Size"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  DUPTABLE R14 K67 [{"NotificationContentPadding", "NotificationContentPaddingXL"}]
  GETIMPORT R15 K38 [UDim.new]
  LOADN R16 0
  LOADN R17 6
  CALL R15 2 1
  SETTABLEKS R15 R14 K65 ["NotificationContentPadding"]
  GETIMPORT R15 K38 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K66 ["NotificationContentPaddingXL"]
  CALL R10 4 -1
  RETURN R10 -1
