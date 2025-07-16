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
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagRibbonDensityModeStyles"]
  CALL R4 1 1
  MOVE R5 R4
  CALL R5 0 1
  JUMPIF R5 [+10]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Resources"]
  GETTABLEKS R6 R7 K14 ["DEPRECATED_PluginStyles"]
  CALL R5 1 -1
  RETURN R5 -1
  NEWTABLE R5 0 42
  MOVE R6 R2
  LOADK R7 K15 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K17 [{"Font"}]
  LOADK R9 K18 ["$FontWeight400"]
  SETTABLEKS R9 R8 K16 ["Font"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K19 [".Role-Surface"]
  DUPTABLE R9 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R10 K23 ["$Transparency100"]
  SETTABLEKS R10 R9 K20 ["BackgroundTransparency"]
  LOADK R10 K24 ["$BorderNone"]
  SETTABLEKS R10 R9 K21 ["BorderSizePixel"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K25 [".Role-Surface100"]
  DUPTABLE R10 K27 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R11 K28 ["$SemanticColorSurface100"]
  SETTABLEKS R11 R10 K26 ["BackgroundColor3"]
  LOADK R11 K24 ["$BorderNone"]
  SETTABLEKS R11 R10 K21 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K29 [".Role-Surface200"]
  DUPTABLE R11 K27 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R12 K30 ["$SemanticColorSurface200"]
  SETTABLEKS R12 R11 K26 ["BackgroundColor3"]
  LOADK R12 K24 ["$BorderNone"]
  SETTABLEKS R12 R11 K21 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K31 [".Role-Text"]
  DUPTABLE R12 K33 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  LOADK R13 K24 ["$BorderNone"]
  SETTABLEKS R13 R12 K21 ["BorderSizePixel"]
  LOADK R13 K23 ["$Transparency100"]
  SETTABLEKS R13 R12 K20 ["BackgroundTransparency"]
  LOADK R13 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R13 R12 K32 ["TextColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K35 [".Text-Label"]
  DUPTABLE R13 K37 [{"Font", "TextSize"}]
  LOADK R14 K38 ["$ContentTextFontWeight"]
  SETTABLEKS R14 R13 K16 ["Font"]
  LOADK R14 K39 ["$ContentTextFontSize"]
  SETTABLEKS R14 R13 K36 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K40 [".Text-Title"]
  DUPTABLE R14 K37 [{"Font", "TextSize"}]
  LOADK R15 K41 ["$TitleTextFontWeight"]
  SETTABLEKS R15 R14 K16 ["Font"]
  LOADK R15 K42 ["$TitleTextFontSize"]
  SETTABLEKS R15 R14 K36 ["TextSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K43 [".RibbonContents"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K44 ["::UIListLayout"]
  DUPTABLE R19 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K45 ["FillDirection"]
  LOADK R20 K52 ["$RibbonContentsPadding"]
  SETTABLEKS R20 R19 K46 ["Padding"]
  GETIMPORT R20 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K47 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K55 ["::UIPadding"]
  DUPTABLE R20 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K61 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  LOADK R21 K61 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K57 ["PaddingRight"]
  LOADK R21 K61 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K58 ["PaddingTop"]
  LOADK R21 K61 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K59 ["PaddingBottom"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K62 [".Role-Row"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K44 ["::UIListLayout"]
  DUPTABLE R20 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K45 ["FillDirection"]
  LOADK R21 K63 ["$RowSpacingDefault"]
  SETTABLEKS R21 R20 K46 ["Padding"]
  GETIMPORT R21 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K47 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K64 [".ConvertibleToColumn"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K44 ["::UIListLayout"]
  DUPTABLE R25 K48 [{"FillDirection", "Padding", "SortOrder"}]
  LOADK R26 K65 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R26 R25 K45 ["FillDirection"]
  LOADK R26 K66 ["$ConvertibleRowToColumnPadding"]
  SETTABLEKS R26 R25 K46 ["Padding"]
  GETIMPORT R26 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K47 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K67 [".Role-Column"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K44 ["::UIListLayout"]
  DUPTABLE R21 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K69 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K45 ["FillDirection"]
  LOADK R22 K70 ["$ColumnSpacingDefault"]
  SETTABLEKS R22 R21 K46 ["Padding"]
  GETIMPORT R22 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K47 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K71 [".SpacingMedium"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K44 ["::UIListLayout"]
  DUPTABLE R26 K72 [{"Padding"}]
  LOADK R27 K73 ["$ColumnSpacingMedium"]
  SETTABLEKS R27 R26 K46 ["Padding"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K74 [".X-RowSpace50"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K44 ["::UIListLayout"]
  DUPTABLE R22 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K45 ["FillDirection"]
  LOADK R23 K61 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K46 ["Padding"]
  GETIMPORT R23 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K47 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K75 [".X-RowSpace100"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K44 ["::UIListLayout"]
  DUPTABLE R23 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K45 ["FillDirection"]
  LOADK R24 K76 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K46 ["Padding"]
  GETIMPORT R24 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K47 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K77 [".X-RowSpace200"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K44 ["::UIListLayout"]
  DUPTABLE R24 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K45 ["FillDirection"]
  LOADK R25 K78 ["$GlobalSpace200"]
  SETTABLEKS R25 R24 K46 ["Padding"]
  GETIMPORT R25 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K47 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K79 [".X-Pad150 ::UIPadding"]
  DUPTABLE R21 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R22 K81 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K59 ["PaddingBottom"]
  LOADK R22 K81 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K56 ["PaddingLeft"]
  LOADK R22 K81 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K57 ["PaddingRight"]
  LOADK R22 K81 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K58 ["PaddingTop"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K82 [".Role-Menu"]
  DUPTABLE R22 K85 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R23 K86 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R23 R22 K26 ["BackgroundColor3"]
  LOADK R23 K87 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R23 R22 K83 ["BorderColor3"]
  GETIMPORT R23 K89 [Enum.BorderMode.Inset]
  SETTABLEKS R23 R22 K84 ["BorderMode"]
  LOADK R23 K90 ["$BorderMedium"]
  SETTABLEKS R23 R22 K21 ["BorderSizePixel"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K55 ["::UIPadding"]
  DUPTABLE R26 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R27 K91 ["$MenuPadding"]
  SETTABLEKS R27 R26 K56 ["PaddingLeft"]
  LOADK R27 K91 ["$MenuPadding"]
  SETTABLEKS R27 R26 K57 ["PaddingRight"]
  LOADK R27 K91 ["$MenuPadding"]
  SETTABLEKS R27 R26 K58 ["PaddingTop"]
  LOADK R27 K91 ["$MenuPadding"]
  SETTABLEKS R27 R26 K59 ["PaddingBottom"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K92 ["> #Menu ::UIListLayout"]
  DUPTABLE R27 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R28 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K45 ["FillDirection"]
  LOADK R28 K93 ["$MenuColumnSpacing"]
  SETTABLEKS R28 R27 K46 ["Padding"]
  GETIMPORT R28 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K47 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K94 [".Role-Tooltip"]
  DUPTABLE R23 K85 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R24 K95 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R24 R23 K26 ["BackgroundColor3"]
  LOADK R24 K96 ["$SemanticColorDivider"]
  SETTABLEKS R24 R23 K83 ["BorderColor3"]
  GETIMPORT R24 K89 [Enum.BorderMode.Inset]
  SETTABLEKS R24 R23 K84 ["BorderMode"]
  LOADK R24 K90 ["$BorderMedium"]
  SETTABLEKS R24 R23 K21 ["BorderSizePixel"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K97 ["> #Wrapper"]
  DUPTABLE R27 K99 [{"Size"}]
  GETIMPORT R28 K102 [UDim2.new]
  LOADN R29 0
  LOADN R30 232
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K98 ["Size"]
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K103 ["::UISizeConstraint"]
  DUPTABLE R31 K105 [{"MaxSize"}]
  LOADK R32 K106 ["$TooltipMaxSize"]
  SETTABLEKS R32 R31 K104 ["MaxSize"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K44 ["::UIListLayout"]
  DUPTABLE R32 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R33 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K45 ["FillDirection"]
  LOADK R33 K107 ["$TooltipContentSpacing"]
  SETTABLEKS R33 R32 K46 ["Padding"]
  GETIMPORT R33 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K47 ["SortOrder"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K108 ["> #Content"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 5
  MOVE R35 R2
  LOADK R36 K44 ["::UIListLayout"]
  DUPTABLE R37 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R38 K69 [Enum.FillDirection.Vertical]
  SETTABLEKS R38 R37 K45 ["FillDirection"]
  LOADK R38 K109 ["$TooltipTextSpacing"]
  SETTABLEKS R38 R37 K46 ["Padding"]
  GETIMPORT R38 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K47 ["SortOrder"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K110 ["> #TitleFrame"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 2
  MOVE R40 R2
  LOADK R41 K44 ["::UIListLayout"]
  DUPTABLE R42 K111 [{"FillDirection", "SortOrder"}]
  GETIMPORT R43 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R43 R42 K45 ["FillDirection"]
  GETIMPORT R43 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R43 R42 K47 ["SortOrder"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K112 ["> #Spacer"]
  NEWTABLE R43 0 0
  NEWTABLE R44 0 1
  MOVE R45 R2
  LOADK R46 K113 ["::UIFlexItem"]
  DUPTABLE R47 K115 [{"FlexMode"}]
  GETIMPORT R48 K118 [Enum.UIFlexMode.Fill]
  SETTABLEKS R48 R47 K114 ["FlexMode"]
  CALL R45 2 -1
  SETLIST R44 R45 -1 [1]
  CALL R41 3 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 1
  MOVE R37 R2
  LOADK R38 K119 ["> #Text"]
  DUPTABLE R39 K122 [{"TextWrapped", "TextXAlignment"}]
  LOADB R40 1
  SETTABLEKS R40 R39 K120 ["TextWrapped"]
  GETIMPORT R40 K124 [Enum.TextXAlignment.Left]
  SETTABLEKS R40 R39 K121 ["TextXAlignment"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K125 [">> TextLabel"]
  DUPTABLE R40 K126 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R41 K18 ["$FontWeight400"]
  SETTABLEKS R41 R40 K16 ["Font"]
  LOADK R41 K127 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R41 R40 K32 ["TextColor3"]
  LOADK R41 K24 ["$BorderNone"]
  SETTABLEKS R41 R40 K21 ["BorderSizePixel"]
  LOADK R41 K23 ["$Transparency100"]
  SETTABLEKS R41 R40 K20 ["BackgroundTransparency"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K128 [">> #Title"]
  DUPTABLE R41 K17 [{"Font"}]
  LOADK R42 K129 ["$FontWeight700"]
  SETTABLEKS R42 R41 K16 ["Font"]
  CALL R39 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K130 [".Role-Scroller"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 3
  MOVE R10 R2
  LOADK R11 K131 ["> #Scroller"]
  DUPTABLE R12 K136 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R13 K139 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K132 ["AutomaticCanvasSize"]
  GETIMPORT R13 K141 [Enum.ScrollingDirection.X]
  SETTABLEKS R13 R12 K133 ["ScrollingDirection"]
  LOADN R13 0
  SETTABLEKS R13 R12 K134 ["ScrollBarThickness"]
  GETIMPORT R13 K144 [Enum.ScrollBarInset.None]
  SETTABLEKS R13 R12 K135 ["HorizontalScrollBarInset"]
  LOADK R13 K145 ["$RibbonScrollerSize"]
  SETTABLEKS R13 R12 K98 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K146 ["> #LeftGradient"]
  DUPTABLE R13 K148 [{"Size", "ZIndex"}]
  LOADK R14 K149 ["$TabGradientSize"]
  SETTABLEKS R14 R13 K98 ["Size"]
  LOADN R14 10
  SETTABLEKS R14 R13 K147 ["ZIndex"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K150 ["> #RightGradient"]
  DUPTABLE R14 K153 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R15 K155 [Vector2.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K151 ["AnchorPoint"]
  LOADK R15 K149 ["$TabGradientSize"]
  SETTABLEKS R15 R14 K98 ["Size"]
  GETIMPORT R15 K102 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K152 ["Position"]
  LOADN R15 10
  SETTABLEKS R15 R14 K147 ["ZIndex"]
  CALL R12 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K156 [".Role-DividerH"]
  DUPTABLE R9 K99 [{"Size"}]
  GETIMPORT R10 K102 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 1
  CALL R10 4 1
  SETTABLEKS R10 R9 K98 ["Size"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K157 ["> Frame"]
  DUPTABLE R13 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R14 K96 ["$SemanticColorDivider"]
  SETTABLEKS R14 R13 K26 ["BackgroundColor3"]
  LOADK R14 K159 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R14 R13 K20 ["BackgroundTransparency"]
  LOADK R14 K24 ["$BorderNone"]
  SETTABLEKS R14 R13 K21 ["BorderSizePixel"]
  GETIMPORT R14 K102 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K98 ["Size"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K160 [".Role-DividerV"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K157 ["> Frame"]
  DUPTABLE R14 K161 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R15 K96 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K26 ["BackgroundColor3"]
  LOADK R15 K159 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K20 ["BackgroundTransparency"]
  LOADK R15 K24 ["$BorderNone"]
  SETTABLEKS R15 R14 K21 ["BorderSizePixel"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K162 [".Small"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K157 ["> Frame"]
  DUPTABLE R19 K99 [{"Size"}]
  LOADK R20 K163 ["$SmallSeparator"]
  SETTABLEKS R20 R19 K98 ["Size"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K164 [".Large"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K157 ["> Frame"]
  DUPTABLE R20 K99 [{"Size"}]
  LOADK R21 K165 ["$LargeSeparator"]
  SETTABLEKS R21 R20 K98 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K55 ["::UIPadding"]
  DUPTABLE R21 K166 [{"PaddingLeft", "PaddingRight"}]
  LOADK R22 K167 ["$LargeSeparatorPadding"]
  SETTABLEKS R22 R21 K56 ["PaddingLeft"]
  LOADK R22 K167 ["$LargeSeparatorPadding"]
  SETTABLEKS R22 R21 K57 ["PaddingRight"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K168 [".Role-Mezzanine"]
  DUPTABLE R11 K99 [{"Size"}]
  GETIMPORT R12 K102 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 36
  CALL R12 4 1
  SETTABLEKS R12 R11 K98 ["Size"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K44 ["::UIListLayout"]
  DUPTABLE R15 K171 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R16 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K45 ["FillDirection"]
  GETIMPORT R16 K174 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R16 R15 K169 ["HorizontalFlex"]
  LOADK R16 K61 ["$GlobalSpace50"]
  SETTABLEKS R16 R15 K46 ["Padding"]
  GETIMPORT R16 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K47 ["SortOrder"]
  GETIMPORT R16 K176 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K170 ["VerticalAlignment"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K177 [">> .LeftMezzControls"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K44 ["::UIListLayout"]
  DUPTABLE R20 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K45 ["FillDirection"]
  LOADK R21 K76 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K46 ["Padding"]
  GETIMPORT R21 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K47 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K55 ["::UIPadding"]
  DUPTABLE R21 K178 [{"PaddingLeft"}]
  LOADK R22 K179 ["$MezzaninePadding"]
  SETTABLEKS R22 R21 K56 ["PaddingLeft"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K180 [">> .RightMezzControls"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K44 ["::UIListLayout"]
  DUPTABLE R21 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K45 ["FillDirection"]
  LOADK R22 K76 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K46 ["Padding"]
  GETIMPORT R22 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K47 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K55 ["::UIPadding"]
  DUPTABLE R22 K181 [{"PaddingRight"}]
  LOADK R23 K179 ["$MezzaninePadding"]
  SETTABLEKS R23 R22 K57 ["PaddingRight"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K182 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R12 K115 [{"FlexMode"}]
  GETIMPORT R13 K184 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R13 R12 K114 ["FlexMode"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K185 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R13 K187 [{"Transparency"}]
  GETIMPORT R14 K189 [NumberSequence.new]
  NEWTABLE R15 0 2
  GETIMPORT R16 K191 [NumberSequenceKeypoint.new]
  LOADN R17 0
  LOADN R18 1
  CALL R16 2 1
  GETIMPORT R17 K191 [NumberSequenceKeypoint.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R14 1 1
  SETTABLEKS R14 R13 K186 ["Transparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K192 [".X-FadeRight ::UIGradient"]
  DUPTABLE R14 K187 [{"Transparency"}]
  GETIMPORT R15 K189 [NumberSequence.new]
  NEWTABLE R16 0 2
  GETIMPORT R17 K191 [NumberSequenceKeypoint.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  GETIMPORT R18 K191 [NumberSequenceKeypoint.new]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R15 1 1
  SETTABLEKS R15 R14 K186 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K193 [".Component-RibbonTab"]
  DUPTABLE R15 K195 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R16 K23 ["$Transparency100"]
  SETTABLEKS R16 R15 K20 ["BackgroundTransparency"]
  LOADK R16 K196 ["$FontWeight600"]
  SETTABLEKS R16 R15 K16 ["Font"]
  LOADK R16 K197 ["$SemanticColorContentMuted"]
  SETTABLEKS R16 R15 K32 ["TextColor3"]
  LOADK R16 K198 ["$FontSize50"]
  SETTABLEKS R16 R15 K36 ["TextSize"]
  GETIMPORT R16 K200 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R16 R15 K194 ["TextTruncate"]
  NEWTABLE R16 0 7
  MOVE R17 R2
  LOADK R18 K201 [".State-Selected"]
  DUPTABLE R19 K202 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R20 K203 ["$SemanticColorStatesSelected"]
  SETTABLEKS R20 R19 K26 ["BackgroundColor3"]
  LOADK R20 K204 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  LOADK R20 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R20 R19 K32 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K205 [".State-Disabled"]
  DUPTABLE R20 K206 [{"TextColor3"}]
  LOADK R21 K207 ["$SemanticColorContentDisabled"]
  SETTABLEKS R21 R20 K32 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K208 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R21 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K210 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R22 R21 K26 ["BackgroundColor3"]
  LOADK R22 K211 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R22 R21 K20 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K212 [".State-Editing"]
  DUPTABLE R22 K214 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  LOADK R23 K203 ["$SemanticColorStatesSelected"]
  SETTABLEKS R23 R22 K26 ["BackgroundColor3"]
  LOADK R23 K204 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  LOADB R23 1
  SETTABLEKS R23 R22 K213 ["ClipsDescendants"]
  LOADK R23 K129 ["$FontWeight700"]
  SETTABLEKS R23 R22 K16 ["Font"]
  LOADK R23 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K32 ["TextColor3"]
  GETIMPORT R23 K215 [Enum.TextTruncate.None]
  SETTABLEKS R23 R22 K194 ["TextTruncate"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K103 ["::UISizeConstraint"]
  DUPTABLE R23 K217 [{"MinSize", "MaxSize"}]
  GETIMPORT R24 K155 [Vector2.new]
  LOADN R25 80
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K216 ["MinSize"]
  GETIMPORT R24 K155 [Vector2.new]
  LOADN R25 80
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K104 ["MaxSize"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K55 ["::UIPadding"]
  DUPTABLE R24 K218 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  LOADK R25 K219 ["$GlobalSpace75"]
  SETTABLEKS R25 R24 K58 ["PaddingTop"]
  LOADK R25 K219 ["$GlobalSpace75"]
  SETTABLEKS R25 R24 K59 ["PaddingBottom"]
  LOADK R25 K76 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K56 ["PaddingLeft"]
  LOADK R25 K76 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K57 ["PaddingRight"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K220 ["::UICorner"]
  DUPTABLE R25 K222 [{"CornerRadius"}]
  LOADK R26 K223 ["$TabCornerRadius"]
  SETTABLEKS R26 R25 K221 ["CornerRadius"]
  CALL R23 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K224 [".Component-RibbonTabs"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 5
  MOVE R18 R2
  LOADK R19 K113 ["::UIFlexItem"]
  DUPTABLE R20 K227 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R21 K229 [Enum.UIFlexMode.Custom]
  SETTABLEKS R21 R20 K114 ["FlexMode"]
  LOADK R21 K230 [10000000000]
  SETTABLEKS R21 R20 K225 ["GrowRatio"]
  LOADK R21 K231 [1E-10]
  SETTABLEKS R21 R20 K226 ["ShrinkRatio"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K44 ["::UIListLayout"]
  DUPTABLE R21 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K45 ["FillDirection"]
  LOADK R22 K232 ["$RibbonTabsContainerSpacing"]
  SETTABLEKS R22 R21 K46 ["Padding"]
  GETIMPORT R22 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K47 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K233 ["> #CollapsibleScroller"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 3
  MOVE R24 R2
  LOADK R25 K131 ["> #Scroller"]
  DUPTABLE R26 K136 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R27 K139 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K132 ["AutomaticCanvasSize"]
  GETIMPORT R27 K141 [Enum.ScrollingDirection.X]
  SETTABLEKS R27 R26 K133 ["ScrollingDirection"]
  LOADN R27 0
  SETTABLEKS R27 R26 K134 ["ScrollBarThickness"]
  GETIMPORT R27 K144 [Enum.ScrollBarInset.None]
  SETTABLEKS R27 R26 K135 ["HorizontalScrollBarInset"]
  GETIMPORT R27 K235 [UDim2.fromScale]
  LOADN R28 1
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K98 ["Size"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K97 ["> #Wrapper"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K44 ["::UIListLayout"]
  DUPTABLE R34 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R35 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K45 ["FillDirection"]
  LOADK R35 K236 ["$RibbonTabsSpacing"]
  SETTABLEKS R35 R34 K46 ["Padding"]
  GETIMPORT R35 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K47 ["SortOrder"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K146 ["> #LeftGradient"]
  DUPTABLE R27 K148 [{"Size", "ZIndex"}]
  LOADK R28 K149 ["$TabGradientSize"]
  SETTABLEKS R28 R27 K98 ["Size"]
  LOADN R28 10
  SETTABLEKS R28 R27 K147 ["ZIndex"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K150 ["> #RightGradient"]
  DUPTABLE R28 K153 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R29 K155 [Vector2.new]
  LOADN R30 1
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K151 ["AnchorPoint"]
  LOADK R29 K149 ["$TabGradientSize"]
  SETTABLEKS R29 R28 K98 ["Size"]
  GETIMPORT R29 K102 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K152 ["Position"]
  LOADN R29 10
  SETTABLEKS R29 R28 K147 ["ZIndex"]
  CALL R26 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K237 ["> #More"]
  DUPTABLE R23 K239 [{"Visible"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K238 ["Visible"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K240 [".Compact > #More"]
  DUPTABLE R24 K239 [{"Visible"}]
  LOADB R25 1
  SETTABLEKS R25 R24 K238 ["Visible"]
  CALL R22 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K241 [".Role-More"]
  DUPTABLE R17 K99 [{"Size"}]
  LOADK R18 K145 ["$RibbonScrollerSize"]
  SETTABLEKS R18 R17 K98 ["Size"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K242 ["> .Ribbon-More"]
  DUPTABLE R21 K243 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R22 K155 [Vector2.new]
  LOADN R23 1
  LOADK R24 K244 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K151 ["AnchorPoint"]
  GETIMPORT R22 K102 [UDim2.new]
  LOADN R23 1
  LOADN R24 248
  LOADK R25 K244 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K152 ["Position"]
  LOADN R22 3
  SETTABLEKS R22 R21 K147 ["ZIndex"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K245 [".Component-RibbonButton"]
  DUPTABLE R18 K248 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K246 ["AutoButtonColor"]
  LOADK R19 K23 ["$Transparency100"]
  SETTABLEKS R19 R18 K20 ["BackgroundTransparency"]
  LOADK R19 K24 ["$BorderNone"]
  SETTABLEKS R19 R18 K21 ["BorderSizePixel"]
  LOADK R19 K249 [""]
  SETTABLEKS R19 R18 K247 ["Text"]
  NEWTABLE R19 0 11
  MOVE R20 R2
  LOADK R21 K162 [".Small"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K103 ["::UISizeConstraint"]
  DUPTABLE R26 K105 [{"MaxSize"}]
  LOADK R27 K250 ["$RibbonButtonSmallMaxSize"]
  SETTABLEKS R27 R26 K104 ["MaxSize"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K164 [".Large"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K103 ["::UISizeConstraint"]
  DUPTABLE R27 K105 [{"MaxSize"}]
  LOADK R28 K251 ["$RibbonButtonLargeMaxSize"]
  SETTABLEKS R28 R27 K104 ["MaxSize"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K252 ["> TextLabel"]
  DUPTABLE R24 K253 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R25 K23 ["$Transparency100"]
  SETTABLEKS R25 R24 K20 ["BackgroundTransparency"]
  LOADK R25 K18 ["$FontWeight400"]
  SETTABLEKS R25 R24 K16 ["Font"]
  LOADN R25 2
  SETTABLEKS R25 R24 K53 ["LayoutOrder"]
  LOADK R25 K197 ["$SemanticColorContentMuted"]
  SETTABLEKS R25 R24 K32 ["TextColor3"]
  LOADK R25 K254 ["$FontSize25"]
  SETTABLEKS R25 R24 K36 ["TextSize"]
  GETIMPORT R25 K256 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R25 R24 K194 ["TextTruncate"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K1 [script]
  DUPTABLE R25 K258 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R26 K23 ["$Transparency100"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  LOADK R26 K24 ["$BorderNone"]
  SETTABLEKS R26 R25 K21 ["BorderSizePixel"]
  LOADN R26 0
  SETTABLEKS R26 R25 K53 ["LayoutOrder"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K3 ["require"]
  DUPTABLE R29 K99 [{"Size"}]
  LOADK R30 K4 [require]
  SETTABLEKS R30 R29 K98 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K5 ["Packages"]
  DUPTABLE R30 K99 [{"Size"}]
  LOADK R31 K6 ["Framework"]
  SETTABLEKS R31 R30 K98 ["Size"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K7 ["Styling"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K220 ["::UICorner"]
  DUPTABLE R30 K222 [{"CornerRadius"}]
  LOADK R31 K8 ["createStyleRule"]
  SETTABLEKS R31 R30 K221 ["CornerRadius"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K55 ["::UIPadding"]
  DUPTABLE R31 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R32 K61 ["$GlobalSpace50"]
  SETTABLEKS R32 R31 K56 ["PaddingLeft"]
  LOADK R32 K61 ["$GlobalSpace50"]
  SETTABLEKS R32 R31 K57 ["PaddingRight"]
  LOADK R32 K61 ["$GlobalSpace50"]
  SETTABLEKS R32 R31 K58 ["PaddingTop"]
  LOADK R32 K61 ["$GlobalSpace50"]
  SETTABLEKS R32 R31 K59 ["PaddingBottom"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K9 ["createStyleSheet"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K220 ["::UICorner"]
  DUPTABLE R31 K222 [{"CornerRadius"}]
  LOADK R32 K8 ["createStyleRule"]
  SETTABLEKS R32 R31 K221 ["CornerRadius"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K7 ["Styling"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K55 ["::UIPadding"]
  DUPTABLE R36 K178 [{"PaddingLeft"}]
  LOADK R37 K10 ["Src"]
  SETTABLEKS R37 R36 K56 ["PaddingLeft"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K220 ["::UICorner"]
  DUPTABLE R37 K222 [{"CornerRadius"}]
  LOADK R38 K8 ["createStyleRule"]
  SETTABLEKS R38 R37 K221 ["CornerRadius"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K205 [".State-Disabled"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K11 ["SharedFlags"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K12 ["getFFlagRibbonDensityModeStyles"]
  DUPTABLE R36 K270 [{"ImageTransparency"}]
  LOADK R37 K15 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R37 R36 K269 ["ImageTransparency"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K16 ["Font"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K17 [{"Font"}]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K18 ["$FontWeight400"]
  DUPTABLE R37 K275 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R38 K211 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R38 R37 K20 ["BackgroundTransparency"]
  LOADK R38 K210 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R38 R37 K26 ["BackgroundColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K20 ["BackgroundTransparency"]
  DUPTABLE R38 K275 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R39 K21 ["BorderSizePixel"]
  SETTABLEKS R39 R38 K20 ["BackgroundTransparency"]
  LOADK R39 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R39 R38 K26 ["BackgroundColor3"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K201 [".State-Selected"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K11 ["SharedFlags"]
  DUPTABLE R34 K275 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K204 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R35 R34 K20 ["BackgroundTransparency"]
  LOADK R35 K203 ["$SemanticColorStatesSelected"]
  SETTABLEKS R35 R34 K26 ["BackgroundColor3"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K23 ["$Transparency100"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K24 ["$BorderNone"]
  DUPTABLE R35 K281 [{"BackgroundTransparency"}]
  LOADK R36 K26 ["BackgroundColor3"]
  SETTABLEKS R36 R35 K20 ["BackgroundTransparency"]
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K27 [{"BackgroundColor3", "BorderSizePixel"}]
  DUPTABLE R39 K286 [{"Color", "Rotation", "Transparency"}]
  LOADK R40 K31 [".Role-Text"]
  SETTABLEKS R40 R39 K284 ["Color"]
  LOADK R40 K32 ["TextColor3"]
  SETTABLEKS R40 R39 K285 ["Rotation"]
  LOADK R40 K33 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R40 R39 K186 ["Transparency"]
  CALL R37 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K34 ["$SemanticColorContentStandard"]
  DUPTABLE R36 K281 [{"BackgroundTransparency"}]
  LOADK R37 K26 ["BackgroundColor3"]
  SETTABLEKS R37 R36 K20 ["BackgroundTransparency"]
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K27 [{"BackgroundColor3", "BorderSizePixel"}]
  DUPTABLE R40 K286 [{"Color", "Rotation", "Transparency"}]
  LOADK R41 K35 [".Text-Label"]
  SETTABLEKS R41 R40 K284 ["Color"]
  LOADK R41 K36 ["TextSize"]
  SETTABLEKS R41 R40 K285 ["Rotation"]
  LOADK R41 K37 [{"Font", "TextSize"}]
  SETTABLEKS R41 R40 K186 ["Transparency"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K38 ["$ContentTextFontWeight"]
  DUPTABLE R32 K295 [{"LayoutOrder", "Size"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K53 ["LayoutOrder"]
  GETIMPORT R33 K102 [UDim2.new]
  LOADN R34 0
  LOADN R35 4
  LOADN R36 0
  LOADN R37 32
  CALL R33 4 1
  SETTABLEKS R33 R32 K98 ["Size"]
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K162 [".Small"]
  DUPTABLE R36 K99 [{"Size"}]
  GETIMPORT R37 K102 [UDim2.new]
  LOADN R38 0
  LOADN R39 4
  LOADN R40 0
  LOADN R41 24
  CALL R37 4 1
  SETTABLEKS R37 R36 K98 ["Size"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K40 [".Text-Title"]
  DUPTABLE R37 K297 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R38 K155 [Vector2.new]
  LOADN R39 1
  LOADN R40 1
  CALL R38 2 1
  SETTABLEKS R38 R37 K151 ["AnchorPoint"]
  LOADB R38 0
  SETTABLEKS R38 R37 K246 ["AutoButtonColor"]
  GETIMPORT R38 K235 [UDim2.fromScale]
  LOADN R39 1
  LOADN R40 1
  CALL R38 2 1
  SETTABLEKS R38 R37 K152 ["Position"]
  LOADK R38 K249 [""]
  SETTABLEKS R38 R37 K247 ["Text"]
  LOADN R38 1
  SETTABLEKS R38 R37 K36 ["TextSize"]
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K42 ["$TitleTextFontSize"]
  DUPTABLE R41 K300 [{"Image", "Size"}]
  LOADK R42 K45 ["FillDirection"]
  SETTABLEKS R42 R41 K299 ["Image"]
  GETIMPORT R42 K303 [UDim2.fromOffset]
  LOADN R43 4
  LOADN R44 4
  CALL R42 2 1
  SETTABLEKS R42 R41 K98 ["Size"]
  NEWTABLE R42 0 1
  MOVE R43 R2
  LOADK R44 K205 [".State-Disabled"]
  DUPTABLE R45 K270 [{"ImageTransparency"}]
  LOADK R46 K15 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R46 R45 K269 ["ImageTransparency"]
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K48 [{"FillDirection", "Padding", "SortOrder"}]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K44 ["::UIListLayout"]
  DUPTABLE R23 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K45 ["FillDirection"]
  LOADK R24 K76 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K46 ["Padding"]
  GETIMPORT R24 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K47 ["SortOrder"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K49 ["Enum"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K50 ["Horizontal"]
  DUPTABLE R28 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R29 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K45 ["FillDirection"]
  LOADK R29 K61 ["$GlobalSpace50"]
  SETTABLEKS R29 R28 K46 ["Padding"]
  GETIMPORT R29 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K47 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K51 [Enum.FillDirection.Horizontal]
  DUPTABLE R20 K308 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K246 ["AutoButtonColor"]
  LOADK R21 K249 [""]
  SETTABLEKS R21 R20 K247 ["Text"]
  GETIMPORT R21 K303 [UDim2.fromOffset]
  LOADN R22 0
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K98 ["Size"]
  NEWTABLE R21 0 6
  MOVE R22 R2
  LOADK R23 K220 ["::UICorner"]
  DUPTABLE R24 K222 [{"CornerRadius"}]
  LOADK R25 K8 ["createStyleRule"]
  SETTABLEKS R25 R24 K221 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K53 ["LayoutOrder"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K54 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R29 K311 [{"LayoutOrder"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K53 ["LayoutOrder"]
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K3 ["require"]
  DUPTABLE R33 K99 [{"Size"}]
  LOADK R34 K4 [require]
  SETTABLEKS R34 R33 K98 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K5 ["Packages"]
  DUPTABLE R34 K99 [{"Size"}]
  LOADK R35 K6 ["Framework"]
  SETTABLEKS R35 R34 K98 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K56 ["PaddingLeft"]
  DUPTABLE R35 K311 [{"LayoutOrder"}]
  LOADN R36 3
  SETTABLEKS R36 R35 K53 ["LayoutOrder"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K57 ["PaddingRight"]
  DUPTABLE R30 K314 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R31 K129 ["$FontWeight700"]
  SETTABLEKS R31 R30 K16 ["Font"]
  LOADK R31 K59 ["PaddingBottom"]
  SETTABLEKS R31 R30 K36 ["TextSize"]
  LOADN R31 2
  SETTABLEKS R31 R30 K53 ["LayoutOrder"]
  LOADK R31 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K32 ["TextColor3"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K162 [".Small"]
  DUPTABLE R34 K316 [{"TextSize"}]
  LOADK R35 K198 ["$FontSize50"]
  SETTABLEKS R35 R34 K36 ["TextSize"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K164 [".Large"]
  DUPTABLE R35 K316 [{"TextSize"}]
  LOADK R36 K61 ["$GlobalSpace50"]
  SETTABLEKS R36 R35 K36 ["TextSize"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K205 [".State-Disabled"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K62 [".Role-Row"]
  DUPTABLE R30 K270 [{"ImageTransparency"}]
  LOADK R31 K15 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R31 R30 K269 ["ImageTransparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K63 ["$RowSpacingDefault"]
  DUPTABLE R31 K206 [{"TextColor3"}]
  LOADK R32 K207 ["$SemanticColorContentDisabled"]
  SETTABLEKS R32 R31 K32 ["TextColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K16 ["Font"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K64 [".ConvertibleToColumn"]
  DUPTABLE R31 K275 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R32 K211 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R32 R31 K20 ["BackgroundTransparency"]
  LOADK R32 K210 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R32 R31 K26 ["BackgroundColor3"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K65 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R32 K275 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R33 K21 ["BorderSizePixel"]
  SETTABLEKS R33 R32 K20 ["BackgroundTransparency"]
  LOADK R33 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R33 R32 K26 ["BackgroundColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K66 ["$ConvertibleRowToColumnPadding"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K67 [".Role-Column"]
  DUPTABLE R32 K326 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R33 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R33 R32 K324 ["ApplyStrokeMode"]
  LOADK R33 K96 ["$SemanticColorDivider"]
  SETTABLEKS R33 R32 K284 ["Color"]
  LOADK R33 K90 ["$BorderMedium"]
  SETTABLEKS R33 R32 K325 ["Thickness"]
  LOADK R33 K159 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R33 R32 K186 ["Transparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K73 ["$ColumnSpacingMedium"]
  DUPTABLE R29 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K74 [".X-RowSpace50"]
  SETTABLEKS R30 R29 K26 ["BackgroundColor3"]
  LOADK R30 K26 ["BackgroundColor3"]
  SETTABLEKS R30 R29 K20 ["BackgroundTransparency"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K16 ["Font"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K64 [".ConvertibleToColumn"]
  DUPTABLE R37 K275 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R38 K75 [".X-RowSpace100"]
  SETTABLEKS R38 R37 K20 ["BackgroundTransparency"]
  LOADK R38 K76 ["$GlobalSpace100"]
  SETTABLEKS R38 R37 K26 ["BackgroundColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K65 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R38 K275 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R39 K77 [".X-RowSpace200"]
  SETTABLEKS R39 R38 K20 ["BackgroundTransparency"]
  LOADK R39 K78 ["$GlobalSpace200"]
  SETTABLEKS R39 R38 K26 ["BackgroundColor3"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K63 ["$RowSpacingDefault"]
  DUPTABLE R34 K206 [{"TextColor3"}]
  LOADK R35 K127 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R35 R34 K32 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K79 [".X-Pad150 ::UIPadding"]
  DUPTABLE R21 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R22 K23 ["$Transparency100"]
  SETTABLEKS R22 R21 K20 ["BackgroundTransparency"]
  LOADK R22 K24 ["$BorderNone"]
  SETTABLEKS R22 R21 K21 ["BorderSizePixel"]
  NEWTABLE R22 0 7
  MOVE R23 R2
  LOADK R24 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  DUPTABLE R25 K337 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R26 0
  SETTABLEKS R26 R25 K246 ["AutoButtonColor"]
  LOADK R26 K23 ["$Transparency100"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  LOADK R26 K24 ["$BorderNone"]
  SETTABLEKS R26 R25 K21 ["BorderSizePixel"]
  LOADN R26 1
  SETTABLEKS R26 R25 K53 ["LayoutOrder"]
  LOADK R26 K249 [""]
  SETTABLEKS R26 R25 K247 ["Text"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K82 [".Role-Menu"]
  DUPTABLE R29 K339 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R30 K23 ["$Transparency100"]
  SETTABLEKS R30 R29 K20 ["BackgroundTransparency"]
  LOADK R30 K24 ["$BorderNone"]
  SETTABLEKS R30 R29 K21 ["BorderSizePixel"]
  LOADK R30 K18 ["$FontWeight400"]
  SETTABLEKS R30 R29 K16 ["Font"]
  LOADN R30 2
  SETTABLEKS R30 R29 K53 ["LayoutOrder"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K84 ["BorderMode"]
  DUPTABLE R30 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R31 K23 ["$Transparency100"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  LOADK R31 K24 ["$BorderNone"]
  SETTABLEKS R31 R30 K21 ["BorderSizePixel"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K85 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K44 ["::UIListLayout"]
  DUPTABLE R34 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R35 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K45 ["FillDirection"]
  LOADK R35 K76 ["$GlobalSpace100"]
  SETTABLEKS R35 R34 K46 ["Padding"]
  GETIMPORT R35 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K47 ["SortOrder"]
  GETIMPORT R35 K176 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K170 ["VerticalAlignment"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K84 ["BorderMode"]
  DUPTABLE R35 K99 [{"Size"}]
  LOADK R36 K6 ["Framework"]
  SETTABLEKS R36 R35 K98 ["Size"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K162 [".Small"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K82 [".Role-Menu"]
  DUPTABLE R35 K316 [{"TextSize"}]
  LOADK R36 K198 ["$FontSize50"]
  SETTABLEKS R36 R35 K36 ["TextSize"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K87 ["$SemanticColorDividerTransparency88"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K82 [".Role-Menu"]
  DUPTABLE R36 K316 [{"TextSize"}]
  LOADK R37 K59 ["PaddingBottom"]
  SETTABLEKS R37 R36 K36 ["TextSize"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K164 [".Large"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 3
  MOVE R35 R2
  LOADK R36 K44 ["::UIListLayout"]
  DUPTABLE R37 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R38 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K45 ["FillDirection"]
  LOADK R38 K81 ["$GlobalSpace150"]
  SETTABLEKS R38 R37 K46 ["Padding"]
  GETIMPORT R38 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K47 ["SortOrder"]
  GETIMPORT R38 K176 [Enum.VerticalAlignment.Center]
  SETTABLEKS R38 R37 K170 ["VerticalAlignment"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K84 ["BorderMode"]
  DUPTABLE R38 K99 [{"Size"}]
  LOADK R39 K4 [require]
  SETTABLEKS R39 R38 K98 ["Size"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K82 [".Role-Menu"]
  DUPTABLE R39 K316 [{"TextSize"}]
  LOADK R40 K61 ["$GlobalSpace50"]
  SETTABLEKS R40 R39 K36 ["TextSize"]
  CALL R37 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K16 ["Font"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 4
  MOVE R32 R2
  LOADK R33 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 2
  MOVE R36 R2
  LOADK R37 K88 ["Inset"]
  DUPTABLE R38 K345 [{"Image"}]
  LOADK R39 K90 ["$BorderMedium"]
  SETTABLEKS R39 R38 K299 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K91 ["$MenuPadding"]
  DUPTABLE R39 K206 [{"TextColor3"}]
  LOADK R40 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R40 R39 K32 ["TextColor3"]
  CALL R37 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K92 ["> #Menu ::UIListLayout"]
  DUPTABLE R35 K345 [{"Image"}]
  LOADK R36 K93 ["$MenuColumnSpacing"]
  SETTABLEKS R36 R35 K299 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K94 [".Role-Tooltip"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R40 0 0
  NEWTABLE R41 0 1
  MOVE R42 R2
  LOADK R43 K84 ["BorderMode"]
  DUPTABLE R44 K345 [{"Image"}]
  LOADK R45 K95 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R45 R44 K299 ["Image"]
  CALL R42 2 -1
  SETLIST R41 R42 -1 [1]
  CALL R38 3 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K96 ["$SemanticColorDivider"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R41 0 0
  NEWTABLE R42 0 1
  MOVE R43 R2
  LOADK R44 K84 ["BorderMode"]
  DUPTABLE R45 K345 [{"Image"}]
  LOADK R46 K97 ["> #Wrapper"]
  SETTABLEKS R46 R45 K299 ["Image"]
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K205 [".State-Disabled"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K84 ["BorderMode"]
  DUPTABLE R39 K345 [{"Image"}]
  LOADK R40 K98 ["Size"]
  SETTABLEKS R40 R39 K299 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K82 [".Role-Menu"]
  DUPTABLE R40 K206 [{"TextColor3"}]
  LOADK R41 K207 ["$SemanticColorContentDisabled"]
  SETTABLEKS R41 R40 K32 ["TextColor3"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K94 [".Role-Tooltip"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R40 0 0
  NEWTABLE R41 0 1
  MOVE R42 R2
  LOADK R43 K84 ["BorderMode"]
  DUPTABLE R44 K345 [{"Image"}]
  LOADK R45 K99 [{"Size"}]
  SETTABLEKS R45 R44 K299 ["Image"]
  CALL R42 2 -1
  SETLIST R41 R42 -1 [1]
  CALL R38 3 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K96 ["$SemanticColorDivider"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R41 0 0
  NEWTABLE R42 0 1
  MOVE R43 R2
  LOADK R44 K84 ["BorderMode"]
  DUPTABLE R45 K345 [{"Image"}]
  LOADK R46 K100 ["UDim2"]
  SETTABLEKS R46 R45 K299 ["Image"]
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K101 ["new"]
  DUPTABLE R22 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R23 K23 ["$Transparency100"]
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  LOADK R23 K24 ["$BorderNone"]
  SETTABLEKS R23 R22 K21 ["BorderSizePixel"]
  NEWTABLE R23 0 9
  MOVE R24 R2
  LOADK R25 K102 [UDim2.new]
  DUPTABLE R26 K337 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R27 0
  SETTABLEKS R27 R26 K246 ["AutoButtonColor"]
  LOADK R27 K23 ["$Transparency100"]
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  LOADK R27 K24 ["$BorderNone"]
  SETTABLEKS R27 R26 K21 ["BorderSizePixel"]
  LOADN R27 1
  SETTABLEKS R27 R26 K53 ["LayoutOrder"]
  LOADK R27 K249 [""]
  SETTABLEKS R27 R26 K247 ["Text"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K103 ["::UISizeConstraint"]
  DUPTABLE R27 K339 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R28 K23 ["$Transparency100"]
  SETTABLEKS R28 R27 K20 ["BackgroundTransparency"]
  LOADK R28 K24 ["$BorderNone"]
  SETTABLEKS R28 R27 K21 ["BorderSizePixel"]
  LOADK R28 K18 ["$FontWeight400"]
  SETTABLEKS R28 R27 K16 ["Font"]
  LOADN R28 2
  SETTABLEKS R28 R27 K53 ["LayoutOrder"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K104 ["MaxSize"]
  DUPTABLE R28 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R29 K23 ["$Transparency100"]
  SETTABLEKS R29 R28 K20 ["BackgroundTransparency"]
  LOADK R29 K24 ["$BorderNone"]
  SETTABLEKS R29 R28 K21 ["BorderSizePixel"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K85 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K102 [UDim2.new]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K44 ["::UIListLayout"]
  DUPTABLE R37 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R38 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K45 ["FillDirection"]
  LOADK R38 K76 ["$GlobalSpace100"]
  SETTABLEKS R38 R37 K46 ["Padding"]
  GETIMPORT R38 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K47 ["SortOrder"]
  GETIMPORT R38 K176 [Enum.VerticalAlignment.Center]
  SETTABLEKS R38 R37 K170 ["VerticalAlignment"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K104 ["MaxSize"]
  DUPTABLE R34 K99 [{"Size"}]
  LOADK R35 K6 ["Framework"]
  SETTABLEKS R35 R34 K98 ["Size"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K162 [".Small"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K103 ["::UISizeConstraint"]
  DUPTABLE R34 K316 [{"TextSize"}]
  LOADK R35 K198 ["$FontSize50"]
  SETTABLEKS R35 R34 K36 ["TextSize"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K87 ["$SemanticColorDividerTransparency88"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K103 ["::UISizeConstraint"]
  DUPTABLE R35 K316 [{"TextSize"}]
  LOADK R36 K59 ["PaddingBottom"]
  SETTABLEKS R36 R35 K36 ["TextSize"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K164 [".Large"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K102 [UDim2.new]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K44 ["::UIListLayout"]
  DUPTABLE R40 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R41 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R41 R40 K45 ["FillDirection"]
  LOADK R41 K81 ["$GlobalSpace150"]
  SETTABLEKS R41 R40 K46 ["Padding"]
  GETIMPORT R41 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R41 R40 K47 ["SortOrder"]
  GETIMPORT R41 K176 [Enum.VerticalAlignment.Center]
  SETTABLEKS R41 R40 K170 ["VerticalAlignment"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K104 ["MaxSize"]
  DUPTABLE R37 K99 [{"Size"}]
  LOADK R38 K4 [require]
  SETTABLEKS R38 R37 K98 ["Size"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K103 ["::UISizeConstraint"]
  DUPTABLE R38 K316 [{"TextSize"}]
  LOADK R39 K61 ["$GlobalSpace50"]
  SETTABLEKS R39 R38 K36 ["TextSize"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K16 ["Font"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 4
  MOVE R35 R2
  LOADK R36 K104 ["MaxSize"]
  DUPTABLE R37 K345 [{"Image"}]
  LOADK R38 K105 [{"MaxSize"}]
  SETTABLEKS R38 R37 K299 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K106 ["$TooltipMaxSize"]
  DUPTABLE R38 K345 [{"Image"}]
  LOADK R39 K107 ["$TooltipContentSpacing"]
  SETTABLEKS R39 R38 K299 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K108 ["> #Content"]
  DUPTABLE R39 K345 [{"Image"}]
  LOADK R40 K109 ["$TooltipTextSpacing"]
  SETTABLEKS R40 R39 K299 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K103 ["::UISizeConstraint"]
  DUPTABLE R40 K206 [{"TextColor3"}]
  LOADK R41 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R41 R40 K32 ["TextColor3"]
  CALL R38 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K205 [".State-Disabled"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 3
  MOVE R36 R2
  LOADK R37 K104 ["MaxSize"]
  DUPTABLE R38 K345 [{"Image"}]
  LOADK R39 K110 ["> #TitleFrame"]
  SETTABLEKS R39 R38 K299 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K108 ["> #Content"]
  DUPTABLE R39 K345 [{"Image"}]
  LOADK R40 K111 [{"FillDirection", "SortOrder"}]
  SETTABLEKS R40 R39 K299 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K103 ["::UISizeConstraint"]
  DUPTABLE R40 K206 [{"TextColor3"}]
  LOADK R41 K207 ["$SemanticColorContentDisabled"]
  SETTABLEKS R41 R40 K32 ["TextColor3"]
  CALL R38 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K112 ["> #Spacer"]
  DUPTABLE R23 K369 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K246 ["AutoButtonColor"]
  LOADK R24 K24 ["$BorderNone"]
  SETTABLEKS R24 R23 K21 ["BorderSizePixel"]
  LOADK R24 K23 ["$Transparency100"]
  SETTABLEKS R24 R23 K20 ["BackgroundTransparency"]
  LOADK R24 K249 [""]
  SETTABLEKS R24 R23 K247 ["Text"]
  NEWTABLE R24 0 8
  MOVE R25 R2
  LOADK R26 K55 ["::UIPadding"]
  DUPTABLE R27 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R28 K114 ["FlexMode"]
  SETTABLEKS R28 R27 K56 ["PaddingLeft"]
  LOADK R28 K114 ["FlexMode"]
  SETTABLEKS R28 R27 K57 ["PaddingRight"]
  LOADK R28 K115 [{"FlexMode"}]
  SETTABLEKS R28 R27 K58 ["PaddingTop"]
  LOADK R28 K115 [{"FlexMode"}]
  SETTABLEKS R28 R27 K59 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K220 ["::UICorner"]
  DUPTABLE R28 K222 [{"CornerRadius"}]
  LOADK R29 K8 ["createStyleRule"]
  SETTABLEKS R29 R28 K221 ["CornerRadius"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K116 ["UIFlexMode"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 4
  MOVE R31 R2
  LOADK R32 K44 ["::UIListLayout"]
  DUPTABLE R33 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R34 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K45 ["FillDirection"]
  LOADK R34 K117 ["Fill"]
  SETTABLEKS R34 R33 K46 ["Padding"]
  GETIMPORT R34 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K47 ["SortOrder"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K118 [Enum.UIFlexMode.Fill]
  DUPTABLE R34 K375 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R35 K24 ["$BorderNone"]
  SETTABLEKS R35 R34 K21 ["BorderSizePixel"]
  LOADK R35 K23 ["$Transparency100"]
  SETTABLEKS R35 R34 K20 ["BackgroundTransparency"]
  LOADN R35 1
  SETTABLEKS R35 R34 K53 ["LayoutOrder"]
  LOADK R35 K4 [require]
  SETTABLEKS R35 R34 K98 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K119 ["> #Text"]
  DUPTABLE R35 K376 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R36 K23 ["$Transparency100"]
  SETTABLEKS R36 R35 K20 ["BackgroundTransparency"]
  LOADK R36 K18 ["$FontWeight400"]
  SETTABLEKS R36 R35 K16 ["Font"]
  LOADK R36 K198 ["$FontSize50"]
  SETTABLEKS R36 R35 K36 ["TextSize"]
  LOADN R36 2
  SETTABLEKS R36 R35 K53 ["LayoutOrder"]
  LOADK R36 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K32 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K121 ["TextXAlignment"]
  DUPTABLE R36 K295 [{"LayoutOrder", "Size"}]
  LOADN R37 3
  SETTABLEKS R37 R36 K53 ["LayoutOrder"]
  LOADK R37 K6 ["Framework"]
  SETTABLEKS R37 R36 K98 ["Size"]
  CALL R34 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K122 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R30 K379 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R31 K155 [Vector2.new]
  LOADN R32 1
  LOADK R33 K244 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K151 ["AnchorPoint"]
  GETIMPORT R31 K235 [UDim2.fromScale]
  LOADN R32 1
  LOADK R33 K244 [0.5]
  CALL R31 2 1
  SETTABLEKS R31 R30 K152 ["Position"]
  LOADK R31 K24 ["$BorderNone"]
  SETTABLEKS R31 R30 K21 ["BorderSizePixel"]
  LOADK R31 K23 ["$Transparency100"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  LOADK R31 K124 [Enum.TextXAlignment.Left]
  SETTABLEKS R31 R30 K299 ["Image"]
  LOADN R31 3
  SETTABLEKS R31 R30 K53 ["LayoutOrder"]
  LOADK R31 K6 ["Framework"]
  SETTABLEKS R31 R30 K98 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K125 [">> TextLabel"]
  DUPTABLE R31 K99 [{"Size"}]
  LOADK R32 K6 ["Framework"]
  SETTABLEKS R32 R31 K98 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K126 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  DUPTABLE R32 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K127 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R33 R32 K26 ["BackgroundColor3"]
  LOADK R33 K128 [">> #Title"]
  SETTABLEKS R33 R32 K20 ["BackgroundTransparency"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K201 [".State-Selected"]
  DUPTABLE R33 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K203 ["$SemanticColorStatesSelected"]
  SETTABLEKS R34 R33 K26 ["BackgroundColor3"]
  LOADK R34 K204 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R34 R33 K20 ["BackgroundTransparency"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K205 [".State-Disabled"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K116 ["UIFlexMode"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 2
  MOVE R40 R2
  LOADK R41 K118 [Enum.UIFlexMode.Fill]
  DUPTABLE R42 K270 [{"ImageTransparency"}]
  LOADK R43 K15 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R43 R42 K269 ["ImageTransparency"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K119 ["> #Text"]
  DUPTABLE R43 K206 [{"TextColor3"}]
  LOADK R44 K207 ["$SemanticColorContentDisabled"]
  SETTABLEKS R44 R43 K32 ["TextColor3"]
  CALL R41 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K129 ["$FontWeight700"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K205 [".State-Disabled"]
  DUPTABLE R12 K270 [{"ImageTransparency"}]
  LOADK R13 K15 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R13 R12 K269 ["ImageTransparency"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K130 [".Role-Scroller"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K55 ["::UIPadding"]
  DUPTABLE R13 K387 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  LOADK R14 K132 ["AutomaticCanvasSize"]
  SETTABLEKS R14 R13 K56 ["PaddingLeft"]
  LOADK R14 K132 ["AutomaticCanvasSize"]
  SETTABLEKS R14 R13 K58 ["PaddingTop"]
  LOADK R14 K132 ["AutomaticCanvasSize"]
  SETTABLEKS R14 R13 K59 ["PaddingBottom"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K133 ["ScrollingDirection"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 7
  MOVE R12 R2
  LOADK R13 K67 [".Role-Column"]
  DUPTABLE R14 K390 [{"Thickness"}]
  LOADK R15 K24 ["$BorderNone"]
  SETTABLEKS R15 R14 K325 ["Thickness"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K220 ["::UICorner"]
  DUPTABLE R15 K222 [{"CornerRadius"}]
  LOADK R16 K135 ["HorizontalScrollBarInset"]
  SETTABLEKS R16 R15 K221 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K136 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  DUPTABLE R16 K393 [{"TextSize", "TextXAlignment", "TextTruncate"}]
  LOADK R17 K198 ["$FontSize50"]
  SETTABLEKS R17 R16 K36 ["TextSize"]
  GETIMPORT R17 K124 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K121 ["TextXAlignment"]
  GETIMPORT R17 K200 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R17 R16 K194 ["TextTruncate"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K55 ["::UIPadding"]
  DUPTABLE R20 K166 [{"PaddingLeft", "PaddingRight"}]
  LOADK R21 K61 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  LOADK R21 K61 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K57 ["PaddingRight"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K16 ["Font"]
  DUPTABLE R17 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K138 ["XY"]
  SETTABLEKS R18 R17 K26 ["BackgroundColor3"]
  LOADK R18 K139 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K20 ["BackgroundTransparency"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K136 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  DUPTABLE R21 K206 [{"TextColor3"}]
  LOADK R22 K197 ["$SemanticColorContentMuted"]
  SETTABLEKS R22 R21 K32 ["TextColor3"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K140 ["X"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K67 [".Role-Column"]
  DUPTABLE R22 K397 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R23 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R23 R22 K324 ["ApplyStrokeMode"]
  LOADK R23 K142 ["ScrollBarInset"]
  SETTABLEKS R23 R22 K284 ["Color"]
  LOADK R23 K90 ["$BorderMedium"]
  SETTABLEKS R23 R22 K325 ["Thickness"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K136 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  DUPTABLE R23 K206 [{"TextColor3"}]
  LOADK R24 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R24 R23 K32 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K143 ["None"]
  DUPTABLE R19 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K144 [Enum.ScrollBarInset.None]
  SETTABLEKS R20 R19 K26 ["BackgroundColor3"]
  LOADK R20 K145 ["$RibbonScrollerSize"]
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K136 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  DUPTABLE R23 K206 [{"TextColor3"}]
  LOADK R24 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R24 R23 K32 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K205 [".State-Disabled"]
  DUPTABLE R20 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K138 ["XY"]
  SETTABLEKS R21 R20 K26 ["BackgroundColor3"]
  LOADK R21 K139 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K136 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  DUPTABLE R24 K206 [{"TextColor3"}]
  LOADK R25 K207 ["$SemanticColorContentDisabled"]
  SETTABLEKS R25 R24 K32 ["TextColor3"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K146 ["> #LeftGradient"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K40 [".Text-Title"]
  DUPTABLE R15 K99 [{"Size"}]
  GETIMPORT R16 K303 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K98 ["Size"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K147 ["ZIndex"]
  DUPTABLE R19 K99 [{"Size"}]
  GETIMPORT R20 K303 [UDim2.fromOffset]
  LOADN R21 16
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K98 ["Size"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K16 ["Font"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K148 [{"Size", "ZIndex"}]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K149 ["$TabGradientSize"]
  DUPTABLE R24 K345 [{"Image"}]
  LOADK R25 K150 ["> #RightGradient"]
  SETTABLEKS R25 R24 K299 ["Image"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K151 ["AnchorPoint"]
  DUPTABLE R25 K345 [{"Image"}]
  LOADK R26 K152 ["Position"]
  SETTABLEKS R26 R25 K299 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K153 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  DUPTABLE R26 K345 [{"Image"}]
  LOADK R27 K154 ["Vector2"]
  SETTABLEKS R27 R26 K299 ["Image"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K155 [Vector2.new]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K149 ["$TabGradientSize"]
  DUPTABLE R25 K345 [{"Image"}]
  LOADK R26 K156 [".Role-DividerH"]
  SETTABLEKS R26 R25 K299 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K151 ["AnchorPoint"]
  DUPTABLE R26 K345 [{"Image"}]
  LOADK R27 K157 ["> Frame"]
  SETTABLEKS R27 R26 K299 ["Image"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K153 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  DUPTABLE R27 K345 [{"Image"}]
  LOADK R28 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  SETTABLEKS R28 R27 K299 ["Image"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K205 [".State-Disabled"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K148 [{"Size", "ZIndex"}]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K159 ["$SemanticColorDividerTransparency"]
  DUPTABLE R25 K345 [{"Image"}]
  LOADK R26 K154 ["Vector2"]
  SETTABLEKS R26 R25 K299 ["Image"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K155 [Vector2.new]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K159 ["$SemanticColorDividerTransparency"]
  DUPTABLE R26 K345 [{"Image"}]
  LOADK R27 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  SETTABLEKS R27 R26 K299 ["Image"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K160 [".Role-DividerV"]
  DUPTABLE R12 K281 [{"BackgroundTransparency"}]
  LOADK R13 K23 ["$Transparency100"]
  SETTABLEKS R13 R12 K20 ["BackgroundTransparency"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K161 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R16 K222 [{"CornerRadius"}]
  LOADK R17 K8 ["createStyleRule"]
  SETTABLEKS R17 R16 K221 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K162 [".Small"]
  DUPTABLE R17 K326 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R18 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R18 R17 K324 ["ApplyStrokeMode"]
  LOADK R18 K96 ["$SemanticColorDivider"]
  SETTABLEKS R18 R17 K284 ["Color"]
  LOADK R18 K90 ["$BorderMedium"]
  SETTABLEKS R18 R17 K325 ["Thickness"]
  LOADK R18 K159 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R18 R17 K186 ["Transparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K163 ["$SmallSeparator"]
  DUPTABLE R18 K281 [{"BackgroundTransparency"}]
  LOADK R19 K23 ["$Transparency100"]
  SETTABLEKS R19 R18 K20 ["BackgroundTransparency"]
  NEWTABLE R19 0 4
  MOVE R20 R2
  LOADK R21 K161 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R22 K222 [{"CornerRadius"}]
  LOADK R23 K8 ["createStyleRule"]
  SETTABLEKS R23 R22 K221 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K164 [".Large"]
  DUPTABLE R23 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R24 K23 ["$Transparency100"]
  SETTABLEKS R24 R23 K20 ["BackgroundTransparency"]
  LOADK R24 K24 ["$BorderNone"]
  SETTABLEKS R24 R23 K21 ["BorderSizePixel"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K18 ["$FontWeight400"]
  DUPTABLE R27 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K210 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R28 R27 K26 ["BackgroundColor3"]
  LOADK R28 K211 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R28 R27 K20 ["BackgroundTransparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K165 ["$LargeSeparator"]
  DUPTABLE R28 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R29 R28 K26 ["BackgroundColor3"]
  LOADK R29 K21 ["BorderSizePixel"]
  SETTABLEKS R29 R28 K20 ["BackgroundTransparency"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K166 [{"PaddingLeft", "PaddingRight"}]
  DUPTABLE R24 K423 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
  GETIMPORT R25 K303 [UDim2.fromOffset]
  LOADN R26 82
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K98 ["Size"]
  LOADK R25 K198 ["$FontSize50"]
  SETTABLEKS R25 R24 K36 ["TextSize"]
  LOADK R25 K196 ["$FontWeight600"]
  SETTABLEKS R25 R24 K16 ["Font"]
  LOADB R25 0
  SETTABLEKS R25 R24 K246 ["AutoButtonColor"]
  LOADK R25 K24 ["$BorderNone"]
  SETTABLEKS R25 R24 K21 ["BorderSizePixel"]
  NEWTABLE R25 0 3
  MOVE R26 R2
  LOADK R27 K55 ["::UIPadding"]
  DUPTABLE R28 K166 [{"PaddingLeft", "PaddingRight"}]
  LOADK R29 K81 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K56 ["PaddingLeft"]
  LOADK R29 K81 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K57 ["PaddingRight"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K16 ["Font"]
  DUPTABLE R29 K424 [{"BackgroundTransparency", "TextColor3"}]
  LOADK R30 K23 ["$Transparency100"]
  SETTABLEKS R30 R29 K20 ["BackgroundTransparency"]
  LOADK R30 K197 ["$SemanticColorContentMuted"]
  SETTABLEKS R30 R29 K32 ["TextColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K201 [".State-Selected"]
  DUPTABLE R30 K202 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R31 K203 ["$SemanticColorStatesSelected"]
  SETTABLEKS R31 R30 K26 ["BackgroundColor3"]
  LOADK R31 K204 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  LOADK R31 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K32 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K169 ["HorizontalFlex"]
  DUPTABLE R25 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R26 K96 ["$SemanticColorDivider"]
  SETTABLEKS R26 R25 K26 ["BackgroundColor3"]
  LOADK R26 K159 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  LOADK R26 K24 ["$BorderNone"]
  SETTABLEKS R26 R25 K21 ["BorderSizePixel"]
  LOADK R26 K163 ["$SmallSeparator"]
  SETTABLEKS R26 R25 K98 ["Size"]
  CALL R23 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K170 ["VerticalAlignment"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 4
  MOVE R15 R2
  LOADK R16 K44 ["::UIListLayout"]
  DUPTABLE R17 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K69 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K45 ["FillDirection"]
  LOADK R18 K76 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K46 ["Padding"]
  GETIMPORT R18 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K47 ["SortOrder"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K55 ["::UIPadding"]
  DUPTABLE R18 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R19 K81 ["$GlobalSpace150"]
  SETTABLEKS R19 R18 K56 ["PaddingLeft"]
  LOADK R19 K81 ["$GlobalSpace150"]
  SETTABLEKS R19 R18 K57 ["PaddingRight"]
  LOADK R19 K76 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K58 ["PaddingTop"]
  LOADK R19 K76 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K59 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K171 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K44 ["::UIListLayout"]
  DUPTABLE R23 K48 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K45 ["FillDirection"]
  LOADK R24 K76 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K46 ["Padding"]
  GETIMPORT R24 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K47 ["SortOrder"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K157 ["> Frame"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K172 ["UIFlexAlignment"]
  DUPTABLE R28 K158 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R29 K96 ["$SemanticColorDivider"]
  SETTABLEKS R29 R28 K26 ["BackgroundColor3"]
  LOADK R29 K159 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R29 R28 K20 ["BackgroundTransparency"]
  LOADK R29 K24 ["$BorderNone"]
  SETTABLEKS R29 R28 K21 ["BorderSizePixel"]
  LOADK R29 K163 ["$SmallSeparator"]
  SETTABLEKS R29 R28 K98 ["Size"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K173 ["SpaceBetween"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K112 ["> #Spacer"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K113 ["::UIFlexItem"]
  DUPTABLE R28 K115 [{"FlexMode"}]
  GETIMPORT R29 K118 [Enum.UIFlexMode.Fill]
  SETTABLEKS R29 R28 K114 ["FlexMode"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K174 [Enum.UIFlexAlignment.SpaceBetween]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K44 ["::UIListLayout"]
  DUPTABLE R18 K432 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R19 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K45 ["FillDirection"]
  GETIMPORT R19 K433 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K431 ["HorizontalAlignment"]
  GETIMPORT R19 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K47 ["SortOrder"]
  GETIMPORT R19 K176 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K170 ["VerticalAlignment"]
  LOADK R19 K178 [{"PaddingLeft"}]
  SETTABLEKS R19 R18 K46 ["Padding"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K252 ["> TextLabel"]
  DUPTABLE R19 K376 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R20 K23 ["$Transparency100"]
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  LOADK R20 K18 ["$FontWeight400"]
  SETTABLEKS R20 R19 K16 ["Font"]
  LOADK R20 K179 ["$MezzaninePadding"]
  SETTABLEKS R20 R19 K36 ["TextSize"]
  LOADN R20 0
  SETTABLEKS R20 R19 K53 ["LayoutOrder"]
  LOADK R20 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R20 R19 K32 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K180 [">> .RightMezzControls"]
  DUPTABLE R15 K437 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R16 K440 [Color3.fromHex]
  LOADK R17 K185 [".X-FadeLeft ::UIGradient"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K26 ["BackgroundColor3"]
  LOADK R16 K26 ["BackgroundColor3"]
  SETTABLEKS R16 R15 K20 ["BackgroundTransparency"]
  GETIMPORT R16 K303 [UDim2.fromOffset]
  LOADN R17 40
  LOADN R18 24
  CALL R16 2 1
  SETTABLEKS R16 R15 K98 ["Size"]
  NEWTABLE R16 0 6
  MOVE R17 R2
  LOADK R18 K220 ["::UICorner"]
  DUPTABLE R19 K222 [{"CornerRadius"}]
  LOADK R20 K186 ["Transparency"]
  SETTABLEKS R20 R19 K221 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K55 ["::UIPadding"]
  DUPTABLE R20 K80 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R21 K132 ["AutomaticCanvasSize"]
  SETTABLEKS R21 R20 K59 ["PaddingBottom"]
  LOADK R21 K132 ["AutomaticCanvasSize"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  LOADK R21 K132 ["AutomaticCanvasSize"]
  SETTABLEKS R21 R20 K57 ["PaddingRight"]
  LOADK R21 K132 ["AutomaticCanvasSize"]
  SETTABLEKS R21 R20 K58 ["PaddingTop"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K44 ["::UIListLayout"]
  DUPTABLE R21 K443 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R22 K69 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K45 ["FillDirection"]
  GETIMPORT R22 K433 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K431 ["HorizontalAlignment"]
  GETIMPORT R22 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K47 ["SortOrder"]
  GETIMPORT R22 K176 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K170 ["VerticalAlignment"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K157 ["> Frame"]
  DUPTABLE R22 K444 [{"BackgroundColor3", "Size"}]
  LOADK R23 K189 [NumberSequence.new]
  SETTABLEKS R23 R22 K26 ["BackgroundColor3"]
  GETIMPORT R23 K303 [UDim2.fromOffset]
  LOADN R24 20
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K98 ["Size"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K220 ["::UICorner"]
  DUPTABLE R26 K222 [{"CornerRadius"}]
  LOADK R27 K186 ["Transparency"]
  SETTABLEKS R27 R26 K221 ["CornerRadius"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K201 [".State-Selected"]
  DUPTABLE R23 K446 [{"BackgroundColor3"}]
  GETIMPORT R24 K440 [Color3.fromHex]
  LOADK R25 K191 [NumberSequenceKeypoint.new]
  CALL R24 1 1
  SETTABLEKS R24 R23 K26 ["BackgroundColor3"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K44 ["::UIListLayout"]
  DUPTABLE R27 K448 [{"HorizontalAlignment"}]
  GETIMPORT R28 K450 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R28 R27 K431 ["HorizontalAlignment"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K205 [".State-Disabled"]
  DUPTABLE R24 K281 [{"BackgroundTransparency"}]
  LOADK R25 K195 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  SETTABLEKS R25 R24 K20 ["BackgroundTransparency"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K157 ["> Frame"]
  DUPTABLE R28 K281 [{"BackgroundTransparency"}]
  LOADK R29 K195 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  SETTABLEKS R29 R28 K20 ["BackgroundTransparency"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K196 ["$FontWeight600"]
  DUPTABLE R16 K308 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K246 ["AutoButtonColor"]
  LOADK R17 K249 [""]
  SETTABLEKS R17 R16 K247 ["Text"]
  GETIMPORT R17 K303 [UDim2.fromOffset]
  LOADN R18 85
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K98 ["Size"]
  NEWTABLE R17 0 13
  MOVE R18 R2
  LOADK R19 K220 ["::UICorner"]
  DUPTABLE R20 K222 [{"CornerRadius"}]
  LOADK R21 K197 ["$SemanticColorContentMuted"]
  SETTABLEKS R21 R20 K221 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K198 ["$FontSize50"]
  DUPTABLE R21 K99 [{"Size"}]
  GETIMPORT R22 K303 [UDim2.fromOffset]
  LOADN R23 120
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K98 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K44 ["::UIListLayout"]
  DUPTABLE R22 K455 [{"HorizontalFlex"}]
  GETIMPORT R23 K456 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R23 R22 K169 ["HorizontalFlex"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K55 ["::UIPadding"]
  DUPTABLE R23 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K201 [".State-Selected"]
  SETTABLEKS R24 R23 K56 ["PaddingLeft"]
  LOADK R24 K202 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R24 R23 K57 ["PaddingRight"]
  LOADK R24 K203 ["$SemanticColorStatesSelected"]
  SETTABLEKS R24 R23 K58 ["PaddingTop"]
  LOADK R24 K204 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R24 R23 K59 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K205 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K44 ["::UIListLayout"]
  DUPTABLE R28 K462 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
  GETIMPORT R29 K456 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R29 R28 K169 ["HorizontalFlex"]
  GETIMPORT R29 K51 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K45 ["FillDirection"]
  GETIMPORT R29 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K47 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K159 ["$SemanticColorDividerTransparency"]
  DUPTABLE R25 K99 [{"Size"}]
  LOADK R26 K6 ["Framework"]
  SETTABLEKS R26 R25 K98 ["Size"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K113 ["::UIFlexItem"]
  DUPTABLE R29 K464 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R30 K229 [Enum.UIFlexMode.Custom]
  SETTABLEKS R30 R29 K114 ["FlexMode"]
  LOADN R30 0
  SETTABLEKS R30 R29 K463 ["ShrinkRation"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R26 K311 [{"LayoutOrder"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K53 ["LayoutOrder"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K56 ["PaddingLeft"]
  DUPTABLE R30 K311 [{"LayoutOrder"}]
  LOADN R31 3
  SETTABLEKS R31 R30 K53 ["LayoutOrder"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K210 ["$SemanticColorStateLayerHover"]
  DUPTABLE R27 K467 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R28 K24 ["$BorderNone"]
  SETTABLEKS R28 R27 K21 ["BorderSizePixel"]
  LOADK R28 K23 ["$Transparency100"]
  SETTABLEKS R28 R27 K20 ["BackgroundTransparency"]
  LOADK R28 K212 [".State-Editing"]
  SETTABLEKS R28 R27 K299 ["Image"]
  LOADN R28 4
  SETTABLEKS R28 R27 K53 ["LayoutOrder"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K213 ["ClipsDescendants"]
  DUPTABLE R31 K345 [{"Image"}]
  LOADK R32 K214 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  SETTABLEKS R32 R31 K299 ["Image"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K215 [Enum.TextTruncate.None]
  DUPTABLE R28 K472 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R29 K18 ["$FontWeight400"]
  SETTABLEKS R29 R28 K16 ["Font"]
  LOADK R29 K198 ["$FontSize50"]
  SETTABLEKS R29 R28 K36 ["TextSize"]
  LOADK R29 K34 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K32 ["TextColor3"]
  GETIMPORT R29 K256 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R29 R28 K194 ["TextTruncate"]
  GETIMPORT R29 K124 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K121 ["TextXAlignment"]
  LOADN R29 2
  SETTABLEKS R29 R28 K53 ["LayoutOrder"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K16 ["Font"]
  DUPTABLE R29 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K138 ["XY"]
  SETTABLEKS R30 R29 K26 ["BackgroundColor3"]
  LOADK R30 K139 [Enum.AutomaticSize.XY]
  SETTABLEKS R30 R29 K20 ["BackgroundTransparency"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R33 K270 [{"ImageTransparency"}]
  LOADK R34 K217 [{"MinSize", "MaxSize"}]
  SETTABLEKS R34 R33 K269 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K218 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  DUPTABLE R30 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K144 [Enum.ScrollBarInset.None]
  SETTABLEKS R31 R30 K26 ["BackgroundColor3"]
  LOADK R31 K145 ["$RibbonScrollerSize"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R34 K270 [{"ImageTransparency"}]
  LOADK R35 K26 ["BackgroundColor3"]
  SETTABLEKS R35 R34 K269 ["ImageTransparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K140 ["X"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K67 [".Role-Column"]
  DUPTABLE R35 K397 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R36 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R36 R35 K324 ["ApplyStrokeMode"]
  LOADK R36 K142 ["ScrollBarInset"]
  SETTABLEKS R36 R35 K284 ["Color"]
  LOADK R36 K90 ["$BorderMedium"]
  SETTABLEKS R36 R35 K325 ["Thickness"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R36 K270 [{"ImageTransparency"}]
  LOADK R37 K26 ["BackgroundColor3"]
  SETTABLEKS R37 R36 K269 ["ImageTransparency"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K205 [".State-Disabled"]
  DUPTABLE R32 K209 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K138 ["XY"]
  SETTABLEKS R33 R32 K26 ["BackgroundColor3"]
  LOADK R33 K139 [Enum.AutomaticSize.XY]
  SETTABLEKS R33 R32 K20 ["BackgroundTransparency"]
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K215 [Enum.TextTruncate.None]
  DUPTABLE R36 K206 [{"TextColor3"}]
  LOADK R37 K207 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K32 ["TextColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K219 ["$GlobalSpace75"]
  DUPTABLE R37 K270 [{"ImageTransparency"}]
  LOADK R38 K15 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R38 R37 K269 ["ImageTransparency"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K220 ["::UICorner"]
  DUPTABLE R17 K478 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K477 ["Active"]
  LOADB R18 0
  SETTABLEKS R18 R17 K246 ["AutoButtonColor"]
  GETIMPORT R18 K155 [Vector2.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K151 ["AnchorPoint"]
  GETIMPORT R18 K235 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K152 ["Position"]
  LOADK R18 K249 [""]
  SETTABLEKS R18 R17 K247 ["Text"]
  LOADN R18 2
  SETTABLEKS R18 R17 K147 ["ZIndex"]
  CALL R15 2 -1
  SETLIST R5 R6 -1 [33]
  MOVE R6 R3
  LOADK R7 K223 ["$TabCornerRadius"]
  MOVE R8 R5
  DUPTABLE R9 K485 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R10 K102 [UDim2.new]
  LOADN R11 0
  LOADN R12 75
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K480 ["SpinboxDefaultSize"]
  GETIMPORT R10 K102 [UDim2.new]
  LOADN R11 0
  LOADN R12 85
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K481 ["SpinboxWithIconSize"]
  GETIMPORT R10 K102 [UDim2.new]
  LOADN R11 0
  LOADN R12 61
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K482 ["SpinboxShortSize"]
  GETIMPORT R10 K102 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K98 ["Size"]
  GETIMPORT R10 K102 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K483 ["SizeDense"]
  GETIMPORT R10 K102 [UDim2.new]
  LOADN R11 0
  LOADN R12 180
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K484 ["SliderSize"]
  CALL R6 3 -1
  RETURN R6 -1
