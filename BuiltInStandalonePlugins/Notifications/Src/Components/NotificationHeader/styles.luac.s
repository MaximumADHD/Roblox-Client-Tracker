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
  GETTABLEKS R4 R5 K12 ["getFFlagNotificationRedesignM1Q42025"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 1
  JUMPIFNOT R4 [+242]
  MOVE R4 R2
  LOADK R5 K13 [".Component-NotificationHeader"]
  DUPTABLE R6 K17 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  LOADK R7 K18 ["$HeaderSize"]
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADK R7 K19 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K20 ["::UIPadding"]
  DUPTABLE R10 K25 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R11 K26 ["$HeaderLeftMargin"]
  SETTABLEKS R11 R10 K21 ["PaddingLeft"]
  LOADK R11 K27 ["$Margin"]
  SETTABLEKS R11 R10 K22 ["PaddingRight"]
  LOADK R11 K27 ["$Margin"]
  SETTABLEKS R11 R10 K23 ["PaddingTop"]
  LOADK R11 K27 ["$Margin"]
  SETTABLEKS R11 R10 K24 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K28 ["> #Title"]
  DUPTABLE R11 K36 [{"Size", "Position", "BackgroundTransparency", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K39 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  GETIMPORT R12 K39 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K29 ["Position"]
  LOADN R12 1
  SETTABLEKS R12 R11 K30 ["BackgroundTransparency"]
  LOADK R12 K40 ["$TextPrimary"]
  SETTABLEKS R12 R11 K31 ["TextColor3"]
  LOADK R12 K41 ["$HeaderTitleTextSize"]
  SETTABLEKS R12 R11 K32 ["TextSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BorderSizePixel"]
  GETIMPORT R12 K44 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R12 R11 K33 ["Font"]
  GETIMPORT R12 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K34 ["TextXAlignment"]
  GETIMPORT R12 K48 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K35 ["TextYAlignment"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K20 ["::UIPadding"]
  NEWTABLE R15 0 0
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K49 ["> #MoreOptionsFrame"]
  DUPTABLE R12 K53 [{"BackgroundTransparency", "AutomaticSize", "SortOrder", "Position", "AnchorPoint", "BorderSizePixel"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K30 ["BackgroundTransparency"]
  GETIMPORT R13 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K50 ["AutomaticSize"]
  GETIMPORT R13 K57 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K51 ["SortOrder"]
  GETIMPORT R13 K39 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K29 ["Position"]
  GETIMPORT R13 K59 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K52 ["AnchorPoint"]
  LOADN R13 0
  SETTABLEKS R13 R12 K16 ["BorderSizePixel"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K60 ["::UIListLayout"]
  DUPTABLE R16 K65 [{"HorizontalAlignment", "FillDirection", "VerticalAlignment", "Padding"}]
  GETIMPORT R17 K67 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K61 ["HorizontalAlignment"]
  GETIMPORT R17 K69 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K62 ["FillDirection"]
  GETIMPORT R17 K70 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K63 ["VerticalAlignment"]
  LOADK R17 K27 ["$Margin"]
  SETTABLEKS R17 R16 K64 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K71 ["> #MoreOptionsButton"]
  DUPTABLE R17 K72 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R18 K73 ["$HeaderIconSize"]
  SETTABLEKS R18 R17 K14 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K30 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K16 ["BorderSizePixel"]
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K74 [":hover"]
  DUPTABLE R21 K75 [{"BackgroundColor3"}]
  LOADK R22 K76 ["$ActionHover"]
  SETTABLEKS R22 R21 K15 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K77 [":press"]
  DUPTABLE R22 K75 [{"BackgroundColor3"}]
  LOADK R23 K78 ["$ActionActivated"]
  SETTABLEKS R23 R22 K15 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K79 ["::UICorner"]
  DUPTABLE R23 K81 [{"CornerRadius"}]
  LOADK R24 K82 ["$ButtonBorderRadius"]
  SETTABLEKS R24 R23 K80 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K83 ["> #MarkAllAsRead"]
  DUPTABLE R18 K84 [{"Size", "AutomaticSize", "TextColor3", "BackgroundTransparency", "TextSize", "Font", "BorderSizePixel"}]
  GETIMPORT R19 K39 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETIMPORT R19 K86 [Enum.AutomaticSize.X]
  SETTABLEKS R19 R18 K50 ["AutomaticSize"]
  LOADK R19 K40 ["$TextPrimary"]
  SETTABLEKS R19 R18 K31 ["TextColor3"]
  LOADN R19 1
  SETTABLEKS R19 R18 K30 ["BackgroundTransparency"]
  LOADK R19 K87 ["$HeaderSubtitleTextSize"]
  SETTABLEKS R19 R18 K32 ["TextSize"]
  GETIMPORT R19 K89 [Enum.Font.SourceSansBold]
  SETTABLEKS R19 R18 K33 ["Font"]
  LOADN R19 0
  SETTABLEKS R19 R18 K16 ["BorderSizePixel"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K74 [":hover"]
  DUPTABLE R22 K75 [{"BackgroundColor3"}]
  LOADK R23 K76 ["$ActionHover"]
  SETTABLEKS R23 R22 K15 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K77 [":press"]
  DUPTABLE R23 K75 [{"BackgroundColor3"}]
  LOADK R24 K78 ["$ActionActivated"]
  SETTABLEKS R24 R23 K15 ["BackgroundColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K79 ["::UICorner"]
  DUPTABLE R24 K81 [{"CornerRadius"}]
  LOADK R25 K82 ["$ButtonBorderRadius"]
  SETTABLEKS R25 R24 K80 ["CornerRadius"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
  MOVE R4 R2
  LOADK R5 K13 [".Component-NotificationHeader"]
  DUPTABLE R6 K17 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R7 K39 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 34
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADK R7 K19 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K20 ["::UIPadding"]
  DUPTABLE R10 K25 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K91 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["PaddingLeft"]
  GETIMPORT R11 K91 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["PaddingRight"]
  GETIMPORT R11 K91 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["PaddingTop"]
  GETIMPORT R11 K91 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K28 ["> #Title"]
  DUPTABLE R11 K92 [{"Size", "Position", "BackgroundColor3", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K39 [UDim2.new]
  LOADK R13 K93 [0.75]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 40
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  GETIMPORT R12 K39 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K29 ["Position"]
  LOADK R12 K19 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  LOADK R12 K40 ["$TextPrimary"]
  SETTABLEKS R12 R11 K31 ["TextColor3"]
  LOADN R12 20
  SETTABLEKS R12 R11 K32 ["TextSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BorderSizePixel"]
  GETIMPORT R12 K44 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R12 R11 K33 ["Font"]
  GETIMPORT R12 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K34 ["TextXAlignment"]
  GETIMPORT R12 K48 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K35 ["TextYAlignment"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K20 ["::UIPadding"]
  DUPTABLE R15 K94 [{"PaddingLeft"}]
  GETIMPORT R16 K91 [UDim.new]
  LOADN R17 0
  LOADN R18 3
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["PaddingLeft"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K49 ["> #MoreOptionsFrame"]
  DUPTABLE R12 K95 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R13 K39 [UDim2.new]
  LOADK R14 K96 [0.25]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 40
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  GETIMPORT R13 K39 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K29 ["Position"]
  GETIMPORT R13 K59 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K52 ["AnchorPoint"]
  LOADK R13 K19 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K16 ["BorderSizePixel"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K71 ["> #MoreOptionsButton"]
  DUPTABLE R16 K95 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K39 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K14 ["Size"]
  GETIMPORT R17 K39 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADK R20 K97 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K29 ["Position"]
  GETIMPORT R17 K59 [Vector2.new]
  LOADN R18 1
  LOADK R19 K97 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["AnchorPoint"]
  LOADK R17 K19 ["$BackgroundPaper"]
  SETTABLEKS R17 R16 K15 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K16 ["BorderSizePixel"]
  NEWTABLE R17 0 3
  MOVE R18 R2
  LOADK R19 K74 [":hover"]
  DUPTABLE R20 K75 [{"BackgroundColor3"}]
  LOADK R21 K76 ["$ActionHover"]
  SETTABLEKS R21 R20 K15 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K77 [":press"]
  DUPTABLE R21 K75 [{"BackgroundColor3"}]
  LOADK R22 K78 ["$ActionActivated"]
  SETTABLEKS R22 R21 K15 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K79 ["::UICorner"]
  DUPTABLE R22 K81 [{"CornerRadius"}]
  GETIMPORT R23 K91 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K80 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
