MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETTABLEKS R4 R1 K7 ["Styling"]
  GETTABLEKS R3 R4 K9 ["createStyleSheet"]
  NEWTABLE R4 0 38
  MOVE R5 R2
  LOADK R6 K10 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R7 K12 [{"Font"}]
  LOADK R8 K13 ["$FontWeight400"]
  SETTABLEKS R8 R7 K11 ["Font"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K14 [".Role-Surface"]
  DUPTABLE R8 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R9 K18 ["$Transparency100"]
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  LOADK R9 K19 ["$BorderNone"]
  SETTABLEKS R9 R8 K16 ["BorderSizePixel"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 [".Role-Surface100"]
  DUPTABLE R9 K22 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R10 K23 ["$SemanticColorSurface100"]
  SETTABLEKS R10 R9 K21 ["BackgroundColor3"]
  LOADK R10 K19 ["$BorderNone"]
  SETTABLEKS R10 R9 K16 ["BorderSizePixel"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K24 [".Role-Surface200"]
  DUPTABLE R10 K22 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R11 K25 ["$SemanticColorSurface200"]
  SETTABLEKS R11 R10 K21 ["BackgroundColor3"]
  LOADK R11 K19 ["$BorderNone"]
  SETTABLEKS R11 R10 K16 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K26 [".Role-Text"]
  DUPTABLE R11 K28 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  LOADK R12 K19 ["$BorderNone"]
  SETTABLEKS R12 R11 K16 ["BorderSizePixel"]
  LOADK R12 K18 ["$Transparency100"]
  SETTABLEKS R12 R11 K15 ["BackgroundTransparency"]
  LOADK R12 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R12 R11 K27 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K30 [".Text-Label"]
  DUPTABLE R12 K32 [{"Font", "TextSize"}]
  LOADK R13 K33 ["$ContentTextFontWeight"]
  SETTABLEKS R13 R12 K11 ["Font"]
  LOADK R13 K34 ["$ContentTextFontSize"]
  SETTABLEKS R13 R12 K31 ["TextSize"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K35 [".Text-Title"]
  DUPTABLE R13 K32 [{"Font", "TextSize"}]
  LOADK R14 K36 ["$TitleTextFontWeight"]
  SETTABLEKS R14 R13 K11 ["Font"]
  LOADK R14 K37 ["$TitleTextFontSize"]
  SETTABLEKS R14 R13 K31 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K38 [".Role-Row"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K39 ["::UIListLayout"]
  DUPTABLE R18 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K40 ["FillDirection"]
  LOADK R19 K47 ["$RowSpacingDefault"]
  SETTABLEKS R19 R18 K41 ["Padding"]
  GETIMPORT R19 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K42 ["SortOrder"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K50 [".ConvertibleToColumn"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K39 ["::UIListLayout"]
  DUPTABLE R23 K43 [{"FillDirection", "Padding", "SortOrder"}]
  LOADK R24 K51 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R24 R23 K40 ["FillDirection"]
  LOADK R24 K52 ["$ConvertibleRowToColumnPadding"]
  SETTABLEKS R24 R23 K41 ["Padding"]
  GETIMPORT R24 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K42 ["SortOrder"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K53 ["::UIPadding"]
  DUPTABLE R24 K55 [{"PaddingLeft"}]
  LOADK R25 K56 ["$PaddingLeftMedium"]
  SETTABLEKS R25 R24 K54 ["PaddingLeft"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K57 [".Role-Column"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K39 ["::UIListLayout"]
  DUPTABLE R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K40 ["FillDirection"]
  LOADK R20 K60 ["$ColumnSpacingDefault"]
  SETTABLEKS R20 R19 K41 ["Padding"]
  GETIMPORT R20 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K42 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K61 [".SpacingMedium"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K39 ["::UIListLayout"]
  DUPTABLE R24 K62 [{"Padding"}]
  LOADK R25 K63 ["$ColumnSpacingMedium"]
  SETTABLEKS R25 R24 K41 ["Padding"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K64 [".X-RowSpace50"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K39 ["::UIListLayout"]
  DUPTABLE R20 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K40 ["FillDirection"]
  LOADK R21 K65 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K41 ["Padding"]
  GETIMPORT R21 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K42 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K66 [".X-RowSpace100"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K39 ["::UIListLayout"]
  DUPTABLE R21 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K40 ["FillDirection"]
  LOADK R22 K67 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K41 ["Padding"]
  GETIMPORT R22 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K42 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K68 [".X-RowSpace200"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K39 ["::UIListLayout"]
  DUPTABLE R22 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K40 ["FillDirection"]
  LOADK R23 K69 ["$GlobalSpace200"]
  SETTABLEKS R23 R22 K41 ["Padding"]
  GETIMPORT R23 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K42 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K70 [".X-Pad150 ::UIPadding"]
  DUPTABLE R19 K74 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R20 K75 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K71 ["PaddingBottom"]
  LOADK R20 K75 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K54 ["PaddingLeft"]
  LOADK R20 K75 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K72 ["PaddingRight"]
  LOADK R20 K75 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K73 ["PaddingTop"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K76 [".Role-Menu"]
  DUPTABLE R20 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R21 K23 ["$SemanticColorSurface100"]
  SETTABLEKS R21 R20 K21 ["BackgroundColor3"]
  LOADK R21 K80 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R21 R20 K77 ["BorderColor3"]
  GETIMPORT R21 K82 [Enum.BorderMode.Inset]
  SETTABLEKS R21 R20 K78 ["BorderMode"]
  LOADK R21 K83 ["$BorderMedium"]
  SETTABLEKS R21 R20 K16 ["BorderSizePixel"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K53 ["::UIPadding"]
  DUPTABLE R24 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R25 K85 ["$MenuPadding"]
  SETTABLEKS R25 R24 K54 ["PaddingLeft"]
  LOADK R25 K85 ["$MenuPadding"]
  SETTABLEKS R25 R24 K72 ["PaddingRight"]
  LOADK R25 K85 ["$MenuPadding"]
  SETTABLEKS R25 R24 K73 ["PaddingTop"]
  LOADK R25 K85 ["$MenuPadding"]
  SETTABLEKS R25 R24 K71 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K86 ["> #Menu ::UIListLayout"]
  DUPTABLE R25 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K40 ["FillDirection"]
  LOADK R26 K87 ["$MenuColumnSpacing"]
  SETTABLEKS R26 R25 K41 ["Padding"]
  GETIMPORT R26 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K42 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K88 [".Role-Tooltip"]
  DUPTABLE R21 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R22 K89 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R22 R21 K21 ["BackgroundColor3"]
  LOADK R22 K90 ["$SemanticColorDivider"]
  SETTABLEKS R22 R21 K77 ["BorderColor3"]
  GETIMPORT R22 K82 [Enum.BorderMode.Inset]
  SETTABLEKS R22 R21 K78 ["BorderMode"]
  LOADK R22 K83 ["$BorderMedium"]
  SETTABLEKS R22 R21 K16 ["BorderSizePixel"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K91 ["> #Wrapper"]
  DUPTABLE R25 K93 [{"Size"}]
  GETIMPORT R26 K96 [UDim2.new]
  LOADN R27 0
  LOADN R28 232
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K92 ["Size"]
  NEWTABLE R26 0 3
  MOVE R27 R2
  LOADK R28 K97 ["::UISizeConstraint"]
  DUPTABLE R29 K99 [{"MaxSize"}]
  LOADK R30 K100 ["$TooltipMaxSize"]
  SETTABLEKS R30 R29 K98 ["MaxSize"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K39 ["::UIListLayout"]
  DUPTABLE R30 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R31 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K40 ["FillDirection"]
  LOADK R31 K101 ["$TooltipContentSpacing"]
  SETTABLEKS R31 R30 K41 ["Padding"]
  GETIMPORT R31 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K42 ["SortOrder"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K102 ["> #Content"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 5
  MOVE R33 R2
  LOADK R34 K39 ["::UIListLayout"]
  DUPTABLE R35 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R36 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R36 R35 K40 ["FillDirection"]
  LOADK R36 K103 ["$TooltipTextSpacing"]
  SETTABLEKS R36 R35 K41 ["Padding"]
  GETIMPORT R36 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K42 ["SortOrder"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K104 ["> #TitleFrame"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 2
  MOVE R38 R2
  LOADK R39 K39 ["::UIListLayout"]
  DUPTABLE R40 K105 [{"FillDirection", "SortOrder"}]
  GETIMPORT R41 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R41 R40 K40 ["FillDirection"]
  GETIMPORT R41 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R41 R40 K42 ["SortOrder"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K106 ["> #Spacer"]
  NEWTABLE R41 0 0
  NEWTABLE R42 0 1
  MOVE R43 R2
  LOADK R44 K107 ["::UIFlexItem"]
  DUPTABLE R45 K109 [{"FlexMode"}]
  GETIMPORT R46 K112 [Enum.UIFlexMode.Fill]
  SETTABLEKS R46 R45 K108 ["FlexMode"]
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K113 ["> #Text"]
  DUPTABLE R37 K116 [{"TextWrapped", "TextXAlignment"}]
  LOADB R38 1
  SETTABLEKS R38 R37 K114 ["TextWrapped"]
  GETIMPORT R38 K118 [Enum.TextXAlignment.Left]
  SETTABLEKS R38 R37 K115 ["TextXAlignment"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K119 [">> TextLabel"]
  DUPTABLE R38 K120 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R39 K13 ["$FontWeight400"]
  SETTABLEKS R39 R38 K11 ["Font"]
  LOADK R39 K121 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R39 R38 K27 ["TextColor3"]
  LOADK R39 K19 ["$BorderNone"]
  SETTABLEKS R39 R38 K16 ["BorderSizePixel"]
  LOADK R39 K18 ["$Transparency100"]
  SETTABLEKS R39 R38 K15 ["BackgroundTransparency"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K122 [">> #Title"]
  DUPTABLE R39 K12 [{"Font"}]
  LOADK R40 K123 ["$FontWeight700"]
  SETTABLEKS R40 R39 K11 ["Font"]
  CALL R37 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K124 [".Role-Scroller"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 3
  MOVE R24 R2
  LOADK R25 K125 ["> #Scroller"]
  DUPTABLE R26 K130 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R27 K133 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K126 ["AutomaticCanvasSize"]
  GETIMPORT R27 K135 [Enum.ScrollingDirection.X]
  SETTABLEKS R27 R26 K127 ["ScrollingDirection"]
  LOADN R27 0
  SETTABLEKS R27 R26 K128 ["ScrollBarThickness"]
  GETIMPORT R27 K138 [Enum.ScrollBarInset.None]
  SETTABLEKS R27 R26 K129 ["HorizontalScrollBarInset"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K139 ["> #LeftGradient"]
  DUPTABLE R27 K141 [{"Size", "ZIndex"}]
  LOADK R28 K142 ["$TabGradientSize"]
  SETTABLEKS R28 R27 K92 ["Size"]
  LOADN R28 10
  SETTABLEKS R28 R27 K140 ["ZIndex"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K143 ["> #RightGradient"]
  DUPTABLE R28 K146 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R29 K148 [Vector2.new]
  LOADN R30 1
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K144 ["AnchorPoint"]
  LOADK R29 K142 ["$TabGradientSize"]
  SETTABLEKS R29 R28 K92 ["Size"]
  GETIMPORT R29 K96 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K145 ["Position"]
  LOADN R29 10
  SETTABLEKS R29 R28 K140 ["ZIndex"]
  CALL R26 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K149 [".Role-DividerH"]
  DUPTABLE R7 K93 [{"Size"}]
  GETIMPORT R8 K96 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  CALL R8 4 1
  SETTABLEKS R8 R7 K92 ["Size"]
  NEWTABLE R8 0 1
  MOVE R9 R2
  LOADK R10 K150 ["> Frame"]
  DUPTABLE R11 K151 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R12 K90 ["$SemanticColorDivider"]
  SETTABLEKS R12 R11 K21 ["BackgroundColor3"]
  LOADK R12 K152 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R12 R11 K15 ["BackgroundTransparency"]
  LOADK R12 K19 ["$BorderNone"]
  SETTABLEKS R12 R11 K16 ["BorderSizePixel"]
  GETIMPORT R12 K96 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  CALL R12 4 1
  SETTABLEKS R12 R11 K92 ["Size"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K153 [".Role-DividerV"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K150 ["> Frame"]
  DUPTABLE R12 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R13 K90 ["$SemanticColorDivider"]
  SETTABLEKS R13 R12 K21 ["BackgroundColor3"]
  LOADK R13 K152 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R13 R12 K15 ["BackgroundTransparency"]
  LOADK R13 K19 ["$BorderNone"]
  SETTABLEKS R13 R12 K16 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K155 [".Small"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K150 ["> Frame"]
  DUPTABLE R17 K93 [{"Size"}]
  LOADK R18 K156 ["$SmallSeparator"]
  SETTABLEKS R18 R17 K92 ["Size"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K157 [".Role-Mezzanine"]
  DUPTABLE R9 K93 [{"Size"}]
  GETIMPORT R10 K96 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 36
  CALL R10 4 1
  SETTABLEKS R10 R9 K92 ["Size"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K39 ["::UIListLayout"]
  DUPTABLE R13 K160 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R14 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K40 ["FillDirection"]
  GETIMPORT R14 K163 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R14 R13 K158 ["HorizontalFlex"]
  LOADK R14 K65 ["$GlobalSpace50"]
  SETTABLEKS R14 R13 K41 ["Padding"]
  GETIMPORT R14 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K42 ["SortOrder"]
  GETIMPORT R14 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K159 ["VerticalAlignment"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K166 [">> .LeftMezzControls"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K39 ["::UIListLayout"]
  DUPTABLE R18 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K40 ["FillDirection"]
  LOADK R19 K67 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K41 ["Padding"]
  GETIMPORT R19 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K42 ["SortOrder"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K53 ["::UIPadding"]
  DUPTABLE R19 K55 [{"PaddingLeft"}]
  LOADK R20 K167 ["$MezzaninePadding"]
  SETTABLEKS R20 R19 K54 ["PaddingLeft"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K168 [">> .RightMezzControls"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K39 ["::UIListLayout"]
  DUPTABLE R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K40 ["FillDirection"]
  LOADK R20 K67 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K41 ["Padding"]
  GETIMPORT R20 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K42 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K53 ["::UIPadding"]
  DUPTABLE R20 K169 [{"PaddingRight"}]
  LOADK R21 K167 ["$MezzaninePadding"]
  SETTABLEKS R21 R20 K72 ["PaddingRight"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K170 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R10 K109 [{"FlexMode"}]
  GETIMPORT R11 K172 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R11 R10 K108 ["FlexMode"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K173 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R11 K175 [{"Transparency"}]
  GETIMPORT R12 K177 [NumberSequence.new]
  NEWTABLE R13 0 2
  GETIMPORT R14 K179 [NumberSequenceKeypoint.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  GETIMPORT R15 K179 [NumberSequenceKeypoint.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R12 1 1
  SETTABLEKS R12 R11 K174 ["Transparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K180 [".X-FadeRight ::UIGradient"]
  DUPTABLE R12 K175 [{"Transparency"}]
  GETIMPORT R13 K177 [NumberSequence.new]
  NEWTABLE R14 0 2
  GETIMPORT R15 K179 [NumberSequenceKeypoint.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  GETIMPORT R16 K179 [NumberSequenceKeypoint.new]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R13 1 1
  SETTABLEKS R13 R12 K174 ["Transparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K181 [".Component-RibbonTab"]
  DUPTABLE R13 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R14 K18 ["$Transparency100"]
  SETTABLEKS R14 R13 K15 ["BackgroundTransparency"]
  LOADK R14 K184 ["$FontWeight600"]
  SETTABLEKS R14 R13 K11 ["Font"]
  LOADK R14 K185 ["$SemanticColorContentMuted"]
  SETTABLEKS R14 R13 K27 ["TextColor3"]
  LOADK R14 K186 ["$FontSize50"]
  SETTABLEKS R14 R13 K31 ["TextSize"]
  GETIMPORT R14 K188 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R14 R13 K182 ["TextTruncate"]
  NEWTABLE R14 0 7
  MOVE R15 R2
  LOADK R16 K189 [".State-Selected"]
  DUPTABLE R17 K190 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R18 K191 ["$SemanticColorStatesSelected"]
  SETTABLEKS R18 R17 K21 ["BackgroundColor3"]
  LOADK R18 K192 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R18 R17 K15 ["BackgroundTransparency"]
  LOADK R18 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R18 R17 K27 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K193 [".State-Disabled"]
  DUPTABLE R18 K194 [{"TextColor3"}]
  LOADK R19 K195 ["$SemanticColorContentDisabled"]
  SETTABLEKS R19 R18 K27 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K196 [".State-Default"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K197 [":hover"]
  DUPTABLE R23 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K199 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R24 R23 K21 ["BackgroundColor3"]
  LOADK R24 K200 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R24 R23 K15 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K201 [":press"]
  DUPTABLE R24 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R25 R24 K21 ["BackgroundColor3"]
  LOADK R25 K203 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R25 R24 K15 ["BackgroundTransparency"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K204 [".State-Editing"]
  DUPTABLE R20 K206 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  LOADK R21 K191 ["$SemanticColorStatesSelected"]
  SETTABLEKS R21 R20 K21 ["BackgroundColor3"]
  LOADK R21 K192 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R21 R20 K15 ["BackgroundTransparency"]
  LOADB R21 1
  SETTABLEKS R21 R20 K205 ["ClipsDescendants"]
  LOADK R21 K123 ["$FontWeight700"]
  SETTABLEKS R21 R20 K11 ["Font"]
  LOADK R21 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K27 ["TextColor3"]
  GETIMPORT R21 K207 [Enum.TextTruncate.None]
  SETTABLEKS R21 R20 K182 ["TextTruncate"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K97 ["::UISizeConstraint"]
  DUPTABLE R21 K209 [{"MinSize", "MaxSize"}]
  GETIMPORT R22 K148 [Vector2.new]
  LOADN R23 80
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K208 ["MinSize"]
  GETIMPORT R22 K148 [Vector2.new]
  LOADN R23 80
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K98 ["MaxSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K53 ["::UIPadding"]
  DUPTABLE R22 K210 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  LOADK R23 K211 ["$GlobalSpace75"]
  SETTABLEKS R23 R22 K73 ["PaddingTop"]
  LOADK R23 K211 ["$GlobalSpace75"]
  SETTABLEKS R23 R22 K71 ["PaddingBottom"]
  LOADK R23 K67 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K54 ["PaddingLeft"]
  LOADK R23 K67 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K72 ["PaddingRight"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K212 ["::UICorner"]
  DUPTABLE R23 K214 [{"CornerRadius"}]
  LOADK R24 K215 ["$TabCornerRadius"]
  SETTABLEKS R24 R23 K213 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K216 [".Component-RibbonTabs"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 5
  MOVE R16 R2
  LOADK R17 K107 ["::UIFlexItem"]
  DUPTABLE R18 K219 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R19 K221 [Enum.UIFlexMode.Custom]
  SETTABLEKS R19 R18 K108 ["FlexMode"]
  LOADK R19 K222 [10000000000]
  SETTABLEKS R19 R18 K217 ["GrowRatio"]
  LOADK R19 K223 [1E-10]
  SETTABLEKS R19 R18 K218 ["ShrinkRatio"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K39 ["::UIListLayout"]
  DUPTABLE R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K40 ["FillDirection"]
  LOADK R20 K224 ["$RibbonTabsContainerSpacing"]
  SETTABLEKS R20 R19 K41 ["Padding"]
  GETIMPORT R20 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K42 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K225 ["> #CollapsibleScroller"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K125 ["> #Scroller"]
  DUPTABLE R24 K226 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R25 K133 [Enum.AutomaticSize.XY]
  SETTABLEKS R25 R24 K126 ["AutomaticCanvasSize"]
  GETIMPORT R25 K135 [Enum.ScrollingDirection.X]
  SETTABLEKS R25 R24 K127 ["ScrollingDirection"]
  LOADN R25 0
  SETTABLEKS R25 R24 K128 ["ScrollBarThickness"]
  GETIMPORT R25 K138 [Enum.ScrollBarInset.None]
  SETTABLEKS R25 R24 K129 ["HorizontalScrollBarInset"]
  GETIMPORT R25 K228 [UDim2.fromScale]
  LOADN R26 1
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K92 ["Size"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K91 ["> #Wrapper"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K39 ["::UIListLayout"]
  DUPTABLE R32 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R33 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K40 ["FillDirection"]
  LOADK R33 K229 ["$RibbonTabsSpacing"]
  SETTABLEKS R33 R32 K41 ["Padding"]
  GETIMPORT R33 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K42 ["SortOrder"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K139 ["> #LeftGradient"]
  DUPTABLE R25 K141 [{"Size", "ZIndex"}]
  LOADK R26 K142 ["$TabGradientSize"]
  SETTABLEKS R26 R25 K92 ["Size"]
  LOADN R26 10
  SETTABLEKS R26 R25 K140 ["ZIndex"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K143 ["> #RightGradient"]
  DUPTABLE R26 K146 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R27 K148 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K144 ["AnchorPoint"]
  LOADK R27 K142 ["$TabGradientSize"]
  SETTABLEKS R27 R26 K92 ["Size"]
  GETIMPORT R27 K96 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K145 ["Position"]
  LOADN R27 10
  SETTABLEKS R27 R26 K140 ["ZIndex"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K230 ["> #More"]
  DUPTABLE R21 K232 [{"Visible"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K231 ["Visible"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K233 [".Compact > #More"]
  DUPTABLE R22 K232 [{"Visible"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K231 ["Visible"]
  CALL R20 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K234 [".Component-RibbonButton"]
  DUPTABLE R15 K237 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K235 ["AutoButtonColor"]
  LOADK R16 K18 ["$Transparency100"]
  SETTABLEKS R16 R15 K15 ["BackgroundTransparency"]
  LOADK R16 K19 ["$BorderNone"]
  SETTABLEKS R16 R15 K16 ["BorderSizePixel"]
  LOADK R16 K238 [""]
  SETTABLEKS R16 R15 K236 ["Text"]
  NEWTABLE R16 0 8
  MOVE R17 R2
  LOADK R18 K155 [".Small"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K97 ["::UISizeConstraint"]
  DUPTABLE R23 K99 [{"MaxSize"}]
  LOADK R24 K239 ["$RibbonButtonSmallMaxSize"]
  SETTABLEKS R24 R23 K98 ["MaxSize"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K240 ["> TextLabel"]
  DUPTABLE R20 K241 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R21 K18 ["$Transparency100"]
  SETTABLEKS R21 R20 K15 ["BackgroundTransparency"]
  LOADK R21 K13 ["$FontWeight400"]
  SETTABLEKS R21 R20 K11 ["Font"]
  LOADN R21 2
  SETTABLEKS R21 R20 K48 ["LayoutOrder"]
  LOADK R21 K185 ["$SemanticColorContentMuted"]
  SETTABLEKS R21 R20 K27 ["TextColor3"]
  LOADK R21 K242 ["$RibbonButtonLabelTextSize"]
  SETTABLEKS R21 R20 K31 ["TextSize"]
  GETIMPORT R21 K244 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R21 R20 K182 ["TextTruncate"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K245 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R21 K246 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R22 K18 ["$Transparency100"]
  SETTABLEKS R22 R21 K15 ["BackgroundTransparency"]
  LOADK R22 K19 ["$BorderNone"]
  SETTABLEKS R22 R21 K16 ["BorderSizePixel"]
  LOADN R22 0
  SETTABLEKS R22 R21 K48 ["LayoutOrder"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K247 [".Icon-Large"]
  DUPTABLE R25 K93 [{"Size"}]
  LOADK R26 K248 ["$IconLarge"]
  SETTABLEKS R26 R25 K92 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K249 [".Icon-Small"]
  DUPTABLE R26 K93 [{"Size"}]
  LOADK R27 K250 ["$IconSmall"]
  SETTABLEKS R27 R26 K92 ["Size"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K251 ["> #RibbonTool"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K212 ["::UICorner"]
  DUPTABLE R26 K214 [{"CornerRadius"}]
  LOADK R27 K252 ["$GlobalRadiusXSmall"]
  SETTABLEKS R27 R26 K213 ["CornerRadius"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K193 [".State-Disabled"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K253 [">> #RibbonTool"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K254 ["> #RibbonToolButtonIcon"]
  DUPTABLE R31 K256 [{"ImageTransparency"}]
  LOADK R32 K1 [script]
  SETTABLEKS R32 R31 K255 ["ImageTransparency"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K196 [".State-Default"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K2 ["Parent"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K197 [":hover"]
  DUPTABLE R32 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R33 K200 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R33 R32 K15 ["BackgroundTransparency"]
  LOADK R33 K199 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R33 R32 K21 ["BackgroundColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K201 [":press"]
  DUPTABLE R33 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R34 K203 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R34 R33 K15 ["BackgroundTransparency"]
  LOADK R34 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R34 R33 K21 ["BackgroundColor3"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K189 [".State-Selected"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K253 [">> #RibbonTool"]
  DUPTABLE R29 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K192 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R30 R29 K15 ["BackgroundTransparency"]
  LOADK R30 K191 ["$SemanticColorStatesSelected"]
  SETTABLEKS R30 R29 K21 ["BackgroundColor3"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K4 [require]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K5 ["Packages"]
  DUPTABLE R30 K262 [{"BackgroundTransparency"}]
  LOADK R31 K7 ["Styling"]
  SETTABLEKS R31 R30 K15 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K8 ["createStyleRule"]
  DUPTABLE R34 K267 [{"Color", "Rotation", "Transparency"}]
  LOADK R35 K12 [{"Font"}]
  SETTABLEKS R35 R34 K265 ["Color"]
  LOADK R35 K13 ["$FontWeight400"]
  SETTABLEKS R35 R34 K266 ["Rotation"]
  LOADK R35 K14 [".Role-Surface"]
  SETTABLEKS R35 R34 K174 ["Transparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K15 ["BackgroundTransparency"]
  DUPTABLE R31 K262 [{"BackgroundTransparency"}]
  LOADK R32 K7 ["Styling"]
  SETTABLEKS R32 R31 K15 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K8 ["createStyleRule"]
  DUPTABLE R35 K267 [{"Color", "Rotation", "Transparency"}]
  LOADK R36 K16 ["BorderSizePixel"]
  SETTABLEKS R36 R35 K265 ["Color"]
  LOADK R36 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R36 R35 K266 ["Rotation"]
  LOADK R36 K18 ["$Transparency100"]
  SETTABLEKS R36 R35 K174 ["Transparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K19 ["$BorderNone"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K39 ["::UIListLayout"]
  DUPTABLE R20 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K40 ["FillDirection"]
  LOADK R21 K67 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K41 ["Padding"]
  GETIMPORT R21 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K42 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K20 [".Role-Surface100"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K21 ["BackgroundColor3"]
  DUPTABLE R25 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K40 ["FillDirection"]
  LOADK R26 K65 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K41 ["Padding"]
  GETIMPORT R26 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K42 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K22 [{"BackgroundColor3", "BorderSizePixel"}]
  DUPTABLE R17 K279 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K235 ["AutoButtonColor"]
  LOADK R18 K238 [""]
  SETTABLEKS R18 R17 K236 ["Text"]
  GETIMPORT R18 K281 [UDim2.fromOffset]
  LOADN R19 0
  LOADN R20 24
  CALL R18 2 1
  SETTABLEKS R18 R17 K92 ["Size"]
  NEWTABLE R18 0 6
  MOVE R19 R2
  LOADK R20 K212 ["::UICorner"]
  DUPTABLE R21 K214 [{"CornerRadius"}]
  LOADK R22 K252 ["$GlobalRadiusXSmall"]
  SETTABLEKS R22 R21 K213 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K26 [".Role-Text"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K27 ["TextColor3"]
  DUPTABLE R26 K284 [{"LayoutOrder"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K48 ["LayoutOrder"]
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K247 [".Icon-Large"]
  DUPTABLE R30 K93 [{"Size"}]
  LOADK R31 K248 ["$IconLarge"]
  SETTABLEKS R31 R30 K92 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K249 [".Icon-Small"]
  DUPTABLE R31 K93 [{"Size"}]
  LOADK R32 K250 ["$IconSmall"]
  SETTABLEKS R32 R31 K92 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K29 ["$SemanticColorContentStandard"]
  DUPTABLE R32 K284 [{"LayoutOrder"}]
  LOADN R33 3
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K30 [".Text-Label"]
  DUPTABLE R27 K287 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R28 K123 ["$FontWeight700"]
  SETTABLEKS R28 R27 K11 ["Font"]
  LOADK R28 K32 [{"Font", "TextSize"}]
  SETTABLEKS R28 R27 K31 ["TextSize"]
  LOADN R28 2
  SETTABLEKS R28 R27 K48 ["LayoutOrder"]
  LOADK R28 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K27 ["TextColor3"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K155 [".Small"]
  DUPTABLE R31 K289 [{"TextSize"}]
  LOADK R32 K186 ["$FontSize50"]
  SETTABLEKS R32 R31 K31 ["TextSize"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K34 ["$ContentTextFontSize"]
  DUPTABLE R32 K289 [{"TextSize"}]
  LOADK R33 K35 [".Text-Title"]
  SETTABLEKS R33 R32 K31 ["TextSize"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K193 [".State-Disabled"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K36 ["$TitleTextFontWeight"]
  DUPTABLE R27 K256 [{"ImageTransparency"}]
  LOADK R28 K1 [script]
  SETTABLEKS R28 R27 K255 ["ImageTransparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K37 ["$TitleTextFontSize"]
  DUPTABLE R28 K194 [{"TextColor3"}]
  LOADK R29 K195 ["$SemanticColorContentDisabled"]
  SETTABLEKS R29 R28 K27 ["TextColor3"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K196 [".State-Default"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K38 [".Role-Row"]
  DUPTABLE R28 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K200 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R29 R28 K15 ["BackgroundTransparency"]
  LOADK R29 K199 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R29 R28 K21 ["BackgroundColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K39 ["::UIListLayout"]
  DUPTABLE R29 K259 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K203 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R30 R29 K15 ["BackgroundTransparency"]
  LOADK R30 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R30 R29 K21 ["BackgroundColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K40 ["FillDirection"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K41 ["Padding"]
  DUPTABLE R29 K300 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R30 K302 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R30 R29 K298 ["ApplyStrokeMode"]
  LOADK R30 K90 ["$SemanticColorDivider"]
  SETTABLEKS R30 R29 K265 ["Color"]
  LOADK R30 K83 ["$BorderMedium"]
  SETTABLEKS R30 R29 K299 ["Thickness"]
  LOADK R30 K152 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R30 R29 K174 ["Transparency"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K47 ["$RowSpacingDefault"]
  DUPTABLE R26 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K48 ["LayoutOrder"]
  SETTABLEKS R27 R26 K21 ["BackgroundColor3"]
  LOADK R27 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K15 ["BackgroundTransparency"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K196 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K38 [".Role-Row"]
  DUPTABLE R34 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R35 K199 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R35 R34 K21 ["BackgroundColor3"]
  LOADK R35 K200 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R35 R34 K15 ["BackgroundTransparency"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K39 ["::UIListLayout"]
  DUPTABLE R35 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R36 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R36 R35 K21 ["BackgroundColor3"]
  LOADK R36 K203 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R36 R35 K15 ["BackgroundTransparency"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K37 ["$TitleTextFontSize"]
  DUPTABLE R31 K307 [{"TextColor3", "TextTransparency"}]
  LOADK R32 K52 ["$ConvertibleRowToColumnPadding"]
  SETTABLEKS R32 R31 K27 ["TextColor3"]
  LOADK R32 K53 ["::UIPadding"]
  SETTABLEKS R32 R31 K306 ["TextTransparency"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K54 ["PaddingLeft"]
  DUPTABLE R18 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R19 K18 ["$Transparency100"]
  SETTABLEKS R19 R18 K15 ["BackgroundTransparency"]
  LOADK R19 K19 ["$BorderNone"]
  SETTABLEKS R19 R18 K16 ["BorderSizePixel"]
  NEWTABLE R19 0 7
  MOVE R20 R2
  LOADK R21 K55 [{"PaddingLeft"}]
  DUPTABLE R22 K312 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K235 ["AutoButtonColor"]
  LOADK R23 K18 ["$Transparency100"]
  SETTABLEKS R23 R22 K15 ["BackgroundTransparency"]
  LOADK R23 K19 ["$BorderNone"]
  SETTABLEKS R23 R22 K16 ["BorderSizePixel"]
  LOADN R23 1
  SETTABLEKS R23 R22 K48 ["LayoutOrder"]
  LOADK R23 K238 [""]
  SETTABLEKS R23 R22 K236 ["Text"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K57 [".Role-Column"]
  DUPTABLE R26 K314 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R27 K18 ["$Transparency100"]
  SETTABLEKS R27 R26 K15 ["BackgroundTransparency"]
  LOADK R27 K19 ["$BorderNone"]
  SETTABLEKS R27 R26 K16 ["BorderSizePixel"]
  LOADK R27 K13 ["$FontWeight400"]
  SETTABLEKS R27 R26 K11 ["Font"]
  LOADN R27 2
  SETTABLEKS R27 R26 K48 ["LayoutOrder"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R27 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R28 K18 ["$Transparency100"]
  SETTABLEKS R28 R27 K15 ["BackgroundTransparency"]
  LOADK R28 K19 ["$BorderNone"]
  SETTABLEKS R28 R27 K16 ["BorderSizePixel"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K60 ["$ColumnSpacingDefault"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K55 [{"PaddingLeft"}]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K39 ["::UIListLayout"]
  DUPTABLE R31 K317 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R32 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R32 R31 K40 ["FillDirection"]
  LOADK R32 K67 ["$GlobalSpace100"]
  SETTABLEKS R32 R31 K41 ["Padding"]
  GETIMPORT R32 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K42 ["SortOrder"]
  GETIMPORT R32 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R32 R31 K159 ["VerticalAlignment"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R32 K93 [{"Size"}]
  LOADK R33 K250 ["$IconSmall"]
  SETTABLEKS R33 R32 K92 ["Size"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K155 [".Small"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K55 [{"PaddingLeft"}]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K57 [".Role-Column"]
  DUPTABLE R32 K289 [{"TextSize"}]
  LOADK R33 K186 ["$FontSize50"]
  SETTABLEKS R33 R32 K31 ["TextSize"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K62 [{"Padding"}]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K55 [{"PaddingLeft"}]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K57 [".Role-Column"]
  DUPTABLE R33 K289 [{"TextSize"}]
  LOADK R34 K32 [{"Font", "TextSize"}]
  SETTABLEKS R34 R33 K31 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K34 ["$ContentTextFontSize"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K55 [{"PaddingLeft"}]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K39 ["::UIListLayout"]
  DUPTABLE R34 K317 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R35 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K40 ["FillDirection"]
  LOADK R35 K75 ["$GlobalSpace150"]
  SETTABLEKS R35 R34 K41 ["Padding"]
  GETIMPORT R35 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K42 ["SortOrder"]
  GETIMPORT R35 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K159 ["VerticalAlignment"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R35 K93 [{"Size"}]
  LOADK R36 K248 ["$IconLarge"]
  SETTABLEKS R36 R35 K92 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K57 [".Role-Column"]
  DUPTABLE R36 K289 [{"TextSize"}]
  LOADK R37 K35 [".Text-Title"]
  SETTABLEKS R37 R36 K31 ["TextSize"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K196 [".State-Default"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 4
  MOVE R29 R2
  LOADK R30 K55 [{"PaddingLeft"}]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K63 ["$ColumnSpacingMedium"]
  DUPTABLE R35 K321 [{"Image"}]
  LOADK R36 K66 [".X-RowSpace100"]
  SETTABLEKS R36 R35 K320 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K67 ["$GlobalSpace100"]
  DUPTABLE R36 K194 [{"TextColor3"}]
  LOADK R37 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K27 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K68 [".X-RowSpace200"]
  DUPTABLE R32 K321 [{"Image"}]
  LOADK R33 K69 ["$GlobalSpace200"]
  SETTABLEKS R33 R32 K320 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K70 [".X-Pad150 ::UIPadding"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K55 [{"PaddingLeft"}]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R41 K321 [{"Image"}]
  LOADK R42 K71 ["PaddingBottom"]
  SETTABLEKS R42 R41 K320 ["Image"]
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K72 ["PaddingRight"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K55 [{"PaddingLeft"}]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R42 K321 [{"Image"}]
  LOADK R43 K73 ["PaddingTop"]
  SETTABLEKS R43 R42 K320 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K193 [".State-Disabled"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K55 [{"PaddingLeft"}]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R36 K321 [{"Image"}]
  LOADK R37 K74 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  SETTABLEKS R37 R36 K320 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K57 [".Role-Column"]
  DUPTABLE R37 K194 [{"TextColor3"}]
  LOADK R38 K195 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K27 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K70 [".X-Pad150 ::UIPadding"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K55 [{"PaddingLeft"}]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R41 K321 [{"Image"}]
  LOADK R42 K75 ["$GlobalSpace150"]
  SETTABLEKS R42 R41 K320 ["Image"]
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K72 ["PaddingRight"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K55 [{"PaddingLeft"}]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K59 [Enum.FillDirection.Vertical]
  DUPTABLE R42 K321 [{"Image"}]
  LOADK R43 K76 [".Role-Menu"]
  SETTABLEKS R43 R42 K320 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K77 ["BorderColor3"]
  DUPTABLE R19 K334 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K235 ["AutoButtonColor"]
  LOADK R20 K19 ["$BorderNone"]
  SETTABLEKS R20 R19 K16 ["BorderSizePixel"]
  LOADK R20 K18 ["$Transparency100"]
  SETTABLEKS R20 R19 K15 ["BackgroundTransparency"]
  LOADK R20 K238 [""]
  SETTABLEKS R20 R19 K236 ["Text"]
  NEWTABLE R20 0 9
  MOVE R21 R2
  LOADK R22 K53 ["::UIPadding"]
  DUPTABLE R23 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  SETTABLEKS R24 R23 K54 ["PaddingLeft"]
  LOADK R24 K79 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  SETTABLEKS R24 R23 K72 ["PaddingRight"]
  LOADK R24 K80 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R24 R23 K73 ["PaddingTop"]
  LOADK R24 K80 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R24 R23 K71 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K212 ["::UICorner"]
  DUPTABLE R24 K214 [{"CornerRadius"}]
  LOADK R25 K252 ["$GlobalRadiusXSmall"]
  SETTABLEKS R25 R24 K213 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K81 ["Inset"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 6
  MOVE R27 R2
  LOADK R28 K39 ["::UIListLayout"]
  DUPTABLE R29 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R30 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K40 ["FillDirection"]
  LOADK R30 K82 [Enum.BorderMode.Inset]
  SETTABLEKS R30 R29 K41 ["Padding"]
  GETIMPORT R30 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K42 ["SortOrder"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K83 ["$BorderMedium"]
  DUPTABLE R30 K340 [{"LayoutOrder", "Size"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K48 ["LayoutOrder"]
  LOADK R31 K250 ["$IconSmall"]
  SETTABLEKS R31 R30 K92 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K85 ["$MenuPadding"]
  DUPTABLE R31 K342 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R32 K19 ["$BorderNone"]
  SETTABLEKS R32 R31 K16 ["BorderSizePixel"]
  LOADK R32 K18 ["$Transparency100"]
  SETTABLEKS R32 R31 K15 ["BackgroundTransparency"]
  LOADN R32 0
  SETTABLEKS R32 R31 K48 ["LayoutOrder"]
  LOADK R32 K250 ["$IconSmall"]
  SETTABLEKS R32 R31 K92 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K87 ["$MenuColumnSpacing"]
  DUPTABLE R32 K342 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R33 K19 ["$BorderNone"]
  SETTABLEKS R33 R32 K16 ["BorderSizePixel"]
  LOADK R33 K18 ["$Transparency100"]
  SETTABLEKS R33 R32 K15 ["BackgroundTransparency"]
  LOADN R33 1
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  LOADK R33 K248 ["$IconLarge"]
  SETTABLEKS R33 R32 K92 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K113 ["> #Text"]
  DUPTABLE R33 K344 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R34 K18 ["$Transparency100"]
  SETTABLEKS R34 R33 K15 ["BackgroundTransparency"]
  LOADK R34 K13 ["$FontWeight400"]
  SETTABLEKS R34 R33 K11 ["Font"]
  LOADK R34 K186 ["$FontSize50"]
  SETTABLEKS R34 R33 K31 ["TextSize"]
  LOADN R34 2
  SETTABLEKS R34 R33 K48 ["LayoutOrder"]
  LOADK R34 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R34 R33 K27 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K89 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R34 K340 [{"LayoutOrder", "Size"}]
  LOADN R35 3
  SETTABLEKS R35 R34 K48 ["LayoutOrder"]
  LOADK R35 K250 ["$IconSmall"]
  SETTABLEKS R35 R34 K92 ["Size"]
  CALL R32 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K90 ["$SemanticColorDivider"]
  DUPTABLE R26 K347 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R27 K148 [Vector2.new]
  LOADN R28 1
  LOADK R29 K92 ["Size"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K144 ["AnchorPoint"]
  GETIMPORT R27 K228 [UDim2.fromScale]
  LOADN R28 1
  LOADK R29 K92 ["Size"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K145 ["Position"]
  LOADK R27 K19 ["$BorderNone"]
  SETTABLEKS R27 R26 K16 ["BorderSizePixel"]
  LOADK R27 K18 ["$Transparency100"]
  SETTABLEKS R27 R26 K15 ["BackgroundTransparency"]
  LOADK R27 K93 [{"Size"}]
  SETTABLEKS R27 R26 K320 ["Image"]
  LOADN R27 3
  SETTABLEKS R27 R26 K48 ["LayoutOrder"]
  LOADK R27 K250 ["$IconSmall"]
  SETTABLEKS R27 R26 K92 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K94 ["UDim2"]
  DUPTABLE R27 K93 [{"Size"}]
  LOADK R28 K250 ["$IconSmall"]
  SETTABLEKS R28 R27 K92 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K189 [".State-Selected"]
  DUPTABLE R28 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K191 ["$SemanticColorStatesSelected"]
  SETTABLEKS R29 R28 K21 ["BackgroundColor3"]
  LOADK R29 K192 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R29 R28 K15 ["BackgroundTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K95 ["new"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K81 ["Inset"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K85 ["$MenuPadding"]
  DUPTABLE R37 K321 [{"Image"}]
  LOADK R38 K96 [UDim2.new]
  SETTABLEKS R38 R37 K320 ["Image"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K97 ["::UISizeConstraint"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K197 [":hover"]
  DUPTABLE R34 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R35 K98 ["MaxSize"]
  SETTABLEKS R35 R34 K21 ["BackgroundColor3"]
  LOADK R35 K99 [{"MaxSize"}]
  SETTABLEKS R35 R34 K15 ["BackgroundTransparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K193 [".State-Disabled"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K81 ["Inset"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K100 ["$TooltipMaxSize"]
  DUPTABLE R39 K256 [{"ImageTransparency"}]
  LOADK R40 K1 [script]
  SETTABLEKS R40 R39 K255 ["ImageTransparency"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K113 ["> #Text"]
  DUPTABLE R40 K194 [{"TextColor3"}]
  LOADK R41 K195 ["$SemanticColorContentDisabled"]
  SETTABLEKS R41 R40 K27 ["TextColor3"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K101 ["$TooltipContentSpacing"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K193 [".State-Disabled"]
  DUPTABLE R24 K256 [{"ImageTransparency"}]
  LOADK R25 K1 [script]
  SETTABLEKS R25 R24 K255 ["ImageTransparency"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K102 ["> #Content"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K53 ["::UIPadding"]
  DUPTABLE R25 K359 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  LOADK R26 K104 ["> #TitleFrame"]
  SETTABLEKS R26 R25 K54 ["PaddingLeft"]
  LOADK R26 K104 ["> #TitleFrame"]
  SETTABLEKS R26 R25 K73 ["PaddingTop"]
  LOADK R26 K104 ["> #TitleFrame"]
  SETTABLEKS R26 R25 K71 ["PaddingBottom"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K105 [{"FillDirection", "SortOrder"}]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 7
  MOVE R24 R2
  LOADK R25 K41 ["Padding"]
  DUPTABLE R26 K362 [{"Thickness"}]
  LOADK R27 K19 ["$BorderNone"]
  SETTABLEKS R27 R26 K299 ["Thickness"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K212 ["::UICorner"]
  DUPTABLE R27 K214 [{"CornerRadius"}]
  LOADK R28 K107 ["::UIFlexItem"]
  SETTABLEKS R28 R27 K213 ["CornerRadius"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K108 ["FlexMode"]
  DUPTABLE R28 K365 [{"TextSize", "TextXAlignment", "TextTruncate"}]
  LOADK R29 K186 ["$FontSize50"]
  SETTABLEKS R29 R28 K31 ["TextSize"]
  GETIMPORT R29 K118 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K115 ["TextXAlignment"]
  GETIMPORT R29 K188 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R29 R28 K182 ["TextTruncate"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K53 ["::UIPadding"]
  DUPTABLE R32 K366 [{"PaddingLeft", "PaddingRight"}]
  LOADK R33 K65 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K54 ["PaddingLeft"]
  LOADK R33 K65 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K72 ["PaddingRight"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K196 [".State-Default"]
  DUPTABLE R29 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K111 ["Fill"]
  SETTABLEKS R30 R29 K21 ["BackgroundColor3"]
  LOADK R30 K112 [Enum.UIFlexMode.Fill]
  SETTABLEKS R30 R29 K15 ["BackgroundTransparency"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K108 ["FlexMode"]
  DUPTABLE R33 K194 [{"TextColor3"}]
  LOADK R34 K185 ["$SemanticColorContentMuted"]
  SETTABLEKS R34 R33 K27 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K113 ["> #Text"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K41 ["Padding"]
  DUPTABLE R34 K370 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R35 K302 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R35 R34 K298 ["ApplyStrokeMode"]
  LOADK R35 K115 ["TextXAlignment"]
  SETTABLEKS R35 R34 K265 ["Color"]
  LOADK R35 K83 ["$BorderMedium"]
  SETTABLEKS R35 R34 K299 ["Thickness"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K108 ["FlexMode"]
  DUPTABLE R35 K194 [{"TextColor3"}]
  LOADK R36 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K27 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K116 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R31 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K117 ["Left"]
  SETTABLEKS R32 R31 K21 ["BackgroundColor3"]
  LOADK R32 K118 [Enum.TextXAlignment.Left]
  SETTABLEKS R32 R31 K15 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K108 ["FlexMode"]
  DUPTABLE R35 K194 [{"TextColor3"}]
  LOADK R36 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K27 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K193 [".State-Disabled"]
  DUPTABLE R32 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K111 ["Fill"]
  SETTABLEKS R33 R32 K21 ["BackgroundColor3"]
  LOADK R33 K112 [Enum.UIFlexMode.Fill]
  SETTABLEKS R33 R32 K15 ["BackgroundTransparency"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K108 ["FlexMode"]
  DUPTABLE R36 K194 [{"TextColor3"}]
  LOADK R37 K195 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K27 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K119 [">> TextLabel"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 3
  MOVE R9 R2
  LOADK R10 K120 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  DUPTABLE R11 K93 [{"Size"}]
  GETIMPORT R12 K281 [UDim2.fromOffset]
  LOADN R13 16
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K92 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K121 ["$SemanticColorContentStandardInverse"]
  DUPTABLE R15 K93 [{"Size"}]
  GETIMPORT R16 K281 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K92 ["Size"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K196 [".State-Default"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K122 [">> #Title"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 3
  MOVE R18 R2
  LOADK R19 K123 ["$FontWeight700"]
  DUPTABLE R20 K321 [{"Image"}]
  LOADK R21 K124 [".Role-Scroller"]
  SETTABLEKS R21 R20 K320 ["Image"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K125 ["> #Scroller"]
  DUPTABLE R21 K321 [{"Image"}]
  LOADK R22 K126 ["AutomaticCanvasSize"]
  SETTABLEKS R22 R21 K320 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K127 ["ScrollingDirection"]
  DUPTABLE R22 K321 [{"Image"}]
  LOADK R23 K128 ["ScrollBarThickness"]
  SETTABLEKS R23 R22 K320 ["Image"]
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K129 ["HorizontalScrollBarInset"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K123 ["$FontWeight700"]
  DUPTABLE R21 K321 [{"Image"}]
  LOADK R22 K130 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  SETTABLEKS R22 R21 K320 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K125 ["> #Scroller"]
  DUPTABLE R22 K321 [{"Image"}]
  LOADK R23 K131 ["AutomaticSize"]
  SETTABLEKS R23 R22 K320 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K127 ["ScrollingDirection"]
  DUPTABLE R23 K321 [{"Image"}]
  LOADK R24 K132 ["XY"]
  SETTABLEKS R24 R23 K320 ["Image"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K193 [".State-Disabled"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K122 [">> #Title"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K133 [Enum.AutomaticSize.XY]
  DUPTABLE R21 K321 [{"Image"}]
  LOADK R22 K128 ["ScrollBarThickness"]
  SETTABLEKS R22 R21 K320 ["Image"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K129 ["HorizontalScrollBarInset"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K133 [Enum.AutomaticSize.XY]
  DUPTABLE R22 K321 [{"Image"}]
  LOADK R23 K132 ["XY"]
  SETTABLEKS R23 R22 K320 ["Image"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K134 ["X"]
  DUPTABLE R8 K262 [{"BackgroundTransparency"}]
  LOADK R9 K18 ["$Transparency100"]
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  NEWTABLE R9 0 3
  MOVE R10 R2
  LOADK R11 K135 [Enum.ScrollingDirection.X]
  DUPTABLE R12 K214 [{"CornerRadius"}]
  LOADK R13 K252 ["$GlobalRadiusXSmall"]
  SETTABLEKS R13 R12 K213 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K136 ["ScrollBarInset"]
  DUPTABLE R13 K300 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R14 K302 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R14 R13 K298 ["ApplyStrokeMode"]
  LOADK R14 K90 ["$SemanticColorDivider"]
  SETTABLEKS R14 R13 K265 ["Color"]
  LOADK R14 K83 ["$BorderMedium"]
  SETTABLEKS R14 R13 K299 ["Thickness"]
  LOADK R14 K152 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R14 R13 K174 ["Transparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K137 ["None"]
  DUPTABLE R14 K262 [{"BackgroundTransparency"}]
  LOADK R15 K18 ["$Transparency100"]
  SETTABLEKS R15 R14 K15 ["BackgroundTransparency"]
  NEWTABLE R15 0 4
  MOVE R16 R2
  LOADK R17 K135 [Enum.ScrollingDirection.X]
  DUPTABLE R18 K214 [{"CornerRadius"}]
  LOADK R19 K252 ["$GlobalRadiusXSmall"]
  SETTABLEKS R19 R18 K213 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K138 [Enum.ScrollBarInset.None]
  DUPTABLE R19 K17 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K18 ["$Transparency100"]
  SETTABLEKS R20 R19 K15 ["BackgroundTransparency"]
  LOADK R20 K19 ["$BorderNone"]
  SETTABLEKS R20 R19 K16 ["BorderSizePixel"]
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K197 [":hover"]
  DUPTABLE R23 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K199 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R24 R23 K21 ["BackgroundColor3"]
  LOADK R24 K200 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R24 R23 K15 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K139 ["> #LeftGradient"]
  DUPTABLE R24 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K202 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R25 R24 K21 ["BackgroundColor3"]
  LOADK R25 K203 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R25 R24 K15 ["BackgroundTransparency"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K140 ["ZIndex"]
  DUPTABLE R20 K397 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
  GETIMPORT R21 K281 [UDim2.fromOffset]
  LOADN R22 82
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K92 ["Size"]
  LOADK R21 K186 ["$FontSize50"]
  SETTABLEKS R21 R20 K31 ["TextSize"]
  LOADK R21 K184 ["$FontWeight600"]
  SETTABLEKS R21 R20 K11 ["Font"]
  LOADB R21 0
  SETTABLEKS R21 R20 K235 ["AutoButtonColor"]
  LOADK R21 K19 ["$BorderNone"]
  SETTABLEKS R21 R20 K16 ["BorderSizePixel"]
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K53 ["::UIPadding"]
  DUPTABLE R24 K366 [{"PaddingLeft", "PaddingRight"}]
  LOADK R25 K75 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K54 ["PaddingLeft"]
  LOADK R25 K75 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K72 ["PaddingRight"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K196 [".State-Default"]
  DUPTABLE R25 K398 [{"BackgroundTransparency", "TextColor3"}]
  LOADK R26 K18 ["$Transparency100"]
  SETTABLEKS R26 R25 K15 ["BackgroundTransparency"]
  LOADK R26 K185 ["$SemanticColorContentMuted"]
  SETTABLEKS R26 R25 K27 ["TextColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K189 [".State-Selected"]
  DUPTABLE R26 K190 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R27 K191 ["$SemanticColorStatesSelected"]
  SETTABLEKS R27 R26 K21 ["BackgroundColor3"]
  LOADK R27 K192 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R27 R26 K15 ["BackgroundTransparency"]
  LOADK R27 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R27 R26 K27 ["TextColor3"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K143 ["> #RightGradient"]
  DUPTABLE R21 K151 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R22 K90 ["$SemanticColorDivider"]
  SETTABLEKS R22 R21 K21 ["BackgroundColor3"]
  LOADK R22 K152 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R22 R21 K15 ["BackgroundTransparency"]
  LOADK R22 K19 ["$BorderNone"]
  SETTABLEKS R22 R21 K16 ["BorderSizePixel"]
  LOADK R22 K156 ["$SmallSeparator"]
  SETTABLEKS R22 R21 K92 ["Size"]
  CALL R19 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K144 ["AnchorPoint"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 4
  MOVE R11 R2
  LOADK R12 K39 ["::UIListLayout"]
  DUPTABLE R13 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R14 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K40 ["FillDirection"]
  LOADK R14 K67 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K41 ["Padding"]
  GETIMPORT R14 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K42 ["SortOrder"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K53 ["::UIPadding"]
  DUPTABLE R14 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R15 K75 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K54 ["PaddingLeft"]
  LOADK R15 K75 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K72 ["PaddingRight"]
  LOADK R15 K67 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K73 ["PaddingTop"]
  LOADK R15 K67 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K71 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K145 ["Position"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K39 ["::UIListLayout"]
  DUPTABLE R19 K43 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K40 ["FillDirection"]
  LOADK R20 K67 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K41 ["Padding"]
  GETIMPORT R20 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K42 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K150 ["> Frame"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K146 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  DUPTABLE R24 K151 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R25 K90 ["$SemanticColorDivider"]
  SETTABLEKS R25 R24 K21 ["BackgroundColor3"]
  LOADK R25 K152 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R25 R24 K15 ["BackgroundTransparency"]
  LOADK R25 K19 ["$BorderNone"]
  SETTABLEKS R25 R24 K16 ["BorderSizePixel"]
  LOADK R25 K156 ["$SmallSeparator"]
  SETTABLEKS R25 R24 K92 ["Size"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K147 ["Vector2"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K106 ["> #Spacer"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K107 ["::UIFlexItem"]
  DUPTABLE R24 K109 [{"FlexMode"}]
  GETIMPORT R25 K112 [Enum.UIFlexMode.Fill]
  SETTABLEKS R25 R24 K108 ["FlexMode"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K148 [Vector2.new]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K39 ["::UIListLayout"]
  DUPTABLE R14 K406 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R15 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K40 ["FillDirection"]
  GETIMPORT R15 K407 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K405 ["HorizontalAlignment"]
  GETIMPORT R15 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K42 ["SortOrder"]
  GETIMPORT R15 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K159 ["VerticalAlignment"]
  LOADK R15 K152 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K41 ["Padding"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K240 ["> TextLabel"]
  DUPTABLE R15 K344 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R16 K18 ["$Transparency100"]
  SETTABLEKS R16 R15 K15 ["BackgroundTransparency"]
  LOADK R16 K13 ["$FontWeight400"]
  SETTABLEKS R16 R15 K11 ["Font"]
  LOADK R16 K153 [".Role-DividerV"]
  SETTABLEKS R16 R15 K31 ["TextSize"]
  LOADN R16 0
  SETTABLEKS R16 R15 K48 ["LayoutOrder"]
  LOADK R16 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R16 R15 K27 ["TextColor3"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R11 K411 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R12 K414 [Color3.fromHex]
  LOADK R13 K159 ["VerticalAlignment"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K21 ["BackgroundColor3"]
  LOADK R12 K7 ["Styling"]
  SETTABLEKS R12 R11 K15 ["BackgroundTransparency"]
  GETIMPORT R12 K281 [UDim2.fromOffset]
  LOADN R13 40
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K92 ["Size"]
  NEWTABLE R12 0 6
  MOVE R13 R2
  LOADK R14 K212 ["::UICorner"]
  DUPTABLE R15 K214 [{"CornerRadius"}]
  LOADK R16 K160 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  SETTABLEKS R16 R15 K213 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K53 ["::UIPadding"]
  DUPTABLE R16 K74 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R17 K104 ["> #TitleFrame"]
  SETTABLEKS R17 R16 K71 ["PaddingBottom"]
  LOADK R17 K104 ["> #TitleFrame"]
  SETTABLEKS R17 R16 K54 ["PaddingLeft"]
  LOADK R17 K104 ["> #TitleFrame"]
  SETTABLEKS R17 R16 K72 ["PaddingRight"]
  LOADK R17 K104 ["> #TitleFrame"]
  SETTABLEKS R17 R16 K73 ["PaddingTop"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K39 ["::UIListLayout"]
  DUPTABLE R17 K417 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R18 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K40 ["FillDirection"]
  GETIMPORT R18 K407 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K405 ["HorizontalAlignment"]
  GETIMPORT R18 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K42 ["SortOrder"]
  GETIMPORT R18 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K159 ["VerticalAlignment"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K150 ["> Frame"]
  DUPTABLE R18 K418 [{"BackgroundColor3", "Size"}]
  LOADK R19 K163 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R19 R18 K21 ["BackgroundColor3"]
  GETIMPORT R19 K281 [UDim2.fromOffset]
  LOADN R20 20
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K92 ["Size"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K212 ["::UICorner"]
  DUPTABLE R22 K214 [{"CornerRadius"}]
  LOADK R23 K160 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  SETTABLEKS R23 R22 K213 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K189 [".State-Selected"]
  DUPTABLE R19 K420 [{"BackgroundColor3"}]
  GETIMPORT R20 K414 [Color3.fromHex]
  LOADK R21 K165 [Enum.VerticalAlignment.Center]
  CALL R20 1 1
  SETTABLEKS R20 R19 K21 ["BackgroundColor3"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K39 ["::UIListLayout"]
  DUPTABLE R23 K422 [{"HorizontalAlignment"}]
  GETIMPORT R24 K424 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R24 R23 K405 ["HorizontalAlignment"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K193 [".State-Disabled"]
  DUPTABLE R20 K262 [{"BackgroundTransparency"}]
  LOADK R21 K169 [{"PaddingRight"}]
  SETTABLEKS R21 R20 K15 ["BackgroundTransparency"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K150 ["> Frame"]
  DUPTABLE R24 K262 [{"BackgroundTransparency"}]
  LOADK R25 K169 [{"PaddingRight"}]
  SETTABLEKS R25 R24 K15 ["BackgroundTransparency"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K170 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R12 K279 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K235 ["AutoButtonColor"]
  LOADK R13 K238 [""]
  SETTABLEKS R13 R12 K236 ["Text"]
  GETIMPORT R13 K281 [UDim2.fromOffset]
  LOADN R14 85
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K92 ["Size"]
  NEWTABLE R13 0 13
  MOVE R14 R2
  LOADK R15 K212 ["::UICorner"]
  DUPTABLE R16 K214 [{"CornerRadius"}]
  LOADK R17 K171 ["Shrink"]
  SETTABLEKS R17 R16 K213 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K172 [Enum.UIFlexMode.Shrink]
  DUPTABLE R17 K93 [{"Size"}]
  GETIMPORT R18 K281 [UDim2.fromOffset]
  LOADN R19 120
  LOADN R20 24
  CALL R18 2 1
  SETTABLEKS R18 R17 K92 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K39 ["::UIListLayout"]
  DUPTABLE R18 K429 [{"HorizontalFlex"}]
  GETIMPORT R19 K430 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R19 R18 K158 ["HorizontalFlex"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K53 ["::UIPadding"]
  DUPTABLE R19 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K175 [{"Transparency"}]
  SETTABLEKS R20 R19 K54 ["PaddingLeft"]
  LOADK R20 K176 ["NumberSequence"]
  SETTABLEKS R20 R19 K72 ["PaddingRight"]
  LOADK R20 K177 [NumberSequence.new]
  SETTABLEKS R20 R19 K73 ["PaddingTop"]
  LOADK R20 K178 ["NumberSequenceKeypoint"]
  SETTABLEKS R20 R19 K71 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K179 [NumberSequenceKeypoint.new]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K39 ["::UIListLayout"]
  DUPTABLE R24 K436 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
  GETIMPORT R25 K430 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R25 R24 K158 ["HorizontalFlex"]
  GETIMPORT R25 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K40 ["FillDirection"]
  GETIMPORT R25 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K42 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K133 [Enum.AutomaticSize.XY]
  DUPTABLE R21 K93 [{"Size"}]
  LOADK R22 K250 ["$IconSmall"]
  SETTABLEKS R22 R21 K92 ["Size"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K107 ["::UIFlexItem"]
  DUPTABLE R25 K438 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R26 K221 [Enum.UIFlexMode.Custom]
  SETTABLEKS R26 R25 K108 ["FlexMode"]
  LOADN R26 0
  SETTABLEKS R26 R25 K437 ["ShrinkRation"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  DUPTABLE R22 K284 [{"LayoutOrder"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K48 ["LayoutOrder"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K29 ["$SemanticColorContentStandard"]
  DUPTABLE R26 K284 [{"LayoutOrder"}]
  LOADN R27 3
  SETTABLEKS R27 R26 K48 ["LayoutOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K184 ["$FontWeight600"]
  DUPTABLE R23 K441 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R24 K19 ["$BorderNone"]
  SETTABLEKS R24 R23 K16 ["BorderSizePixel"]
  LOADK R24 K18 ["$Transparency100"]
  SETTABLEKS R24 R23 K15 ["BackgroundTransparency"]
  LOADK R24 K186 ["$FontSize50"]
  SETTABLEKS R24 R23 K320 ["Image"]
  LOADN R24 4
  SETTABLEKS R24 R23 K48 ["LayoutOrder"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K187 ["SplitWord"]
  DUPTABLE R27 K321 [{"Image"}]
  LOADK R28 K188 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R28 R27 K320 ["Image"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K189 [".State-Selected"]
  DUPTABLE R24 K446 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R25 K13 ["$FontWeight400"]
  SETTABLEKS R25 R24 K11 ["Font"]
  LOADK R25 K186 ["$FontSize50"]
  SETTABLEKS R25 R24 K31 ["TextSize"]
  LOADK R25 K29 ["$SemanticColorContentStandard"]
  SETTABLEKS R25 R24 K27 ["TextColor3"]
  GETIMPORT R25 K244 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R25 R24 K182 ["TextTruncate"]
  GETIMPORT R25 K118 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K115 ["TextXAlignment"]
  LOADN R25 2
  SETTABLEKS R25 R24 K48 ["LayoutOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K196 [".State-Default"]
  DUPTABLE R25 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K111 ["Fill"]
  SETTABLEKS R26 R25 K21 ["BackgroundColor3"]
  LOADK R26 K112 [Enum.UIFlexMode.Fill]
  SETTABLEKS R26 R25 K15 ["BackgroundTransparency"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  DUPTABLE R29 K256 [{"ImageTransparency"}]
  LOADK R30 K191 ["$SemanticColorStatesSelected"]
  SETTABLEKS R30 R29 K255 ["ImageTransparency"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K192 ["$SemanticColorStatesSelectedTransparency"]
  DUPTABLE R26 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K117 ["Left"]
  SETTABLEKS R27 R26 K21 ["BackgroundColor3"]
  LOADK R27 K118 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K15 ["BackgroundTransparency"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  DUPTABLE R30 K256 [{"ImageTransparency"}]
  LOADK R31 K7 ["Styling"]
  SETTABLEKS R31 R30 K255 ["ImageTransparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K113 ["> #Text"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K41 ["Padding"]
  DUPTABLE R31 K370 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R32 K302 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R32 R31 K298 ["ApplyStrokeMode"]
  LOADK R32 K115 ["TextXAlignment"]
  SETTABLEKS R32 R31 K265 ["Color"]
  LOADK R32 K83 ["$BorderMedium"]
  SETTABLEKS R32 R31 K299 ["Thickness"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K183 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  DUPTABLE R32 K256 [{"ImageTransparency"}]
  LOADK R33 K7 ["Styling"]
  SETTABLEKS R33 R32 K255 ["ImageTransparency"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K193 [".State-Disabled"]
  DUPTABLE R28 K198 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K111 ["Fill"]
  SETTABLEKS R29 R28 K21 ["BackgroundColor3"]
  LOADK R29 K112 [Enum.UIFlexMode.Fill]
  SETTABLEKS R29 R28 K15 ["BackgroundTransparency"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K189 [".State-Selected"]
  DUPTABLE R32 K194 [{"TextColor3"}]
  LOADK R33 K195 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K27 ["TextColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K193 [".State-Disabled"]
  DUPTABLE R33 K256 [{"ImageTransparency"}]
  LOADK R34 K1 [script]
  SETTABLEKS R34 R33 K255 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R4 R5 -1 [33]
  MOVE R5 R3
  LOADK R6 K194 [{"TextColor3"}]
  MOVE R7 R4
  DUPTABLE R8 K456 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R9 K96 [UDim2.new]
  LOADN R10 0
  LOADN R11 75
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K451 ["SpinboxDefaultSize"]
  GETIMPORT R9 K96 [UDim2.new]
  LOADN R10 0
  LOADN R11 85
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K452 ["SpinboxWithIconSize"]
  GETIMPORT R9 K96 [UDim2.new]
  LOADN R10 0
  LOADN R11 61
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K453 ["SpinboxShortSize"]
  GETIMPORT R9 K96 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K92 ["Size"]
  GETIMPORT R9 K96 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K454 ["SizeDense"]
  GETIMPORT R9 K96 [UDim2.new]
  LOADN R10 0
  LOADN R11 180
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K455 ["SliderSize"]
  CALL R5 3 -1
  RETURN R5 -1
