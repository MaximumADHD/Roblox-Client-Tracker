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
  GETTABLEKS R6 R7 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["NotificationMenu"]
  GETTABLEKS R4 R5 K12 ["constants"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-NotificationMenu"]
  DUPTABLE R6 K15 [{"BackgroundColor3"}]
  LOADK R7 K16 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  NEWTABLE R7 0 2
  MOVE R8 R2
  LOADK R9 K17 ["::UICorner"]
  DUPTABLE R10 K19 [{"CornerRadius"}]
  GETIMPORT R11 K22 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [">> .Component-NotificationMenuInner"]
  DUPTABLE R11 K15 [{"BackgroundColor3"}]
  LOADK R12 K24 ["$SecondaryMain"]
  SETTABLEKS R12 R11 K14 ["BackgroundColor3"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K17 ["::UICorner"]
  DUPTABLE R15 K19 [{"CornerRadius"}]
  GETIMPORT R16 K22 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K18 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K25 ["::UIListLayout"]
  DUPTABLE R16 K30 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R17 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K26 ["FillDirection"]
  GETIMPORT R17 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K27 ["HorizontalAlignment"]
  GETIMPORT R17 K37 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K28 ["SortOrder"]
  GETIMPORT R17 K39 [Enum.VerticalAlignment.Top]
  SETTABLEKS R17 R16 K29 ["VerticalAlignment"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K40 [">> .Component-NotificationMenuOptionButton"]
  DUPTABLE R17 K49 [{"BorderSizePixel", "Font", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextColor3", "BackgroundColor3"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K41 ["BorderSizePixel"]
  GETTABLEKS R18 R3 K50 ["TEXT_FONT"]
  SETTABLEKS R18 R17 K42 ["Font"]
  GETTABLEKS R18 R3 K51 ["TEXT_SIZE"]
  SETTABLEKS R18 R17 K43 ["TextSize"]
  GETIMPORT R18 K53 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K44 ["TextTruncate"]
  LOADB R18 1
  SETTABLEKS R18 R17 K45 ["TextWrapped"]
  GETIMPORT R18 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K46 ["TextXAlignment"]
  GETIMPORT R18 K56 [Enum.TextYAlignment.Center]
  SETTABLEKS R18 R17 K47 ["TextYAlignment"]
  LOADK R18 K57 ["$TextPrimary"]
  SETTABLEKS R18 R17 K48 ["TextColor3"]
  LOADK R18 K24 ["$SecondaryMain"]
  SETTABLEKS R18 R17 K14 ["BackgroundColor3"]
  NEWTABLE R18 0 5
  MOVE R19 R2
  LOADK R20 K17 ["::UICorner"]
  DUPTABLE R21 K19 [{"CornerRadius"}]
  GETIMPORT R22 K22 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K18 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K58 ["::UISizeConstraint"]
  DUPTABLE R22 K60 [{"MaxSize"}]
  GETIMPORT R23 K62 [Vector2.new]
  LOADK R24 K63 [∞]
  LOADN R25 48
  CALL R23 2 1
  SETTABLEKS R23 R22 K59 ["MaxSize"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K64 ["::UIPadding"]
  DUPTABLE R23 K69 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  GETTABLEKS R26 R3 K70 ["LEFT_RIGHT_BUTTON_PADDING"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K65 ["PaddingLeft"]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  GETTABLEKS R26 R3 K70 ["LEFT_RIGHT_BUTTON_PADDING"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K66 ["PaddingRight"]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K67 ["PaddingTop"]
  GETIMPORT R24 K22 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K68 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K71 [":hover"]
  DUPTABLE R24 K15 [{"BackgroundColor3"}]
  LOADK R25 K72 ["$ActionHover"]
  SETTABLEKS R25 R24 K14 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K73 [":pressed"]
  DUPTABLE R25 K15 [{"BackgroundColor3"}]
  LOADK R26 K74 ["$ActionActivated"]
  SETTABLEKS R26 R25 K14 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
