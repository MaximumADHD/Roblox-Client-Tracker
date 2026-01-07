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
  LOADK R4 K9 [".Component-NotificationHeader"]
  DUPTABLE R5 K13 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  LOADK R6 K14 ["$HeaderSize"]
  SETTABLEKS R6 R5 K10 ["Size"]
  LOADK R6 K15 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K16 ["::UIPadding"]
  DUPTABLE R9 K21 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R10 K22 ["$HeaderLeftMargin"]
  SETTABLEKS R10 R9 K17 ["PaddingLeft"]
  LOADK R10 K23 ["$Margin"]
  SETTABLEKS R10 R9 K18 ["PaddingRight"]
  LOADK R10 K23 ["$Margin"]
  SETTABLEKS R10 R9 K19 ["PaddingTop"]
  LOADK R10 K23 ["$Margin"]
  SETTABLEKS R10 R9 K20 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K24 ["> #Title"]
  DUPTABLE R10 K32 [{"Size", "Position", "BackgroundTransparency", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R11 K35 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  GETIMPORT R11 K35 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K25 ["Position"]
  LOADN R11 1
  SETTABLEKS R11 R10 K26 ["BackgroundTransparency"]
  LOADK R11 K36 ["$TextPrimary"]
  SETTABLEKS R11 R10 K27 ["TextColor3"]
  LOADK R11 K37 ["$HeaderTitleTextSize"]
  SETTABLEKS R11 R10 K28 ["TextSize"]
  LOADN R11 0
  SETTABLEKS R11 R10 K12 ["BorderSizePixel"]
  GETIMPORT R11 K40 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R11 R10 K29 ["Font"]
  GETIMPORT R11 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K30 ["TextXAlignment"]
  GETIMPORT R11 K44 [Enum.TextYAlignment.Center]
  SETTABLEKS R11 R10 K31 ["TextYAlignment"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K16 ["::UIPadding"]
  NEWTABLE R14 0 0
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K45 ["> #MoreOptionsFrame"]
  DUPTABLE R11 K49 [{"BackgroundTransparency", "AutomaticSize", "SortOrder", "Position", "AnchorPoint", "BorderSizePixel"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K26 ["BackgroundTransparency"]
  GETIMPORT R12 K51 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K46 ["AutomaticSize"]
  GETIMPORT R12 K53 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K47 ["SortOrder"]
  GETIMPORT R12 K35 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["Position"]
  GETIMPORT R12 K55 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K48 ["AnchorPoint"]
  LOADN R12 0
  SETTABLEKS R12 R11 K12 ["BorderSizePixel"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K56 ["::UIListLayout"]
  DUPTABLE R15 K61 [{"HorizontalAlignment", "FillDirection", "VerticalAlignment", "Padding"}]
  GETIMPORT R16 K63 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R16 R15 K57 ["HorizontalAlignment"]
  GETIMPORT R16 K65 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K58 ["FillDirection"]
  GETIMPORT R16 K66 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K59 ["VerticalAlignment"]
  LOADK R16 K23 ["$Margin"]
  SETTABLEKS R16 R15 K60 ["Padding"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K67 ["> #MoreOptionsButton"]
  DUPTABLE R16 K68 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R17 K69 ["$HeaderIconSize"]
  SETTABLEKS R17 R16 K10 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K26 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K12 ["BorderSizePixel"]
  NEWTABLE R17 0 3
  MOVE R18 R2
  LOADK R19 K70 [":hover"]
  DUPTABLE R20 K71 [{"BackgroundColor3"}]
  LOADK R21 K72 ["$ActionHover"]
  SETTABLEKS R21 R20 K11 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K73 [":press"]
  DUPTABLE R21 K71 [{"BackgroundColor3"}]
  LOADK R22 K74 ["$ActionActivated"]
  SETTABLEKS R22 R21 K11 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K75 ["::UICorner"]
  DUPTABLE R22 K77 [{"CornerRadius"}]
  LOADK R23 K78 ["$ButtonBorderRadius"]
  SETTABLEKS R23 R22 K76 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K79 ["> #MarkAllAsRead"]
  DUPTABLE R17 K80 [{"Size", "AutomaticSize", "TextColor3", "BackgroundTransparency", "TextSize", "Font", "BorderSizePixel"}]
  GETIMPORT R18 K35 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K10 ["Size"]
  GETIMPORT R18 K82 [Enum.AutomaticSize.X]
  SETTABLEKS R18 R17 K46 ["AutomaticSize"]
  LOADK R18 K36 ["$TextPrimary"]
  SETTABLEKS R18 R17 K27 ["TextColor3"]
  LOADN R18 1
  SETTABLEKS R18 R17 K26 ["BackgroundTransparency"]
  LOADK R18 K83 ["$HeaderSubtitleTextSize"]
  SETTABLEKS R18 R17 K28 ["TextSize"]
  GETIMPORT R18 K85 [Enum.Font.SourceSansBold]
  SETTABLEKS R18 R17 K29 ["Font"]
  LOADN R18 0
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K70 [":hover"]
  DUPTABLE R21 K71 [{"BackgroundColor3"}]
  LOADK R22 K72 ["$ActionHover"]
  SETTABLEKS R22 R21 K11 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K73 [":press"]
  DUPTABLE R22 K71 [{"BackgroundColor3"}]
  LOADK R23 K74 ["$ActionActivated"]
  SETTABLEKS R23 R22 K11 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K75 ["::UICorner"]
  DUPTABLE R23 K77 [{"CornerRadius"}]
  LOADK R24 K78 ["$ButtonBorderRadius"]
  SETTABLEKS R24 R23 K76 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
