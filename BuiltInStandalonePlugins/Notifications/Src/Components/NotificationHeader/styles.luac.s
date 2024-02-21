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
  JUMPIFNOT R4 [+220]
  MOVE R4 R2
  LOADK R5 K13 [".Component-NotificationHeader"]
  DUPTABLE R6 K17 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R7 K20 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 34
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADK R7 K21 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K22 ["::UIPadding"]
  DUPTABLE R10 K27 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["PaddingLeft"]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["PaddingRight"]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["PaddingTop"]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 ["> #Title"]
  DUPTABLE R11 K37 [{"Size", "Position", "BackgroundColor3", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K20 [UDim2.new]
  LOADK R13 K38 [0.75]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 40
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  GETIMPORT R12 K20 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Position"]
  LOADK R12 K21 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  LOADK R12 K39 ["$TextPrimary"]
  SETTABLEKS R12 R11 K32 ["TextColor3"]
  LOADN R12 20
  SETTABLEKS R12 R11 K33 ["TextSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BorderSizePixel"]
  GETIMPORT R12 K42 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R12 R11 K34 ["Font"]
  GETIMPORT R12 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K35 ["TextXAlignment"]
  GETIMPORT R12 K46 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K36 ["TextYAlignment"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K22 ["::UIPadding"]
  DUPTABLE R15 K47 [{"PaddingLeft"}]
  GETIMPORT R16 K29 [UDim.new]
  LOADN R17 0
  LOADN R18 3
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["PaddingLeft"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K48 ["> #MoreOptionsFrame"]
  DUPTABLE R12 K50 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R13 K20 [UDim2.new]
  LOADK R14 K51 [0.25]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 40
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  GETIMPORT R13 K20 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K31 ["Position"]
  GETIMPORT R13 K53 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K49 ["AnchorPoint"]
  LOADK R13 K21 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K16 ["BorderSizePixel"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K54 ["> #MoreOptionsButton"]
  DUPTABLE R16 K50 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K20 [UDim2.new]
  LOADN R18 0
  LOADN R19 28
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K14 ["Size"]
  GETIMPORT R17 K20 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADK R20 K55 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K31 ["Position"]
  GETIMPORT R17 K53 [Vector2.new]
  LOADN R18 1
  LOADK R19 K55 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K49 ["AnchorPoint"]
  LOADK R17 K21 ["$BackgroundPaper"]
  SETTABLEKS R17 R16 K15 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K16 ["BorderSizePixel"]
  NEWTABLE R17 0 3
  MOVE R18 R2
  LOADK R19 K56 [":hover"]
  DUPTABLE R20 K57 [{"BackgroundColor3"}]
  LOADK R21 K58 ["$ActionHover"]
  SETTABLEKS R21 R20 K15 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K59 [":pressed"]
  DUPTABLE R21 K57 [{"BackgroundColor3"}]
  LOADK R22 K60 ["$ActionActivated"]
  SETTABLEKS R22 R21 K15 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K61 ["::UICorner"]
  DUPTABLE R22 K63 [{"CornerRadius"}]
  GETIMPORT R23 K29 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K62 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
  MOVE R4 R2
  LOADK R5 K13 [".Component-NotificationHeader"]
  DUPTABLE R6 K17 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R7 K20 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 40
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  LOADK R7 K64 ["$BackgroundDefault"]
  SETTABLEKS R7 R6 K15 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  NEWTABLE R7 0 4
  MOVE R8 R2
  LOADK R9 K65 ["::UIListLayout"]
  DUPTABLE R10 K70 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R11 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K66 ["FillDirection"]
  GETIMPORT R11 K73 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K67 ["HorizontalAlignment"]
  GETIMPORT R11 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K68 ["SortOrder"]
  GETIMPORT R11 K77 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K69 ["VerticalAlignment"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K22 ["::UIPadding"]
  DUPTABLE R11 K27 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K29 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["PaddingLeft"]
  GETIMPORT R12 K29 [UDim.new]
  LOADN R13 0
  LOADN R14 10
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["PaddingRight"]
  GETIMPORT R12 K29 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["PaddingTop"]
  GETIMPORT R12 K29 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K30 ["> #Title"]
  DUPTABLE R12 K78 [{"Size", "BackgroundColor3", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R13 K20 [UDim2.new]
  LOADK R14 K38 [0.75]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 40
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  LOADK R13 K64 ["$BackgroundDefault"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  LOADK R13 K39 ["$TextPrimary"]
  SETTABLEKS R13 R12 K32 ["TextColor3"]
  LOADN R13 20
  SETTABLEKS R13 R12 K33 ["TextSize"]
  LOADN R13 0
  SETTABLEKS R13 R12 K16 ["BorderSizePixel"]
  GETIMPORT R13 K42 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R13 R12 K34 ["Font"]
  GETIMPORT R13 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K35 ["TextXAlignment"]
  GETIMPORT R13 K46 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K36 ["TextYAlignment"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K79 ["> #SettingsFrame"]
  DUPTABLE R13 K17 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R14 K20 [UDim2.new]
  LOADK R15 K51 [0.25]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 40
  CALL R14 4 1
  SETTABLEKS R14 R13 K14 ["Size"]
  LOADK R14 K64 ["$BackgroundDefault"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K16 ["BorderSizePixel"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K80 ["> #SettingsButton"]
  DUPTABLE R17 K50 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R18 K20 [UDim2.new]
  LOADN R19 0
  LOADN R20 20
  LOADN R21 0
  LOADN R22 20
  CALL R18 4 1
  SETTABLEKS R18 R17 K14 ["Size"]
  GETIMPORT R18 K20 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADK R21 K55 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K31 ["Position"]
  GETIMPORT R18 K53 [Vector2.new]
  LOADN R19 1
  LOADK R20 K55 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["AnchorPoint"]
  LOADK R18 K64 ["$BackgroundDefault"]
  SETTABLEKS R18 R17 K15 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K16 ["BorderSizePixel"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K56 [":hover"]
  DUPTABLE R21 K57 [{"BackgroundColor3"}]
  LOADK R22 K81 ["$SecondaryHoverBackground"]
  SETTABLEKS R22 R21 K15 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K61 ["::UICorner"]
  DUPTABLE R22 K63 [{"CornerRadius"}]
  GETIMPORT R23 K29 [UDim.new]
  LOADN R24 0
  LOADN R25 4
  CALL R23 2 1
  SETTABLEKS R23 R22 K62 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
