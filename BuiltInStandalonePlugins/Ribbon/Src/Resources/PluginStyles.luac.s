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
  GETTABLEKS R5 R1 K10 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K10 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagRibbonDensityModeStyles"]
  CALL R5 1 1
  MOVE R6 R5
  CALL R6 0 1
  JUMPIF R6 [+10]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["DEPRECATED_PluginStyles"]
  CALL R6 1 -1
  RETURN R6 -1
  NEWTABLE R6 0 42
  MOVE R7 R2
  LOADK R8 K16 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R9 K18 [{"Font"}]
  LOADK R10 K19 ["$FontWeight400"]
  SETTABLEKS R10 R9 K17 ["Font"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K20 [".Role-Surface"]
  DUPTABLE R10 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R11 K24 ["$Transparency100"]
  SETTABLEKS R11 R10 K21 ["BackgroundTransparency"]
  LOADK R11 K25 ["$BorderNone"]
  SETTABLEKS R11 R10 K22 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K26 [".Role-Surface100"]
  DUPTABLE R11 K28 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R12 K29 ["$SemanticColorSurface100"]
  SETTABLEKS R12 R11 K27 ["BackgroundColor3"]
  LOADK R12 K25 ["$BorderNone"]
  SETTABLEKS R12 R11 K22 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K30 [".Role-Surface200"]
  DUPTABLE R12 K28 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R13 K31 ["$SemanticColorSurface200"]
  SETTABLEKS R13 R12 K27 ["BackgroundColor3"]
  LOADK R13 K25 ["$BorderNone"]
  SETTABLEKS R13 R12 K22 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K32 [".Role-Text"]
  DUPTABLE R13 K34 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  LOADK R14 K25 ["$BorderNone"]
  SETTABLEKS R14 R13 K22 ["BorderSizePixel"]
  LOADK R14 K24 ["$Transparency100"]
  SETTABLEKS R14 R13 K21 ["BackgroundTransparency"]
  LOADK R14 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R14 R13 K33 ["TextColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K36 [".Text-Label"]
  DUPTABLE R14 K38 [{"Font", "TextSize"}]
  LOADK R15 K39 ["$ContentTextFontWeight"]
  SETTABLEKS R15 R14 K17 ["Font"]
  LOADK R15 K40 ["$ContentTextFontSize"]
  SETTABLEKS R15 R14 K37 ["TextSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K41 [".Text-Title"]
  DUPTABLE R15 K38 [{"Font", "TextSize"}]
  LOADK R16 K42 ["$TitleTextFontWeight"]
  SETTABLEKS R16 R15 K17 ["Font"]
  LOADK R16 K43 ["$TitleTextFontSize"]
  SETTABLEKS R16 R15 K37 ["TextSize"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K44 [".RibbonContents"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K45 ["::UIListLayout"]
  DUPTABLE R20 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K46 ["FillDirection"]
  LOADK R21 K53 ["$RibbonContentsPadding"]
  SETTABLEKS R21 R20 K47 ["Padding"]
  GETIMPORT R21 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K48 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K56 ["::UIPadding"]
  DUPTABLE R21 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K62 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K57 ["PaddingLeft"]
  LOADK R22 K62 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K58 ["PaddingRight"]
  LOADK R22 K62 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K59 ["PaddingTop"]
  LOADK R22 K62 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K60 ["PaddingBottom"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K63 [".Role-Row"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K45 ["::UIListLayout"]
  DUPTABLE R21 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K46 ["FillDirection"]
  LOADK R22 K64 ["$RowSpacingDefault"]
  SETTABLEKS R22 R21 K47 ["Padding"]
  GETIMPORT R22 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K48 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K65 [".ConvertibleToColumn"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K45 ["::UIListLayout"]
  DUPTABLE R26 K49 [{"FillDirection", "Padding", "SortOrder"}]
  LOADK R27 K66 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R27 R26 K46 ["FillDirection"]
  LOADK R27 K67 ["$ConvertibleRowToColumnPadding"]
  SETTABLEKS R27 R26 K47 ["Padding"]
  GETIMPORT R27 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K48 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K68 [".Role-Column"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K45 ["::UIListLayout"]
  DUPTABLE R22 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K70 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K46 ["FillDirection"]
  LOADK R23 K71 ["$ColumnSpacingDefault"]
  SETTABLEKS R23 R22 K47 ["Padding"]
  GETIMPORT R23 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K48 ["SortOrder"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K72 [".SpacingMedium"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K45 ["::UIListLayout"]
  DUPTABLE R27 K73 [{"Padding"}]
  LOADK R28 K74 ["$ColumnSpacingMedium"]
  SETTABLEKS R28 R27 K47 ["Padding"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K75 [".X-RowSpace50"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K45 ["::UIListLayout"]
  DUPTABLE R23 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K46 ["FillDirection"]
  LOADK R24 K62 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K47 ["Padding"]
  GETIMPORT R24 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K48 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K76 [".X-RowSpace100"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K45 ["::UIListLayout"]
  DUPTABLE R24 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K46 ["FillDirection"]
  LOADK R25 K77 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K47 ["Padding"]
  GETIMPORT R25 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K48 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K78 [".X-RowSpace200"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K45 ["::UIListLayout"]
  DUPTABLE R25 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K46 ["FillDirection"]
  LOADK R26 K79 ["$GlobalSpace200"]
  SETTABLEKS R26 R25 K47 ["Padding"]
  GETIMPORT R26 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K48 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K80 [".X-Pad150 ::UIPadding"]
  DUPTABLE R22 K81 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R23 K82 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K60 ["PaddingBottom"]
  LOADK R23 K82 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K57 ["PaddingLeft"]
  LOADK R23 K82 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K58 ["PaddingRight"]
  LOADK R23 K82 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K59 ["PaddingTop"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K83 [".Role-Menu"]
  DUPTABLE R23 K86 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  MOVE R25 R4
  CALL R25 0 1
  JUMPIFNOT R25 [+2]
  LOADK R24 K29 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R24 K87 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R24 R23 K27 ["BackgroundColor3"]
  LOADK R24 K88 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R24 R23 K84 ["BorderColor3"]
  GETIMPORT R24 K90 [Enum.BorderMode.Inset]
  SETTABLEKS R24 R23 K85 ["BorderMode"]
  LOADK R24 K91 ["$BorderMedium"]
  SETTABLEKS R24 R23 K22 ["BorderSizePixel"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K56 ["::UIPadding"]
  DUPTABLE R27 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R28 K92 ["$MenuPadding"]
  SETTABLEKS R28 R27 K57 ["PaddingLeft"]
  LOADK R28 K92 ["$MenuPadding"]
  SETTABLEKS R28 R27 K58 ["PaddingRight"]
  LOADK R28 K92 ["$MenuPadding"]
  SETTABLEKS R28 R27 K59 ["PaddingTop"]
  LOADK R28 K92 ["$MenuPadding"]
  SETTABLEKS R28 R27 K60 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K93 ["> #Menu ::UIListLayout"]
  DUPTABLE R28 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R29 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K46 ["FillDirection"]
  LOADK R29 K94 ["$MenuColumnSpacing"]
  SETTABLEKS R29 R28 K47 ["Padding"]
  GETIMPORT R29 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K48 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K95 [".Role-Tooltip"]
  DUPTABLE R24 K86 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R25 K96 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R25 R24 K27 ["BackgroundColor3"]
  LOADK R25 K97 ["$SemanticColorDivider"]
  SETTABLEKS R25 R24 K84 ["BorderColor3"]
  GETIMPORT R25 K90 [Enum.BorderMode.Inset]
  SETTABLEKS R25 R24 K85 ["BorderMode"]
  LOADK R25 K91 ["$BorderMedium"]
  SETTABLEKS R25 R24 K22 ["BorderSizePixel"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K98 ["> #Wrapper"]
  DUPTABLE R28 K100 [{"Size"}]
  GETIMPORT R29 K103 [UDim2.new]
  LOADN R30 0
  LOADN R31 232
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K99 ["Size"]
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K104 ["::UISizeConstraint"]
  DUPTABLE R32 K106 [{"MaxSize"}]
  LOADK R33 K107 ["$TooltipMaxSize"]
  SETTABLEKS R33 R32 K105 ["MaxSize"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K45 ["::UIListLayout"]
  DUPTABLE R33 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R34 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K46 ["FillDirection"]
  LOADK R34 K108 ["$TooltipContentSpacing"]
  SETTABLEKS R34 R33 K47 ["Padding"]
  GETIMPORT R34 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K48 ["SortOrder"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K109 ["> #Content"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 5
  MOVE R36 R2
  LOADK R37 K45 ["::UIListLayout"]
  DUPTABLE R38 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R39 K70 [Enum.FillDirection.Vertical]
  SETTABLEKS R39 R38 K46 ["FillDirection"]
  LOADK R39 K110 ["$TooltipTextSpacing"]
  SETTABLEKS R39 R38 K47 ["Padding"]
  GETIMPORT R39 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K48 ["SortOrder"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K111 ["> #TitleFrame"]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 2
  MOVE R41 R2
  LOADK R42 K45 ["::UIListLayout"]
  DUPTABLE R43 K112 [{"FillDirection", "SortOrder"}]
  GETIMPORT R44 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R44 R43 K46 ["FillDirection"]
  GETIMPORT R44 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R44 R43 K48 ["SortOrder"]
  CALL R41 2 1
  MOVE R42 R2
  LOADK R43 K113 ["> #Spacer"]
  NEWTABLE R44 0 0
  NEWTABLE R45 0 1
  MOVE R46 R2
  LOADK R47 K114 ["::UIFlexItem"]
  DUPTABLE R48 K116 [{"FlexMode"}]
  GETIMPORT R49 K119 [Enum.UIFlexMode.Fill]
  SETTABLEKS R49 R48 K115 ["FlexMode"]
  CALL R46 2 -1
  SETLIST R45 R46 -1 [1]
  CALL R42 3 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 1
  MOVE R38 R2
  LOADK R39 K120 ["> #Text"]
  DUPTABLE R40 K123 [{"TextWrapped", "TextXAlignment"}]
  LOADB R41 1
  SETTABLEKS R41 R40 K121 ["TextWrapped"]
  GETIMPORT R41 K125 [Enum.TextXAlignment.Left]
  SETTABLEKS R41 R40 K122 ["TextXAlignment"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K126 [">> TextLabel"]
  DUPTABLE R41 K127 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R42 K19 ["$FontWeight400"]
  SETTABLEKS R42 R41 K17 ["Font"]
  LOADK R42 K128 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  LOADK R42 K25 ["$BorderNone"]
  SETTABLEKS R42 R41 K22 ["BorderSizePixel"]
  LOADK R42 K24 ["$Transparency100"]
  SETTABLEKS R42 R41 K21 ["BackgroundTransparency"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K129 [">> #Title"]
  DUPTABLE R42 K18 [{"Font"}]
  LOADK R43 K130 ["$FontWeight700"]
  SETTABLEKS R43 R42 K17 ["Font"]
  CALL R40 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  SETLIST R6 R7 16 [1]
  MOVE R7 R2
  LOADK R8 K131 [".Role-Scroller"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K132 ["> #Scroller"]
  DUPTABLE R13 K137 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R14 K140 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K133 ["AutomaticCanvasSize"]
  GETIMPORT R14 K142 [Enum.ScrollingDirection.X]
  SETTABLEKS R14 R13 K134 ["ScrollingDirection"]
  LOADN R14 0
  SETTABLEKS R14 R13 K135 ["ScrollBarThickness"]
  GETIMPORT R14 K145 [Enum.ScrollBarInset.None]
  SETTABLEKS R14 R13 K136 ["HorizontalScrollBarInset"]
  LOADK R14 K146 ["$RibbonScrollerSize"]
  SETTABLEKS R14 R13 K99 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K147 ["> #LeftGradient"]
  DUPTABLE R14 K149 [{"Size", "ZIndex"}]
  LOADK R15 K150 ["$TabGradientSize"]
  SETTABLEKS R15 R14 K99 ["Size"]
  LOADN R15 10
  SETTABLEKS R15 R14 K148 ["ZIndex"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K151 ["> #RightGradient"]
  DUPTABLE R15 K154 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R16 K156 [Vector2.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K152 ["AnchorPoint"]
  LOADK R16 K150 ["$TabGradientSize"]
  SETTABLEKS R16 R15 K99 ["Size"]
  GETIMPORT R16 K103 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K153 ["Position"]
  LOADN R16 10
  SETTABLEKS R16 R15 K148 ["ZIndex"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K157 [".Role-DividerH"]
  DUPTABLE R10 K100 [{"Size"}]
  GETIMPORT R11 K103 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K99 ["Size"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K158 ["> Frame"]
  DUPTABLE R14 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R15 K97 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K27 ["BackgroundColor3"]
  LOADK R15 K160 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K21 ["BackgroundTransparency"]
  LOADK R15 K25 ["$BorderNone"]
  SETTABLEKS R15 R14 K22 ["BorderSizePixel"]
  GETIMPORT R15 K103 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K99 ["Size"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K161 [".Role-DividerV"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K158 ["> Frame"]
  DUPTABLE R15 K162 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R16 K97 ["$SemanticColorDivider"]
  SETTABLEKS R16 R15 K27 ["BackgroundColor3"]
  LOADK R16 K160 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R16 R15 K21 ["BackgroundTransparency"]
  LOADK R16 K25 ["$BorderNone"]
  SETTABLEKS R16 R15 K22 ["BorderSizePixel"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K163 [".Small"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K158 ["> Frame"]
  DUPTABLE R20 K100 [{"Size"}]
  LOADK R21 K164 ["$SmallSeparator"]
  SETTABLEKS R21 R20 K99 ["Size"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K165 [".Large"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K158 ["> Frame"]
  DUPTABLE R21 K100 [{"Size"}]
  LOADK R22 K166 ["$LargeSeparator"]
  SETTABLEKS R22 R21 K99 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K56 ["::UIPadding"]
  DUPTABLE R22 K167 [{"PaddingLeft", "PaddingRight"}]
  LOADK R23 K168 ["$LargeSeparatorPadding"]
  SETTABLEKS R23 R22 K57 ["PaddingLeft"]
  LOADK R23 K168 ["$LargeSeparatorPadding"]
  SETTABLEKS R23 R22 K58 ["PaddingRight"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K169 [".Role-Mezzanine"]
  DUPTABLE R12 K100 [{"Size"}]
  GETIMPORT R13 K103 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 36
  CALL R13 4 1
  SETTABLEKS R13 R12 K99 ["Size"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K45 ["::UIListLayout"]
  DUPTABLE R16 K172 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R17 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K46 ["FillDirection"]
  GETIMPORT R17 K175 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R17 R16 K170 ["HorizontalFlex"]
  LOADK R17 K62 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K47 ["Padding"]
  GETIMPORT R17 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K48 ["SortOrder"]
  GETIMPORT R17 K177 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K171 ["VerticalAlignment"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K178 [">> .LeftMezzControls"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K45 ["::UIListLayout"]
  DUPTABLE R21 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K46 ["FillDirection"]
  LOADK R22 K77 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K47 ["Padding"]
  GETIMPORT R22 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K48 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K56 ["::UIPadding"]
  DUPTABLE R22 K179 [{"PaddingLeft"}]
  LOADK R23 K180 ["$MezzaninePadding"]
  SETTABLEKS R23 R22 K57 ["PaddingLeft"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K181 [">> .RightMezzControls"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K45 ["::UIListLayout"]
  DUPTABLE R22 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K46 ["FillDirection"]
  LOADK R23 K77 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K47 ["Padding"]
  GETIMPORT R23 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K48 ["SortOrder"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K56 ["::UIPadding"]
  DUPTABLE R23 K182 [{"PaddingRight"}]
  LOADK R24 K180 ["$MezzaninePadding"]
  SETTABLEKS R24 R23 K58 ["PaddingRight"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K183 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R13 K116 [{"FlexMode"}]
  GETIMPORT R14 K185 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R14 R13 K115 ["FlexMode"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K186 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R14 K188 [{"Transparency"}]
  GETIMPORT R15 K190 [NumberSequence.new]
  NEWTABLE R16 0 2
  GETIMPORT R17 K192 [NumberSequenceKeypoint.new]
  LOADN R18 0
  LOADN R19 1
  CALL R17 2 1
  GETIMPORT R18 K192 [NumberSequenceKeypoint.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R15 1 1
  SETTABLEKS R15 R14 K187 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K193 [".X-FadeRight ::UIGradient"]
  DUPTABLE R15 K188 [{"Transparency"}]
  GETIMPORT R16 K190 [NumberSequence.new]
  NEWTABLE R17 0 2
  GETIMPORT R18 K192 [NumberSequenceKeypoint.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  GETIMPORT R19 K192 [NumberSequenceKeypoint.new]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R16 1 1
  SETTABLEKS R16 R15 K187 ["Transparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K194 [".Component-RibbonTab"]
  DUPTABLE R16 K196 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R17 K24 ["$Transparency100"]
  SETTABLEKS R17 R16 K21 ["BackgroundTransparency"]
  LOADK R17 K197 ["$FontWeight600"]
  SETTABLEKS R17 R16 K17 ["Font"]
  LOADK R17 K198 ["$SemanticColorContentMuted"]
  SETTABLEKS R17 R16 K33 ["TextColor3"]
  LOADK R17 K199 ["$FontSize50"]
  SETTABLEKS R17 R16 K37 ["TextSize"]
  GETIMPORT R17 K201 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R17 R16 K195 ["TextTruncate"]
  NEWTABLE R17 0 7
  MOVE R18 R2
  LOADK R19 K202 [".State-Selected"]
  DUPTABLE R20 K203 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R21 K204 ["$SemanticColorStatesSelected"]
  SETTABLEKS R21 R20 K27 ["BackgroundColor3"]
  LOADK R21 K205 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  LOADK R21 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K33 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K206 [".State-Disabled"]
  DUPTABLE R21 K207 [{"TextColor3"}]
  LOADK R22 K208 ["$SemanticColorContentDisabled"]
  SETTABLEKS R22 R21 K33 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K209 [".State-Default"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K210 [":hover"]
  DUPTABLE R26 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K212 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R27 R26 K27 ["BackgroundColor3"]
  LOADK R27 K213 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K214 [":pressed"]
  DUPTABLE R27 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K215 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R28 R27 K27 ["BackgroundColor3"]
  LOADK R28 K216 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R28 R27 K21 ["BackgroundTransparency"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K217 [".State-Editing"]
  DUPTABLE R23 K219 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  LOADK R24 K204 ["$SemanticColorStatesSelected"]
  SETTABLEKS R24 R23 K27 ["BackgroundColor3"]
  LOADK R24 K205 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R24 R23 K21 ["BackgroundTransparency"]
  LOADB R24 1
  SETTABLEKS R24 R23 K218 ["ClipsDescendants"]
  LOADK R24 K130 ["$FontWeight700"]
  SETTABLEKS R24 R23 K17 ["Font"]
  LOADK R24 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R24 R23 K33 ["TextColor3"]
  GETIMPORT R24 K220 [Enum.TextTruncate.None]
  SETTABLEKS R24 R23 K195 ["TextTruncate"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K104 ["::UISizeConstraint"]
  DUPTABLE R24 K222 [{"MinSize", "MaxSize"}]
  GETIMPORT R25 K156 [Vector2.new]
  LOADN R26 80
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K221 ["MinSize"]
  GETIMPORT R25 K156 [Vector2.new]
  LOADN R26 80
  LOADN R27 24
  CALL R25 2 1
  SETTABLEKS R25 R24 K105 ["MaxSize"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K56 ["::UIPadding"]
  DUPTABLE R25 K223 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  LOADK R26 K224 ["$GlobalSpace75"]
  SETTABLEKS R26 R25 K59 ["PaddingTop"]
  LOADK R26 K224 ["$GlobalSpace75"]
  SETTABLEKS R26 R25 K60 ["PaddingBottom"]
  LOADK R26 K77 ["$GlobalSpace100"]
  SETTABLEKS R26 R25 K57 ["PaddingLeft"]
  LOADK R26 K77 ["$GlobalSpace100"]
  SETTABLEKS R26 R25 K58 ["PaddingRight"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K225 ["::UICorner"]
  DUPTABLE R26 K227 [{"CornerRadius"}]
  LOADK R27 K228 ["$TabCornerRadius"]
  SETTABLEKS R27 R26 K226 ["CornerRadius"]
  CALL R24 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K229 [".Component-RibbonTabs"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 5
  MOVE R19 R2
  LOADK R20 K114 ["::UIFlexItem"]
  DUPTABLE R21 K232 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R22 K234 [Enum.UIFlexMode.Custom]
  SETTABLEKS R22 R21 K115 ["FlexMode"]
  LOADK R22 K235 [10000000000]
  SETTABLEKS R22 R21 K230 ["GrowRatio"]
  LOADK R22 K236 [1E-10]
  SETTABLEKS R22 R21 K231 ["ShrinkRatio"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K45 ["::UIListLayout"]
  DUPTABLE R22 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K46 ["FillDirection"]
  LOADK R23 K237 ["$RibbonTabsContainerSpacing"]
  SETTABLEKS R23 R22 K47 ["Padding"]
  GETIMPORT R23 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K48 ["SortOrder"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K238 ["> #CollapsibleScroller"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K132 ["> #Scroller"]
  DUPTABLE R27 K137 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R28 K140 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K133 ["AutomaticCanvasSize"]
  GETIMPORT R28 K142 [Enum.ScrollingDirection.X]
  SETTABLEKS R28 R27 K134 ["ScrollingDirection"]
  LOADN R28 0
  SETTABLEKS R28 R27 K135 ["ScrollBarThickness"]
  GETIMPORT R28 K145 [Enum.ScrollBarInset.None]
  SETTABLEKS R28 R27 K136 ["HorizontalScrollBarInset"]
  GETIMPORT R28 K240 [UDim2.fromScale]
  LOADN R29 1
  LOADN R30 1
  CALL R28 2 1
  SETTABLEKS R28 R27 K99 ["Size"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K98 ["> #Wrapper"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K45 ["::UIListLayout"]
  DUPTABLE R35 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R36 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K46 ["FillDirection"]
  LOADK R36 K241 ["$RibbonTabsSpacing"]
  SETTABLEKS R36 R35 K47 ["Padding"]
  GETIMPORT R36 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K48 ["SortOrder"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K147 ["> #LeftGradient"]
  DUPTABLE R28 K149 [{"Size", "ZIndex"}]
  LOADK R29 K150 ["$TabGradientSize"]
  SETTABLEKS R29 R28 K99 ["Size"]
  LOADN R29 10
  SETTABLEKS R29 R28 K148 ["ZIndex"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K151 ["> #RightGradient"]
  DUPTABLE R29 K154 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R30 K156 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K152 ["AnchorPoint"]
  LOADK R30 K150 ["$TabGradientSize"]
  SETTABLEKS R30 R29 K99 ["Size"]
  GETIMPORT R30 K103 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K153 ["Position"]
  LOADN R30 10
  SETTABLEKS R30 R29 K148 ["ZIndex"]
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K242 ["> #More"]
  DUPTABLE R24 K244 [{"Visible"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K243 ["Visible"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K245 [".Compact > #More"]
  DUPTABLE R25 K244 [{"Visible"}]
  LOADB R26 1
  SETTABLEKS R26 R25 K243 ["Visible"]
  CALL R23 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K246 [".Role-More"]
  DUPTABLE R18 K100 [{"Size"}]
  LOADK R19 K146 ["$RibbonScrollerSize"]
  SETTABLEKS R19 R18 K99 ["Size"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K247 ["> .Ribbon-More"]
  DUPTABLE R22 K248 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R23 K156 [Vector2.new]
  LOADN R24 1
  LOADK R25 K249 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K152 ["AnchorPoint"]
  GETIMPORT R23 K103 [UDim2.new]
  LOADN R24 1
  LOADN R25 248
  LOADK R26 K249 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K153 ["Position"]
  LOADN R23 3
  SETTABLEKS R23 R22 K148 ["ZIndex"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K250 [".Component-RibbonButton"]
  DUPTABLE R19 K253 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K251 ["AutoButtonColor"]
  LOADK R20 K24 ["$Transparency100"]
  SETTABLEKS R20 R19 K21 ["BackgroundTransparency"]
  LOADK R20 K25 ["$BorderNone"]
  SETTABLEKS R20 R19 K22 ["BorderSizePixel"]
  LOADK R20 K254 [""]
  SETTABLEKS R20 R19 K252 ["Text"]
  NEWTABLE R20 0 11
  MOVE R21 R2
  LOADK R22 K163 [".Small"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K104 ["::UISizeConstraint"]
  DUPTABLE R27 K106 [{"MaxSize"}]
  LOADK R28 K255 ["$RibbonButtonSmallMaxSize"]
  SETTABLEKS R28 R27 K105 ["MaxSize"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K165 [".Large"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K104 ["::UISizeConstraint"]
  DUPTABLE R28 K106 [{"MaxSize"}]
  LOADK R29 K0 ["script"]
  SETTABLEKS R29 R28 K105 ["MaxSize"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K1 [script]
  DUPTABLE R25 K258 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R26 K24 ["$Transparency100"]
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  LOADK R26 K19 ["$FontWeight400"]
  SETTABLEKS R26 R25 K17 ["Font"]
  LOADN R26 2
  SETTABLEKS R26 R25 K54 ["LayoutOrder"]
  LOADK R26 K198 ["$SemanticColorContentMuted"]
  SETTABLEKS R26 R25 K33 ["TextColor3"]
  LOADK R26 K3 ["require"]
  SETTABLEKS R26 R25 K37 ["TextSize"]
  GETIMPORT R26 K261 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R26 R25 K195 ["TextTruncate"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K6 ["Framework"]
  DUPTABLE R26 K263 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R27 K24 ["$Transparency100"]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  LOADK R27 K25 ["$BorderNone"]
  SETTABLEKS R27 R26 K22 ["BorderSizePixel"]
  LOADN R27 0
  SETTABLEKS R27 R26 K54 ["LayoutOrder"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K8 ["createStyleRule"]
  DUPTABLE R30 K100 [{"Size"}]
  LOADK R31 K9 ["createStyleSheet"]
  SETTABLEKS R31 R30 K99 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K10 ["SharedFlags"]
  DUPTABLE R31 K100 [{"Size"}]
  LOADK R32 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R32 R31 K99 ["Size"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K12 ["Src"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K225 ["::UICorner"]
  DUPTABLE R31 K227 [{"CornerRadius"}]
  LOADK R32 K13 ["getFFlagRibbonDensityModeStyles"]
  SETTABLEKS R32 R31 K226 ["CornerRadius"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K56 ["::UIPadding"]
  DUPTABLE R32 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R33 K62 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K57 ["PaddingLeft"]
  LOADK R33 K62 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K58 ["PaddingRight"]
  LOADK R33 K62 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K59 ["PaddingTop"]
  LOADK R33 K62 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K60 ["PaddingBottom"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K14 ["Resources"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K225 ["::UICorner"]
  DUPTABLE R32 K227 [{"CornerRadius"}]
  LOADK R33 K13 ["getFFlagRibbonDensityModeStyles"]
  SETTABLEKS R33 R32 K226 ["CornerRadius"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K12 ["Src"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K56 ["::UIPadding"]
  DUPTABLE R37 K179 [{"PaddingLeft"}]
  LOADK R38 K15 ["DEPRECATED_PluginStyles"]
  SETTABLEKS R38 R37 K57 ["PaddingLeft"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K225 ["::UICorner"]
  DUPTABLE R38 K227 [{"CornerRadius"}]
  LOADK R39 K13 ["getFFlagRibbonDensityModeStyles"]
  SETTABLEKS R39 R38 K226 ["CornerRadius"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K206 [".State-Disabled"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K16 ["TextLabel, TextButton, TextBox"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K17 ["Font"]
  DUPTABLE R37 K275 [{"ImageTransparency"}]
  LOADK R38 K20 [".Role-Surface"]
  SETTABLEKS R38 R37 K274 ["ImageTransparency"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K209 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K21 ["BackgroundTransparency"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 2
  MOVE R36 R2
  LOADK R37 K210 [":hover"]
  DUPTABLE R38 K278 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R39 K213 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R39 R38 K21 ["BackgroundTransparency"]
  LOADK R39 K212 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R39 R38 K27 ["BackgroundColor3"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K214 [":pressed"]
  DUPTABLE R39 K278 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R40 K216 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R40 R39 K21 ["BackgroundTransparency"]
  LOADK R40 K215 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R40 R39 K27 ["BackgroundColor3"]
  CALL R37 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K202 [".State-Selected"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K16 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R35 K278 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K205 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R36 R35 K21 ["BackgroundTransparency"]
  LOADK R36 K204 ["$SemanticColorStatesSelected"]
  SETTABLEKS R36 R35 K27 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K24 ["$Transparency100"]
  DUPTABLE R36 K281 [{"BackgroundTransparency"}]
  LOADK R37 K26 [".Role-Surface100"]
  SETTABLEKS R37 R36 K21 ["BackgroundTransparency"]
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K27 ["BackgroundColor3"]
  DUPTABLE R40 K286 [{"Color", "Rotation", "Transparency"}]
  LOADK R41 K31 ["$SemanticColorSurface200"]
  SETTABLEKS R41 R40 K284 ["Color"]
  LOADK R41 K32 [".Role-Text"]
  SETTABLEKS R41 R40 K285 ["Rotation"]
  LOADK R41 K33 ["TextColor3"]
  SETTABLEKS R41 R40 K187 ["Transparency"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K34 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  DUPTABLE R37 K281 [{"BackgroundTransparency"}]
  LOADK R38 K26 [".Role-Surface100"]
  SETTABLEKS R38 R37 K21 ["BackgroundTransparency"]
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K27 ["BackgroundColor3"]
  DUPTABLE R41 K286 [{"Color", "Rotation", "Transparency"}]
  LOADK R42 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R42 R41 K284 ["Color"]
  LOADK R42 K36 [".Text-Label"]
  SETTABLEKS R42 R41 K285 ["Rotation"]
  LOADK R42 K37 ["TextSize"]
  SETTABLEKS R42 R41 K187 ["Transparency"]
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K38 [{"Font", "TextSize"}]
  DUPTABLE R33 K295 [{"LayoutOrder", "Size"}]
  LOADN R34 1
  SETTABLEKS R34 R33 K54 ["LayoutOrder"]
  GETIMPORT R34 K103 [UDim2.new]
  LOADN R35 0
  LOADN R36 4
  LOADN R37 0
  LOADN R38 32
  CALL R34 4 1
  SETTABLEKS R34 R33 K99 ["Size"]
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K163 [".Small"]
  DUPTABLE R37 K100 [{"Size"}]
  GETIMPORT R38 K103 [UDim2.new]
  LOADN R39 0
  LOADN R40 4
  LOADN R41 0
  LOADN R42 24
  CALL R38 4 1
  SETTABLEKS R38 R37 K99 ["Size"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K40 ["$ContentTextFontSize"]
  DUPTABLE R38 K297 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R39 K156 [Vector2.new]
  LOADN R40 1
  LOADN R41 1
  CALL R39 2 1
  SETTABLEKS R39 R38 K152 ["AnchorPoint"]
  LOADB R39 0
  SETTABLEKS R39 R38 K251 ["AutoButtonColor"]
  GETIMPORT R39 K240 [UDim2.fromScale]
  LOADN R40 1
  LOADN R41 1
  CALL R39 2 1
  SETTABLEKS R39 R38 K153 ["Position"]
  LOADK R39 K254 [""]
  SETTABLEKS R39 R38 K252 ["Text"]
  LOADN R39 1
  SETTABLEKS R39 R38 K37 ["TextSize"]
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K42 ["$TitleTextFontWeight"]
  DUPTABLE R42 K300 [{"Image", "Size"}]
  LOADK R43 K45 ["::UIListLayout"]
  SETTABLEKS R43 R42 K299 ["Image"]
  GETIMPORT R43 K303 [UDim2.fromOffset]
  LOADN R44 4
  LOADN R45 4
  CALL R43 2 1
  SETTABLEKS R43 R42 K99 ["Size"]
  NEWTABLE R43 0 1
  MOVE R44 R2
  LOADK R45 K206 [".State-Disabled"]
  DUPTABLE R46 K275 [{"ImageTransparency"}]
  LOADK R47 K20 [".Role-Surface"]
  SETTABLEKS R47 R46 K274 ["ImageTransparency"]
  CALL R44 2 -1
  SETLIST R43 R44 -1 [1]
  CALL R40 3 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K48 ["SortOrder"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K45 ["::UIListLayout"]
  DUPTABLE R24 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K46 ["FillDirection"]
  LOADK R25 K77 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K47 ["Padding"]
  GETIMPORT R25 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K48 ["SortOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K49 [{"FillDirection", "Padding", "SortOrder"}]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K50 ["Enum"]
  DUPTABLE R29 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R30 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K46 ["FillDirection"]
  LOADK R30 K62 ["$GlobalSpace50"]
  SETTABLEKS R30 R29 K47 ["Padding"]
  GETIMPORT R30 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K48 ["SortOrder"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K51 ["Horizontal"]
  DUPTABLE R21 K308 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K251 ["AutoButtonColor"]
  LOADK R22 K254 [""]
  SETTABLEKS R22 R21 K252 ["Text"]
  GETIMPORT R22 K303 [UDim2.fromOffset]
  LOADN R23 0
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K99 ["Size"]
  NEWTABLE R22 0 6
  MOVE R23 R2
  LOADK R24 K225 ["::UICorner"]
  DUPTABLE R25 K227 [{"CornerRadius"}]
  LOADK R26 K13 ["getFFlagRibbonDensityModeStyles"]
  SETTABLEKS R26 R25 K226 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K53 ["$RibbonContentsPadding"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K54 ["LayoutOrder"]
  DUPTABLE R30 K311 [{"LayoutOrder"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K54 ["LayoutOrder"]
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K8 ["createStyleRule"]
  DUPTABLE R34 K100 [{"Size"}]
  LOADK R35 K9 ["createStyleSheet"]
  SETTABLEKS R35 R34 K99 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K10 ["SharedFlags"]
  DUPTABLE R35 K100 [{"Size"}]
  LOADK R36 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R36 R35 K99 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K56 ["::UIPadding"]
  DUPTABLE R36 K311 [{"LayoutOrder"}]
  LOADN R37 3
  SETTABLEKS R37 R36 K54 ["LayoutOrder"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K57 ["PaddingLeft"]
  DUPTABLE R31 K314 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R32 K130 ["$FontWeight700"]
  SETTABLEKS R32 R31 K17 ["Font"]
  LOADK R32 K59 ["PaddingTop"]
  SETTABLEKS R32 R31 K37 ["TextSize"]
  LOADN R32 2
  SETTABLEKS R32 R31 K54 ["LayoutOrder"]
  LOADK R32 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R32 R31 K33 ["TextColor3"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K163 [".Small"]
  DUPTABLE R35 K316 [{"TextSize"}]
  LOADK R36 K199 ["$FontSize50"]
  SETTABLEKS R36 R35 K37 ["TextSize"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K165 [".Large"]
  DUPTABLE R36 K316 [{"TextSize"}]
  LOADK R37 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R37 R36 K37 ["TextSize"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K206 [".State-Disabled"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K62 ["$GlobalSpace50"]
  DUPTABLE R31 K275 [{"ImageTransparency"}]
  LOADK R32 K20 [".Role-Surface"]
  SETTABLEKS R32 R31 K274 ["ImageTransparency"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K63 [".Role-Row"]
  DUPTABLE R32 K207 [{"TextColor3"}]
  LOADK R33 K208 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K33 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K209 [".State-Default"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K64 ["$RowSpacingDefault"]
  DUPTABLE R32 K278 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R33 K213 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R33 R32 K21 ["BackgroundTransparency"]
  LOADK R33 K212 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R33 R32 K27 ["BackgroundColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K65 [".ConvertibleToColumn"]
  DUPTABLE R33 K278 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R34 K216 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R34 R33 K21 ["BackgroundTransparency"]
  LOADK R34 K215 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R34 R33 K27 ["BackgroundColor3"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K66 ["$ConvertibleRowToColumnFillDirection"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K67 ["$ConvertibleRowToColumnPadding"]
  DUPTABLE R33 K326 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R34 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R34 R33 K324 ["ApplyStrokeMode"]
  LOADK R34 K97 ["$SemanticColorDivider"]
  SETTABLEKS R34 R33 K284 ["Color"]
  LOADK R34 K91 ["$BorderMedium"]
  SETTABLEKS R34 R33 K325 ["Thickness"]
  LOADK R34 K160 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R34 R33 K187 ["Transparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K73 [{"Padding"}]
  DUPTABLE R30 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K74 ["$ColumnSpacingMedium"]
  SETTABLEKS R31 R30 K27 ["BackgroundColor3"]
  LOADK R31 K26 [".Role-Surface100"]
  SETTABLEKS R31 R30 K21 ["BackgroundTransparency"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K209 [".State-Default"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 2
  MOVE R36 R2
  LOADK R37 K64 ["$RowSpacingDefault"]
  DUPTABLE R38 K278 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R39 K75 [".X-RowSpace50"]
  SETTABLEKS R39 R38 K21 ["BackgroundTransparency"]
  LOADK R39 K76 [".X-RowSpace100"]
  SETTABLEKS R39 R38 K27 ["BackgroundColor3"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K65 [".ConvertibleToColumn"]
  DUPTABLE R39 K278 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R40 K77 ["$GlobalSpace100"]
  SETTABLEKS R40 R39 K21 ["BackgroundTransparency"]
  LOADK R40 K78 [".X-RowSpace200"]
  SETTABLEKS R40 R39 K27 ["BackgroundColor3"]
  CALL R37 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K63 [".Role-Row"]
  DUPTABLE R35 K207 [{"TextColor3"}]
  LOADK R36 K128 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R36 R35 K33 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K79 ["$GlobalSpace200"]
  DUPTABLE R22 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R23 K24 ["$Transparency100"]
  SETTABLEKS R23 R22 K21 ["BackgroundTransparency"]
  LOADK R23 K25 ["$BorderNone"]
  SETTABLEKS R23 R22 K22 ["BorderSizePixel"]
  NEWTABLE R23 0 7
  MOVE R24 R2
  LOADK R25 K80 [".X-Pad150 ::UIPadding"]
  DUPTABLE R26 K337 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R27 0
  SETTABLEKS R27 R26 K251 ["AutoButtonColor"]
  LOADK R27 K24 ["$Transparency100"]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  LOADK R27 K25 ["$BorderNone"]
  SETTABLEKS R27 R26 K22 ["BorderSizePixel"]
  LOADN R27 1
  SETTABLEKS R27 R26 K54 ["LayoutOrder"]
  LOADK R27 K254 [""]
  SETTABLEKS R27 R26 K252 ["Text"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K82 ["$GlobalSpace150"]
  DUPTABLE R30 K339 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R31 K24 ["$Transparency100"]
  SETTABLEKS R31 R30 K21 ["BackgroundTransparency"]
  LOADK R31 K25 ["$BorderNone"]
  SETTABLEKS R31 R30 K22 ["BorderSizePixel"]
  LOADK R31 K19 ["$FontWeight400"]
  SETTABLEKS R31 R30 K17 ["Font"]
  LOADN R31 2
  SETTABLEKS R31 R30 K54 ["LayoutOrder"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K84 ["BorderColor3"]
  DUPTABLE R31 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R32 K24 ["$Transparency100"]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  LOADK R32 K25 ["$BorderNone"]
  SETTABLEKS R32 R31 K22 ["BorderSizePixel"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K85 ["BorderMode"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K45 ["::UIListLayout"]
  DUPTABLE R35 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R36 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K46 ["FillDirection"]
  LOADK R36 K77 ["$GlobalSpace100"]
  SETTABLEKS R36 R35 K47 ["Padding"]
  GETIMPORT R36 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K48 ["SortOrder"]
  GETIMPORT R36 K177 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K171 ["VerticalAlignment"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K84 ["BorderColor3"]
  DUPTABLE R36 K100 [{"Size"}]
  LOADK R37 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R37 R36 K99 ["Size"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K163 [".Small"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K82 ["$GlobalSpace150"]
  DUPTABLE R36 K316 [{"TextSize"}]
  LOADK R37 K199 ["$FontSize50"]
  SETTABLEKS R37 R36 K37 ["TextSize"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K87 ["$DEPRECATED_MainBackground"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K82 ["$GlobalSpace150"]
  DUPTABLE R37 K316 [{"TextSize"}]
  LOADK R38 K59 ["PaddingTop"]
  SETTABLEKS R38 R37 K37 ["TextSize"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K165 [".Large"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 3
  MOVE R36 R2
  LOADK R37 K45 ["::UIListLayout"]
  DUPTABLE R38 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K46 ["FillDirection"]
  LOADK R39 K82 ["$GlobalSpace150"]
  SETTABLEKS R39 R38 K47 ["Padding"]
  GETIMPORT R39 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K48 ["SortOrder"]
  GETIMPORT R39 K177 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K171 ["VerticalAlignment"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K84 ["BorderColor3"]
  DUPTABLE R39 K100 [{"Size"}]
  LOADK R40 K9 ["createStyleSheet"]
  SETTABLEKS R40 R39 K99 ["Size"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K82 ["$GlobalSpace150"]
  DUPTABLE R40 K316 [{"TextSize"}]
  LOADK R41 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R41 R40 K37 ["TextSize"]
  CALL R38 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K209 [".State-Default"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 4
  MOVE R33 R2
  LOADK R34 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K88 ["$SemanticColorDividerTransparency88"]
  DUPTABLE R39 K345 [{"Image"}]
  LOADK R40 K90 [Enum.BorderMode.Inset]
  SETTABLEKS R40 R39 K299 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K91 ["$BorderMedium"]
  DUPTABLE R40 K207 [{"TextColor3"}]
  LOADK R41 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R41 R40 K33 ["TextColor3"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K92 ["$MenuPadding"]
  DUPTABLE R36 K345 [{"Image"}]
  LOADK R37 K93 ["> #Menu ::UIListLayout"]
  SETTABLEKS R37 R36 K299 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K94 ["$MenuColumnSpacing"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R41 0 0
  NEWTABLE R42 0 1
  MOVE R43 R2
  LOADK R44 K84 ["BorderColor3"]
  DUPTABLE R45 K345 [{"Image"}]
  LOADK R46 K95 [".Role-Tooltip"]
  SETTABLEKS R46 R45 K299 ["Image"]
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K96 ["$SemanticColorSurface300Inverse"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R42 0 0
  NEWTABLE R43 0 1
  MOVE R44 R2
  LOADK R45 K84 ["BorderColor3"]
  DUPTABLE R46 K345 [{"Image"}]
  LOADK R47 K97 ["$SemanticColorDivider"]
  SETTABLEKS R47 R46 K299 ["Image"]
  CALL R44 2 -1
  SETLIST R43 R44 -1 [1]
  CALL R40 3 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K206 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 2
  MOVE R38 R2
  LOADK R39 K84 ["BorderColor3"]
  DUPTABLE R40 K345 [{"Image"}]
  LOADK R41 K98 ["> #Wrapper"]
  SETTABLEKS R41 R40 K299 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K82 ["$GlobalSpace150"]
  DUPTABLE R41 K207 [{"TextColor3"}]
  LOADK R42 K208 ["$SemanticColorContentDisabled"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K94 ["$MenuColumnSpacing"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R41 0 0
  NEWTABLE R42 0 1
  MOVE R43 R2
  LOADK R44 K84 ["BorderColor3"]
  DUPTABLE R45 K345 [{"Image"}]
  LOADK R46 K99 ["Size"]
  SETTABLEKS R46 R45 K299 ["Image"]
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K96 ["$SemanticColorSurface300Inverse"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K80 [".X-Pad150 ::UIPadding"]
  NEWTABLE R42 0 0
  NEWTABLE R43 0 1
  MOVE R44 R2
  LOADK R45 K84 ["BorderColor3"]
  DUPTABLE R46 K345 [{"Image"}]
  LOADK R47 K100 [{"Size"}]
  SETTABLEKS R47 R46 K299 ["Image"]
  CALL R44 2 -1
  SETLIST R43 R44 -1 [1]
  CALL R40 3 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K101 ["UDim2"]
  DUPTABLE R23 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R24 K24 ["$Transparency100"]
  SETTABLEKS R24 R23 K21 ["BackgroundTransparency"]
  LOADK R24 K25 ["$BorderNone"]
  SETTABLEKS R24 R23 K22 ["BorderSizePixel"]
  NEWTABLE R24 0 9
  MOVE R25 R2
  LOADK R26 K102 ["new"]
  DUPTABLE R27 K337 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R28 0
  SETTABLEKS R28 R27 K251 ["AutoButtonColor"]
  LOADK R28 K24 ["$Transparency100"]
  SETTABLEKS R28 R27 K21 ["BackgroundTransparency"]
  LOADK R28 K25 ["$BorderNone"]
  SETTABLEKS R28 R27 K22 ["BorderSizePixel"]
  LOADN R28 1
  SETTABLEKS R28 R27 K54 ["LayoutOrder"]
  LOADK R28 K254 [""]
  SETTABLEKS R28 R27 K252 ["Text"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K103 [UDim2.new]
  DUPTABLE R28 K339 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R29 K24 ["$Transparency100"]
  SETTABLEKS R29 R28 K21 ["BackgroundTransparency"]
  LOADK R29 K25 ["$BorderNone"]
  SETTABLEKS R29 R28 K22 ["BorderSizePixel"]
  LOADK R29 K19 ["$FontWeight400"]
  SETTABLEKS R29 R28 K17 ["Font"]
  LOADN R29 2
  SETTABLEKS R29 R28 K54 ["LayoutOrder"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K104 ["::UISizeConstraint"]
  DUPTABLE R29 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R30 K24 ["$Transparency100"]
  SETTABLEKS R30 R29 K21 ["BackgroundTransparency"]
  LOADK R30 K25 ["$BorderNone"]
  SETTABLEKS R30 R29 K22 ["BorderSizePixel"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K85 ["BorderMode"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K102 ["new"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K45 ["::UIListLayout"]
  DUPTABLE R38 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K46 ["FillDirection"]
  LOADK R39 K77 ["$GlobalSpace100"]
  SETTABLEKS R39 R38 K47 ["Padding"]
  GETIMPORT R39 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K48 ["SortOrder"]
  GETIMPORT R39 K177 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K171 ["VerticalAlignment"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K104 ["::UISizeConstraint"]
  DUPTABLE R35 K100 [{"Size"}]
  LOADK R36 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R36 R35 K99 ["Size"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K163 [".Small"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K103 [UDim2.new]
  DUPTABLE R35 K316 [{"TextSize"}]
  LOADK R36 K199 ["$FontSize50"]
  SETTABLEKS R36 R35 K37 ["TextSize"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K87 ["$DEPRECATED_MainBackground"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K103 [UDim2.new]
  DUPTABLE R36 K316 [{"TextSize"}]
  LOADK R37 K59 ["PaddingTop"]
  SETTABLEKS R37 R36 K37 ["TextSize"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K165 [".Large"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 3
  MOVE R35 R2
  LOADK R36 K102 ["new"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 1
  MOVE R39 R2
  LOADK R40 K45 ["::UIListLayout"]
  DUPTABLE R41 K342 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R42 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R42 R41 K46 ["FillDirection"]
  LOADK R42 K82 ["$GlobalSpace150"]
  SETTABLEKS R42 R41 K47 ["Padding"]
  GETIMPORT R42 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R42 R41 K48 ["SortOrder"]
  GETIMPORT R42 K177 [Enum.VerticalAlignment.Center]
  SETTABLEKS R42 R41 K171 ["VerticalAlignment"]
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K104 ["::UISizeConstraint"]
  DUPTABLE R38 K100 [{"Size"}]
  LOADK R39 K9 ["createStyleSheet"]
  SETTABLEKS R39 R38 K99 ["Size"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K103 [UDim2.new]
  DUPTABLE R39 K316 [{"TextSize"}]
  LOADK R40 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R40 R39 K37 ["TextSize"]
  CALL R37 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K209 [".State-Default"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 4
  MOVE R36 R2
  LOADK R37 K104 ["::UISizeConstraint"]
  DUPTABLE R38 K345 [{"Image"}]
  LOADK R39 K105 ["MaxSize"]
  SETTABLEKS R39 R38 K299 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K106 [{"MaxSize"}]
  DUPTABLE R39 K345 [{"Image"}]
  LOADK R40 K107 ["$TooltipMaxSize"]
  SETTABLEKS R40 R39 K299 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K108 ["$TooltipContentSpacing"]
  DUPTABLE R40 K345 [{"Image"}]
  LOADK R41 K109 ["> #Content"]
  SETTABLEKS R41 R40 K299 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K103 [UDim2.new]
  DUPTABLE R41 K207 [{"TextColor3"}]
  LOADK R42 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K206 [".State-Disabled"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 3
  MOVE R37 R2
  LOADK R38 K104 ["::UISizeConstraint"]
  DUPTABLE R39 K345 [{"Image"}]
  LOADK R40 K110 ["$TooltipTextSpacing"]
  SETTABLEKS R40 R39 K299 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K108 ["$TooltipContentSpacing"]
  DUPTABLE R40 K345 [{"Image"}]
  LOADK R41 K111 ["> #TitleFrame"]
  SETTABLEKS R41 R40 K299 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K103 [UDim2.new]
  DUPTABLE R41 K207 [{"TextColor3"}]
  LOADK R42 K208 ["$SemanticColorContentDisabled"]
  SETTABLEKS R42 R41 K33 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K112 [{"FillDirection", "SortOrder"}]
  DUPTABLE R24 K369 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K251 ["AutoButtonColor"]
  LOADK R25 K25 ["$BorderNone"]
  SETTABLEKS R25 R24 K22 ["BorderSizePixel"]
  LOADK R25 K24 ["$Transparency100"]
  SETTABLEKS R25 R24 K21 ["BackgroundTransparency"]
  LOADK R25 K254 [""]
  SETTABLEKS R25 R24 K252 ["Text"]
  NEWTABLE R25 0 8
  MOVE R26 R2
  LOADK R27 K56 ["::UIPadding"]
  DUPTABLE R28 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R29 K114 ["::UIFlexItem"]
  SETTABLEKS R29 R28 K57 ["PaddingLeft"]
  LOADK R29 K114 ["::UIFlexItem"]
  SETTABLEKS R29 R28 K58 ["PaddingRight"]
  LOADK R29 K115 ["FlexMode"]
  SETTABLEKS R29 R28 K59 ["PaddingTop"]
  LOADK R29 K115 ["FlexMode"]
  SETTABLEKS R29 R28 K60 ["PaddingBottom"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K225 ["::UICorner"]
  DUPTABLE R29 K227 [{"CornerRadius"}]
  LOADK R30 K13 ["getFFlagRibbonDensityModeStyles"]
  SETTABLEKS R30 R29 K226 ["CornerRadius"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K116 [{"FlexMode"}]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 4
  MOVE R32 R2
  LOADK R33 K45 ["::UIListLayout"]
  DUPTABLE R34 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R35 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K46 ["FillDirection"]
  LOADK R35 K117 ["UIFlexMode"]
  SETTABLEKS R35 R34 K47 ["Padding"]
  GETIMPORT R35 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K48 ["SortOrder"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K118 ["Fill"]
  DUPTABLE R35 K375 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R36 K25 ["$BorderNone"]
  SETTABLEKS R36 R35 K22 ["BorderSizePixel"]
  LOADK R36 K24 ["$Transparency100"]
  SETTABLEKS R36 R35 K21 ["BackgroundTransparency"]
  LOADN R36 1
  SETTABLEKS R36 R35 K54 ["LayoutOrder"]
  LOADK R36 K9 ["createStyleSheet"]
  SETTABLEKS R36 R35 K99 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K120 ["> #Text"]
  DUPTABLE R36 K376 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R37 K24 ["$Transparency100"]
  SETTABLEKS R37 R36 K21 ["BackgroundTransparency"]
  LOADK R37 K19 ["$FontWeight400"]
  SETTABLEKS R37 R36 K17 ["Font"]
  LOADK R37 K199 ["$FontSize50"]
  SETTABLEKS R37 R36 K37 ["TextSize"]
  LOADN R37 2
  SETTABLEKS R37 R36 K54 ["LayoutOrder"]
  LOADK R37 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K33 ["TextColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K121 ["TextWrapped"]
  DUPTABLE R37 K295 [{"LayoutOrder", "Size"}]
  LOADN R38 3
  SETTABLEKS R38 R37 K54 ["LayoutOrder"]
  LOADK R38 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R38 R37 K99 ["Size"]
  CALL R35 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K122 ["TextXAlignment"]
  DUPTABLE R31 K379 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R32 K156 [Vector2.new]
  LOADN R33 1
  LOADK R34 K249 [0.5]
  CALL R32 2 1
  SETTABLEKS R32 R31 K152 ["AnchorPoint"]
  GETIMPORT R32 K240 [UDim2.fromScale]
  LOADN R33 1
  LOADK R34 K249 [0.5]
  CALL R32 2 1
  SETTABLEKS R32 R31 K153 ["Position"]
  LOADK R32 K25 ["$BorderNone"]
  SETTABLEKS R32 R31 K22 ["BorderSizePixel"]
  LOADK R32 K24 ["$Transparency100"]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  LOADK R32 K124 ["Left"]
  SETTABLEKS R32 R31 K299 ["Image"]
  LOADN R32 3
  SETTABLEKS R32 R31 K54 ["LayoutOrder"]
  LOADK R32 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R32 R31 K99 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K125 [Enum.TextXAlignment.Left]
  DUPTABLE R32 K100 [{"Size"}]
  LOADK R33 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R33 R32 K99 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K126 [">> TextLabel"]
  DUPTABLE R33 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K127 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R34 R33 K27 ["BackgroundColor3"]
  LOADK R34 K128 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R34 R33 K21 ["BackgroundTransparency"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K202 [".State-Selected"]
  DUPTABLE R34 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R35 K204 ["$SemanticColorStatesSelected"]
  SETTABLEKS R35 R34 K27 ["BackgroundColor3"]
  LOADK R35 K205 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R35 R34 K21 ["BackgroundTransparency"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K206 [".State-Disabled"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K116 [{"FlexMode"}]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 2
  MOVE R41 R2
  LOADK R42 K118 ["Fill"]
  DUPTABLE R43 K275 [{"ImageTransparency"}]
  LOADK R44 K20 [".Role-Surface"]
  SETTABLEKS R44 R43 K274 ["ImageTransparency"]
  CALL R41 2 1
  MOVE R42 R2
  LOADK R43 K120 ["> #Text"]
  DUPTABLE R44 K207 [{"TextColor3"}]
  LOADK R45 K208 ["$SemanticColorContentDisabled"]
  SETTABLEKS R45 R44 K33 ["TextColor3"]
  CALL R42 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  SETLIST R6 R7 16 [17]
  MOVE R7 R2
  LOADK R8 K129 [">> #Title"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K206 [".State-Disabled"]
  DUPTABLE R13 K275 [{"ImageTransparency"}]
  LOADK R14 K20 [".Role-Surface"]
  SETTABLEKS R14 R13 K274 ["ImageTransparency"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K130 ["$FontWeight700"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K56 ["::UIPadding"]
  DUPTABLE R14 K387 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  LOADK R15 K132 ["> #Scroller"]
  SETTABLEKS R15 R14 K57 ["PaddingLeft"]
  LOADK R15 K132 ["> #Scroller"]
  SETTABLEKS R15 R14 K59 ["PaddingTop"]
  LOADK R15 K132 ["> #Scroller"]
  SETTABLEKS R15 R14 K60 ["PaddingBottom"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K133 ["AutomaticCanvasSize"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 7
  MOVE R13 R2
  LOADK R14 K67 ["$ConvertibleRowToColumnPadding"]
  DUPTABLE R15 K390 [{"Thickness"}]
  LOADK R16 K25 ["$BorderNone"]
  SETTABLEKS R16 R15 K325 ["Thickness"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K225 ["::UICorner"]
  DUPTABLE R16 K227 [{"CornerRadius"}]
  LOADK R17 K135 ["ScrollBarThickness"]
  SETTABLEKS R17 R16 K226 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K136 ["HorizontalScrollBarInset"]
  DUPTABLE R17 K393 [{"TextSize", "TextXAlignment", "TextTruncate"}]
  LOADK R18 K199 ["$FontSize50"]
  SETTABLEKS R18 R17 K37 ["TextSize"]
  GETIMPORT R18 K125 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K122 ["TextXAlignment"]
  GETIMPORT R18 K201 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R18 R17 K195 ["TextTruncate"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K56 ["::UIPadding"]
  DUPTABLE R21 K167 [{"PaddingLeft", "PaddingRight"}]
  LOADK R22 K62 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K57 ["PaddingLeft"]
  LOADK R22 K62 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K58 ["PaddingRight"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K209 [".State-Default"]
  DUPTABLE R18 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K138 ["AutomaticSize"]
  SETTABLEKS R19 R18 K27 ["BackgroundColor3"]
  LOADK R19 K139 ["XY"]
  SETTABLEKS R19 R18 K21 ["BackgroundTransparency"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K136 ["HorizontalScrollBarInset"]
  DUPTABLE R22 K207 [{"TextColor3"}]
  LOADK R23 K198 ["$SemanticColorContentMuted"]
  SETTABLEKS R23 R22 K33 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K140 [Enum.AutomaticSize.XY]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K67 ["$ConvertibleRowToColumnPadding"]
  DUPTABLE R23 K397 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R24 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K324 ["ApplyStrokeMode"]
  LOADK R24 K142 [Enum.ScrollingDirection.X]
  SETTABLEKS R24 R23 K284 ["Color"]
  LOADK R24 K91 ["$BorderMedium"]
  SETTABLEKS R24 R23 K325 ["Thickness"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K136 ["HorizontalScrollBarInset"]
  DUPTABLE R24 K207 [{"TextColor3"}]
  LOADK R25 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R25 R24 K33 ["TextColor3"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K143 ["ScrollBarInset"]
  DUPTABLE R20 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K144 ["None"]
  SETTABLEKS R21 R20 K27 ["BackgroundColor3"]
  LOADK R21 K145 [Enum.ScrollBarInset.None]
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K136 ["HorizontalScrollBarInset"]
  DUPTABLE R24 K207 [{"TextColor3"}]
  LOADK R25 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R25 R24 K33 ["TextColor3"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K206 [".State-Disabled"]
  DUPTABLE R21 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K138 ["AutomaticSize"]
  SETTABLEKS R22 R21 K27 ["BackgroundColor3"]
  LOADK R22 K139 ["XY"]
  SETTABLEKS R22 R21 K21 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K136 ["HorizontalScrollBarInset"]
  DUPTABLE R25 K207 [{"TextColor3"}]
  LOADK R26 K208 ["$SemanticColorContentDisabled"]
  SETTABLEKS R26 R25 K33 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K146 ["$RibbonScrollerSize"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K40 ["$ContentTextFontSize"]
  DUPTABLE R16 K100 [{"Size"}]
  GETIMPORT R17 K303 [UDim2.fromOffset]
  LOADN R18 16
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K99 ["Size"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K147 ["> #LeftGradient"]
  DUPTABLE R20 K100 [{"Size"}]
  GETIMPORT R21 K303 [UDim2.fromOffset]
  LOADN R22 16
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K99 ["Size"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K209 [".State-Default"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K148 ["ZIndex"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K149 [{"Size", "ZIndex"}]
  DUPTABLE R25 K345 [{"Image"}]
  LOADK R26 K150 ["$TabGradientSize"]
  SETTABLEKS R26 R25 K299 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K151 ["> #RightGradient"]
  DUPTABLE R26 K345 [{"Image"}]
  LOADK R27 K152 ["AnchorPoint"]
  SETTABLEKS R27 R26 K299 ["Image"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K153 ["Position"]
  DUPTABLE R27 K345 [{"Image"}]
  LOADK R28 K154 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  SETTABLEKS R28 R27 K299 ["Image"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K155 ["Vector2"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 3
  MOVE R24 R2
  LOADK R25 K149 [{"Size", "ZIndex"}]
  DUPTABLE R26 K345 [{"Image"}]
  LOADK R27 K156 [Vector2.new]
  SETTABLEKS R27 R26 K299 ["Image"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K151 ["> #RightGradient"]
  DUPTABLE R27 K345 [{"Image"}]
  LOADK R28 K157 [".Role-DividerH"]
  SETTABLEKS R28 R27 K299 ["Image"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K153 ["Position"]
  DUPTABLE R28 K345 [{"Image"}]
  LOADK R29 K158 ["> Frame"]
  SETTABLEKS R29 R28 K299 ["Image"]
  CALL R26 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K206 [".State-Disabled"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K148 ["ZIndex"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R26 K345 [{"Image"}]
  LOADK R27 K154 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  SETTABLEKS R27 R26 K299 ["Image"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K155 ["Vector2"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R27 K345 [{"Image"}]
  LOADK R28 K158 ["> Frame"]
  SETTABLEKS R28 R27 K299 ["Image"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K160 ["$SemanticColorDividerTransparency"]
  DUPTABLE R13 K281 [{"BackgroundTransparency"}]
  LOADK R14 K24 ["$Transparency100"]
  SETTABLEKS R14 R13 K21 ["BackgroundTransparency"]
  NEWTABLE R14 0 3
  MOVE R15 R2
  LOADK R16 K161 [".Role-DividerV"]
  DUPTABLE R17 K227 [{"CornerRadius"}]
  LOADK R18 K13 ["getFFlagRibbonDensityModeStyles"]
  SETTABLEKS R18 R17 K226 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K162 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R18 K326 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R19 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R19 R18 K324 ["ApplyStrokeMode"]
  LOADK R19 K97 ["$SemanticColorDivider"]
  SETTABLEKS R19 R18 K284 ["Color"]
  LOADK R19 K91 ["$BorderMedium"]
  SETTABLEKS R19 R18 K325 ["Thickness"]
  LOADK R19 K160 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R19 R18 K187 ["Transparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K163 [".Small"]
  DUPTABLE R19 K281 [{"BackgroundTransparency"}]
  LOADK R20 K24 ["$Transparency100"]
  SETTABLEKS R20 R19 K21 ["BackgroundTransparency"]
  NEWTABLE R20 0 4
  MOVE R21 R2
  LOADK R22 K161 [".Role-DividerV"]
  DUPTABLE R23 K227 [{"CornerRadius"}]
  LOADK R24 K13 ["getFFlagRibbonDensityModeStyles"]
  SETTABLEKS R24 R23 K226 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K164 ["$SmallSeparator"]
  DUPTABLE R24 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R25 K24 ["$Transparency100"]
  SETTABLEKS R25 R24 K21 ["BackgroundTransparency"]
  LOADK R25 K25 ["$BorderNone"]
  SETTABLEKS R25 R24 K22 ["BorderSizePixel"]
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K210 [":hover"]
  DUPTABLE R28 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K212 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R29 R28 K27 ["BackgroundColor3"]
  LOADK R29 K213 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R29 R28 K21 ["BackgroundTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K165 [".Large"]
  DUPTABLE R29 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K215 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R30 R29 K27 ["BackgroundColor3"]
  LOADK R30 K216 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R30 R29 K21 ["BackgroundTransparency"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K166 ["$LargeSeparator"]
  DUPTABLE R25 K423 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
  GETIMPORT R26 K303 [UDim2.fromOffset]
  LOADN R27 82
  LOADN R28 24
  CALL R26 2 1
  SETTABLEKS R26 R25 K99 ["Size"]
  LOADK R26 K199 ["$FontSize50"]
  SETTABLEKS R26 R25 K37 ["TextSize"]
  LOADK R26 K197 ["$FontWeight600"]
  SETTABLEKS R26 R25 K17 ["Font"]
  LOADB R26 0
  SETTABLEKS R26 R25 K251 ["AutoButtonColor"]
  LOADK R26 K25 ["$BorderNone"]
  SETTABLEKS R26 R25 K22 ["BorderSizePixel"]
  NEWTABLE R26 0 3
  MOVE R27 R2
  LOADK R28 K56 ["::UIPadding"]
  DUPTABLE R29 K167 [{"PaddingLeft", "PaddingRight"}]
  LOADK R30 K82 ["$GlobalSpace150"]
  SETTABLEKS R30 R29 K57 ["PaddingLeft"]
  LOADK R30 K82 ["$GlobalSpace150"]
  SETTABLEKS R30 R29 K58 ["PaddingRight"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K209 [".State-Default"]
  DUPTABLE R30 K424 [{"BackgroundTransparency", "TextColor3"}]
  LOADK R31 K24 ["$Transparency100"]
  SETTABLEKS R31 R30 K21 ["BackgroundTransparency"]
  LOADK R31 K198 ["$SemanticColorContentMuted"]
  SETTABLEKS R31 R30 K33 ["TextColor3"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K202 [".State-Selected"]
  DUPTABLE R31 K203 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R32 K204 ["$SemanticColorStatesSelected"]
  SETTABLEKS R32 R31 K27 ["BackgroundColor3"]
  LOADK R32 K205 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  LOADK R32 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R32 R31 K33 ["TextColor3"]
  CALL R29 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K169 [".Role-Mezzanine"]
  DUPTABLE R26 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R27 K97 ["$SemanticColorDivider"]
  SETTABLEKS R27 R26 K27 ["BackgroundColor3"]
  LOADK R27 K160 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  LOADK R27 K25 ["$BorderNone"]
  SETTABLEKS R27 R26 K22 ["BorderSizePixel"]
  LOADK R27 K164 ["$SmallSeparator"]
  SETTABLEKS R27 R26 K99 ["Size"]
  CALL R24 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K170 ["HorizontalFlex"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 4
  MOVE R16 R2
  LOADK R17 K45 ["::UIListLayout"]
  DUPTABLE R18 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K70 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K46 ["FillDirection"]
  LOADK R19 K77 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K47 ["Padding"]
  GETIMPORT R19 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K48 ["SortOrder"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K56 ["::UIPadding"]
  DUPTABLE R19 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K82 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K57 ["PaddingLeft"]
  LOADK R20 K82 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K58 ["PaddingRight"]
  LOADK R20 K77 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K59 ["PaddingTop"]
  LOADK R20 K77 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K60 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K171 ["VerticalAlignment"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K45 ["::UIListLayout"]
  DUPTABLE R24 K49 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K46 ["FillDirection"]
  LOADK R25 K77 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K47 ["Padding"]
  GETIMPORT R25 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K48 ["SortOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K158 ["> Frame"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K172 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  DUPTABLE R29 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R30 K97 ["$SemanticColorDivider"]
  SETTABLEKS R30 R29 K27 ["BackgroundColor3"]
  LOADK R30 K160 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R30 R29 K21 ["BackgroundTransparency"]
  LOADK R30 K25 ["$BorderNone"]
  SETTABLEKS R30 R29 K22 ["BorderSizePixel"]
  LOADK R30 K164 ["$SmallSeparator"]
  SETTABLEKS R30 R29 K99 ["Size"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K173 ["UIFlexAlignment"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K113 ["> #Spacer"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K114 ["::UIFlexItem"]
  DUPTABLE R29 K116 [{"FlexMode"}]
  GETIMPORT R30 K119 [Enum.UIFlexMode.Fill]
  SETTABLEKS R30 R29 K115 ["FlexMode"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K174 ["SpaceBetween"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K45 ["::UIListLayout"]
  DUPTABLE R19 K432 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R20 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K46 ["FillDirection"]
  GETIMPORT R20 K433 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K431 ["HorizontalAlignment"]
  GETIMPORT R20 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K48 ["SortOrder"]
  GETIMPORT R20 K177 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K171 ["VerticalAlignment"]
  LOADK R20 K178 [">> .LeftMezzControls"]
  SETTABLEKS R20 R19 K47 ["Padding"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K1 [script]
  DUPTABLE R20 K376 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R21 K24 ["$Transparency100"]
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  LOADK R21 K19 ["$FontWeight400"]
  SETTABLEKS R21 R20 K17 ["Font"]
  LOADK R21 K179 [{"PaddingLeft"}]
  SETTABLEKS R21 R20 K37 ["TextSize"]
  LOADN R21 0
  SETTABLEKS R21 R20 K54 ["LayoutOrder"]
  LOADK R21 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K33 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K180 ["$MezzaninePadding"]
  DUPTABLE R16 K437 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R17 K440 [Color3.fromHex]
  LOADK R18 K185 [Enum.UIFlexMode.Shrink]
  CALL R17 1 1
  SETTABLEKS R17 R16 K27 ["BackgroundColor3"]
  LOADK R17 K26 [".Role-Surface100"]
  SETTABLEKS R17 R16 K21 ["BackgroundTransparency"]
  GETIMPORT R17 K303 [UDim2.fromOffset]
  LOADN R18 40
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K99 ["Size"]
  NEWTABLE R17 0 6
  MOVE R18 R2
  LOADK R19 K225 ["::UICorner"]
  DUPTABLE R20 K227 [{"CornerRadius"}]
  LOADK R21 K186 [".X-FadeLeft ::UIGradient"]
  SETTABLEKS R21 R20 K226 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K56 ["::UIPadding"]
  DUPTABLE R21 K81 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R22 K132 ["> #Scroller"]
  SETTABLEKS R22 R21 K60 ["PaddingBottom"]
  LOADK R22 K132 ["> #Scroller"]
  SETTABLEKS R22 R21 K57 ["PaddingLeft"]
  LOADK R22 K132 ["> #Scroller"]
  SETTABLEKS R22 R21 K58 ["PaddingRight"]
  LOADK R22 K132 ["> #Scroller"]
  SETTABLEKS R22 R21 K59 ["PaddingTop"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K45 ["::UIListLayout"]
  DUPTABLE R22 K443 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R23 K70 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K46 ["FillDirection"]
  GETIMPORT R23 K433 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K431 ["HorizontalAlignment"]
  GETIMPORT R23 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K48 ["SortOrder"]
  GETIMPORT R23 K177 [Enum.VerticalAlignment.Center]
  SETTABLEKS R23 R22 K171 ["VerticalAlignment"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K158 ["> Frame"]
  DUPTABLE R23 K444 [{"BackgroundColor3", "Size"}]
  LOADK R24 K189 ["NumberSequence"]
  SETTABLEKS R24 R23 K27 ["BackgroundColor3"]
  GETIMPORT R24 K303 [UDim2.fromOffset]
  LOADN R25 20
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K99 ["Size"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K225 ["::UICorner"]
  DUPTABLE R27 K227 [{"CornerRadius"}]
  LOADK R28 K186 [".X-FadeLeft ::UIGradient"]
  SETTABLEKS R28 R27 K226 ["CornerRadius"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K202 [".State-Selected"]
  DUPTABLE R24 K446 [{"BackgroundColor3"}]
  GETIMPORT R25 K440 [Color3.fromHex]
  LOADK R26 K191 ["NumberSequenceKeypoint"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K27 ["BackgroundColor3"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K45 ["::UIListLayout"]
  DUPTABLE R28 K448 [{"HorizontalAlignment"}]
  GETIMPORT R29 K450 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R29 R28 K431 ["HorizontalAlignment"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K206 [".State-Disabled"]
  DUPTABLE R25 K281 [{"BackgroundTransparency"}]
  LOADK R26 K195 ["TextTruncate"]
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K158 ["> Frame"]
  DUPTABLE R29 K281 [{"BackgroundTransparency"}]
  LOADK R30 K195 ["TextTruncate"]
  SETTABLEKS R30 R29 K21 ["BackgroundTransparency"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K196 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  DUPTABLE R17 K308 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K251 ["AutoButtonColor"]
  LOADK R18 K254 [""]
  SETTABLEKS R18 R17 K252 ["Text"]
  GETIMPORT R18 K303 [UDim2.fromOffset]
  LOADN R19 85
  LOADN R20 24
  CALL R18 2 1
  SETTABLEKS R18 R17 K99 ["Size"]
  NEWTABLE R18 0 13
  MOVE R19 R2
  LOADK R20 K225 ["::UICorner"]
  DUPTABLE R21 K227 [{"CornerRadius"}]
  LOADK R22 K197 ["$FontWeight600"]
  SETTABLEKS R22 R21 K226 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K198 ["$SemanticColorContentMuted"]
  DUPTABLE R22 K100 [{"Size"}]
  GETIMPORT R23 K303 [UDim2.fromOffset]
  LOADN R24 120
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K99 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K45 ["::UIListLayout"]
  DUPTABLE R23 K455 [{"HorizontalFlex"}]
  GETIMPORT R24 K456 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R24 R23 K170 ["HorizontalFlex"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K56 ["::UIPadding"]
  DUPTABLE R24 K61 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R25 K201 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R25 R24 K57 ["PaddingLeft"]
  LOADK R25 K202 [".State-Selected"]
  SETTABLEKS R25 R24 K58 ["PaddingRight"]
  LOADK R25 K203 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R25 R24 K59 ["PaddingTop"]
  LOADK R25 K204 ["$SemanticColorStatesSelected"]
  SETTABLEKS R25 R24 K60 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K205 ["$SemanticColorStatesSelectedTransparency"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K45 ["::UIListLayout"]
  DUPTABLE R29 K462 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
  GETIMPORT R30 K456 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R30 R29 K170 ["HorizontalFlex"]
  GETIMPORT R30 K52 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K46 ["FillDirection"]
  GETIMPORT R30 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K48 ["SortOrder"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K159 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R26 K100 [{"Size"}]
  LOADK R27 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  SETTABLEKS R27 R26 K99 ["Size"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K114 ["::UIFlexItem"]
  DUPTABLE R30 K464 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R31 K234 [Enum.UIFlexMode.Custom]
  SETTABLEKS R31 R30 K115 ["FlexMode"]
  LOADN R31 0
  SETTABLEKS R31 R30 K463 ["ShrinkRation"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K209 [".State-Default"]
  DUPTABLE R27 K311 [{"LayoutOrder"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K54 ["LayoutOrder"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K56 ["::UIPadding"]
  DUPTABLE R31 K311 [{"LayoutOrder"}]
  LOADN R32 3
  SETTABLEKS R32 R31 K54 ["LayoutOrder"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K210 [":hover"]
  DUPTABLE R28 K467 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R29 K25 ["$BorderNone"]
  SETTABLEKS R29 R28 K22 ["BorderSizePixel"]
  LOADK R29 K24 ["$Transparency100"]
  SETTABLEKS R29 R28 K21 ["BackgroundTransparency"]
  LOADK R29 K212 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R29 R28 K299 ["Image"]
  LOADN R29 4
  SETTABLEKS R29 R28 K54 ["LayoutOrder"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K213 ["$SemanticColorStateLayerHoverTransparency"]
  DUPTABLE R32 K345 [{"Image"}]
  LOADK R33 K214 [":pressed"]
  SETTABLEKS R33 R32 K299 ["Image"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K215 ["$SemanticColorStateLayerPress"]
  DUPTABLE R29 K472 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R30 K19 ["$FontWeight400"]
  SETTABLEKS R30 R29 K17 ["Font"]
  LOADK R30 K199 ["$FontSize50"]
  SETTABLEKS R30 R29 K37 ["TextSize"]
  LOADK R30 K35 ["$SemanticColorContentStandard"]
  SETTABLEKS R30 R29 K33 ["TextColor3"]
  GETIMPORT R30 K261 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R30 R29 K195 ["TextTruncate"]
  GETIMPORT R30 K125 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K122 ["TextXAlignment"]
  LOADN R30 2
  SETTABLEKS R30 R29 K54 ["LayoutOrder"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K209 [".State-Default"]
  DUPTABLE R30 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K138 ["AutomaticSize"]
  SETTABLEKS R31 R30 K27 ["BackgroundColor3"]
  LOADK R31 K139 ["XY"]
  SETTABLEKS R31 R30 K21 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K209 [".State-Default"]
  DUPTABLE R34 K275 [{"ImageTransparency"}]
  LOADK R35 K217 [".State-Editing"]
  SETTABLEKS R35 R34 K274 ["ImageTransparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K218 ["ClipsDescendants"]
  DUPTABLE R31 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K144 ["None"]
  SETTABLEKS R32 R31 K27 ["BackgroundColor3"]
  LOADK R32 K145 [Enum.ScrollBarInset.None]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K209 [".State-Default"]
  DUPTABLE R35 K275 [{"ImageTransparency"}]
  LOADK R36 K26 [".Role-Surface100"]
  SETTABLEKS R36 R35 K274 ["ImageTransparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K140 [Enum.AutomaticSize.XY]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K67 ["$ConvertibleRowToColumnPadding"]
  DUPTABLE R36 K397 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R37 K328 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R37 R36 K324 ["ApplyStrokeMode"]
  LOADK R37 K142 [Enum.ScrollingDirection.X]
  SETTABLEKS R37 R36 K284 ["Color"]
  LOADK R37 K91 ["$BorderMedium"]
  SETTABLEKS R37 R36 K325 ["Thickness"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K209 [".State-Default"]
  DUPTABLE R37 K275 [{"ImageTransparency"}]
  LOADK R38 K26 [".Role-Surface100"]
  SETTABLEKS R38 R37 K274 ["ImageTransparency"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K206 [".State-Disabled"]
  DUPTABLE R33 K211 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K138 ["AutomaticSize"]
  SETTABLEKS R34 R33 K27 ["BackgroundColor3"]
  LOADK R34 K139 ["XY"]
  SETTABLEKS R34 R33 K21 ["BackgroundTransparency"]
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K215 ["$SemanticColorStateLayerPress"]
  DUPTABLE R37 K207 [{"TextColor3"}]
  LOADK R38 K208 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K33 ["TextColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K219 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  DUPTABLE R38 K275 [{"ImageTransparency"}]
  LOADK R39 K20 [".Role-Surface"]
  SETTABLEKS R39 R38 K274 ["ImageTransparency"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K220 [Enum.TextTruncate.None]
  DUPTABLE R18 K478 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K477 ["Active"]
  LOADB R19 0
  SETTABLEKS R19 R18 K251 ["AutoButtonColor"]
  GETIMPORT R19 K156 [Vector2.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K152 ["AnchorPoint"]
  GETIMPORT R19 K240 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K153 ["Position"]
  LOADK R19 K254 [""]
  SETTABLEKS R19 R18 K252 ["Text"]
  LOADN R19 2
  SETTABLEKS R19 R18 K148 ["ZIndex"]
  CALL R16 2 -1
  SETLIST R6 R7 -1 [33]
  MOVE R7 R3
  LOADK R8 K223 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  MOVE R9 R6
  DUPTABLE R10 K485 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R11 K103 [UDim2.new]
  LOADN R12 0
  LOADN R13 75
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K480 ["SpinboxDefaultSize"]
  GETIMPORT R11 K103 [UDim2.new]
  LOADN R12 0
  LOADN R13 85
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K481 ["SpinboxWithIconSize"]
  GETIMPORT R11 K103 [UDim2.new]
  LOADN R12 0
  LOADN R13 61
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K482 ["SpinboxShortSize"]
  GETIMPORT R11 K103 [UDim2.new]
  LOADN R12 0
  LOADN R13 90
  LOADN R14 0
  LOADN R15 24
  CALL R11 4 1
  SETTABLEKS R11 R10 K99 ["Size"]
  GETIMPORT R11 K103 [UDim2.new]
  LOADN R12 0
  LOADN R13 90
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K483 ["SizeDense"]
  GETIMPORT R11 K103 [UDim2.new]
  LOADN R12 0
  LOADN R13 180
  LOADN R14 0
  LOADN R15 24
  CALL R11 4 1
  SETTABLEKS R11 R10 K484 ["SliderSize"]
  CALL R7 3 -1
  RETURN R7 -1
