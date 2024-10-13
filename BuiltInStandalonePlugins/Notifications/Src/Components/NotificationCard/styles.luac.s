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
  MOVE R9 R2
  LOADK R10 K19 [".Component-InnerNotificationCard"]
  DUPTABLE R11 K24 [{"BackgroundColor3", "BorderSizePixel", "Size", "AutomaticSize"}]
  LOADK R12 K25 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K20 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K21 ["BorderSizePixel"]
  GETIMPORT R12 K18 [UDim2.new]
  LOADN R13 0
  MOVE R14 R5
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Size"]
  GETIMPORT R12 K28 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K23 ["AutomaticSize"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K29 ["::UIPadding"]
  DUPTABLE R15 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K36 [UDim.new]
  LOADN R17 0
  LOADN R18 6
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["PaddingLeft"]
  GETIMPORT R16 K36 [UDim.new]
  LOADN R17 0
  LOADN R18 3
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["PaddingRight"]
  GETIMPORT R16 K36 [UDim.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["PaddingTop"]
  GETIMPORT R16 K36 [UDim.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K37 ["> #InnerCard"]
  DUPTABLE R16 K39 [{"Size", "TextTransparency"}]
  GETIMPORT R17 K18 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K22 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K38 ["TextTransparency"]
  NEWTABLE R17 0 7
  MOVE R18 R2
  LOADK R19 K29 ["::UIPadding"]
  DUPTABLE R20 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K40 ["$NotificationContentPadding"]
  SETTABLEKS R21 R20 K30 ["PaddingLeft"]
  LOADK R21 K41 ["$NotificationContentPaddingXL"]
  SETTABLEKS R21 R20 K31 ["PaddingRight"]
  LOADK R21 K40 ["$NotificationContentPadding"]
  SETTABLEKS R21 R20 K32 ["PaddingTop"]
  LOADK R21 K40 ["$NotificationContentPadding"]
  SETTABLEKS R21 R20 K33 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K42 ["::UIListLayout"]
  DUPTABLE R21 K46 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R22 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K43 ["FillDirection"]
  GETIMPORT R22 K50 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K44 ["SortOrder"]
  LOADK R22 K40 ["$NotificationContentPadding"]
  SETTABLEKS R22 R21 K45 ["Padding"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K51 ["::UICorner"]
  DUPTABLE R22 K53 [{"CornerRadius"}]
  GETIMPORT R23 K36 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K52 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K54 ["> .Component-NotificationCard-User"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K51 ["::UICorner"]
  DUPTABLE R27 K53 [{"CornerRadius"}]
  GETIMPORT R28 K36 [UDim.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K52 ["CornerRadius"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K55 ["> #Icon"]
  DUPTABLE R24 K57 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K56 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K21 ["BorderSizePixel"]
  SETTABLEKS R7 R24 K22 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K58 ["> #Content"]
  DUPTABLE R25 K59 [{"Size"}]
  GETIMPORT R26 K18 [UDim2.new]
  LOADN R27 0
  MOVE R28 R6
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K22 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K60 ["> #StatusIndicator"]
  DUPTABLE R26 K61 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R27 K18 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K22 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K56 ["BackgroundTransparency"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K62 ["> #Indicator"]
  DUPTABLE R30 K57 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R31 1
  SETTABLEKS R31 R30 K56 ["BackgroundTransparency"]
  LOADN R31 0
  SETTABLEKS R31 R30 K21 ["BorderSizePixel"]
  SETTABLEKS R8 R30 K22 ["Size"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  DUPTABLE R13 K65 [{"NotificationContentPadding", "NotificationContentPaddingXL"}]
  GETIMPORT R14 K36 [UDim.new]
  LOADN R15 0
  LOADN R16 6
  CALL R14 2 1
  SETTABLEKS R14 R13 K63 ["NotificationContentPadding"]
  GETIMPORT R14 K36 [UDim.new]
  LOADN R15 0
  LOADN R16 12
  CALL R14 2 1
  SETTABLEKS R14 R13 K64 ["NotificationContentPaddingXL"]
  CALL R9 4 -1
  RETURN R9 -1
