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
  NEWTABLE R5 0 38
  MOVE R6 R2
  LOADK R7 K12 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K14 [{"Font"}]
  LOADK R9 K15 ["$FontWeight400"]
  SETTABLEKS R9 R8 K13 ["Font"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K16 [".Role-Surface"]
  DUPTABLE R9 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R10 K20 ["$Transparency100"]
  SETTABLEKS R10 R9 K17 ["BackgroundTransparency"]
  LOADK R10 K21 ["$BorderNone"]
  SETTABLEKS R10 R9 K18 ["BorderSizePixel"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K22 [".Role-Surface100"]
  DUPTABLE R10 K24 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R11 K25 ["$SemanticColorSurface100"]
  SETTABLEKS R11 R10 K23 ["BackgroundColor3"]
  LOADK R11 K21 ["$BorderNone"]
  SETTABLEKS R11 R10 K18 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K26 [".Role-Surface200"]
  DUPTABLE R11 K24 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R12 K27 ["$SemanticColorSurface200"]
  SETTABLEKS R12 R11 K23 ["BackgroundColor3"]
  LOADK R12 K21 ["$BorderNone"]
  SETTABLEKS R12 R11 K18 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K28 [".Role-Text"]
  DUPTABLE R12 K30 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  LOADK R13 K21 ["$BorderNone"]
  SETTABLEKS R13 R12 K18 ["BorderSizePixel"]
  LOADK R13 K20 ["$Transparency100"]
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  LOADK R13 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R13 R12 K29 ["TextColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K32 [".Text-Label"]
  DUPTABLE R13 K34 [{"Font", "TextSize"}]
  LOADK R14 K35 ["$ContentTextFontWeight"]
  SETTABLEKS R14 R13 K13 ["Font"]
  LOADK R14 K36 ["$ContentTextFontSize"]
  SETTABLEKS R14 R13 K33 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K37 [".Text-Title"]
  DUPTABLE R14 K34 [{"Font", "TextSize"}]
  LOADK R15 K38 ["$TitleTextFontWeight"]
  SETTABLEKS R15 R14 K13 ["Font"]
  LOADK R15 K39 ["$TitleTextFontSize"]
  SETTABLEKS R15 R14 K33 ["TextSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K40 [".Role-Row"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K41 ["::UIListLayout"]
  DUPTABLE R19 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K42 ["FillDirection"]
  LOADK R20 K49 ["$RowSpacingDefault"]
  SETTABLEKS R20 R19 K43 ["Padding"]
  GETIMPORT R20 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K44 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K52 [".ConvertibleToColumn"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K41 ["::UIListLayout"]
  DUPTABLE R24 K45 [{"FillDirection", "Padding", "SortOrder"}]
  LOADK R25 K53 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R25 R24 K42 ["FillDirection"]
  LOADK R25 K54 ["$ConvertibleRowToColumnPadding"]
  SETTABLEKS R25 R24 K43 ["Padding"]
  GETIMPORT R25 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K44 ["SortOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K55 ["::UIPadding"]
  DUPTABLE R25 K57 [{"PaddingLeft"}]
  LOADK R26 K58 ["$PaddingLeftMedium"]
  SETTABLEKS R26 R25 K56 ["PaddingLeft"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K59 [".Role-Column"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K61 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  LOADK R21 K62 ["$ColumnSpacingDefault"]
  SETTABLEKS R21 R20 K43 ["Padding"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K63 [".SpacingMedium"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K41 ["::UIListLayout"]
  DUPTABLE R25 K64 [{"Padding"}]
  LOADK R26 K65 ["$ColumnSpacingMedium"]
  SETTABLEKS R26 R25 K43 ["Padding"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K66 [".X-RowSpace50"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K41 ["::UIListLayout"]
  DUPTABLE R21 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K42 ["FillDirection"]
  LOADK R22 K67 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K43 ["Padding"]
  GETIMPORT R22 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K44 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K68 [".X-RowSpace100"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K41 ["::UIListLayout"]
  DUPTABLE R22 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K42 ["FillDirection"]
  LOADK R23 K69 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K43 ["Padding"]
  GETIMPORT R23 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K44 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K70 [".X-RowSpace200"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K41 ["::UIListLayout"]
  DUPTABLE R23 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K42 ["FillDirection"]
  LOADK R24 K71 ["$GlobalSpace200"]
  SETTABLEKS R24 R23 K43 ["Padding"]
  GETIMPORT R24 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K44 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K72 [".X-Pad150 ::UIPadding"]
  DUPTABLE R20 K76 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R21 K77 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K73 ["PaddingBottom"]
  LOADK R21 K77 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  LOADK R21 K77 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K74 ["PaddingRight"]
  LOADK R21 K77 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K75 ["PaddingTop"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K78 [".Role-Menu"]
  DUPTABLE R21 K81 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  MOVE R23 R4
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  LOADK R22 K25 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R22 K82 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R22 R21 K23 ["BackgroundColor3"]
  LOADK R22 K83 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R22 R21 K79 ["BorderColor3"]
  GETIMPORT R22 K85 [Enum.BorderMode.Inset]
  SETTABLEKS R22 R21 K80 ["BorderMode"]
  LOADK R22 K86 ["$BorderMedium"]
  SETTABLEKS R22 R21 K18 ["BorderSizePixel"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K55 ["::UIPadding"]
  DUPTABLE R25 K87 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R26 K88 ["$MenuPadding"]
  SETTABLEKS R26 R25 K56 ["PaddingLeft"]
  LOADK R26 K88 ["$MenuPadding"]
  SETTABLEKS R26 R25 K74 ["PaddingRight"]
  LOADK R26 K88 ["$MenuPadding"]
  SETTABLEKS R26 R25 K75 ["PaddingTop"]
  LOADK R26 K88 ["$MenuPadding"]
  SETTABLEKS R26 R25 K73 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K89 ["> #Menu ::UIListLayout"]
  DUPTABLE R26 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K42 ["FillDirection"]
  LOADK R27 K90 ["$MenuColumnSpacing"]
  SETTABLEKS R27 R26 K43 ["Padding"]
  GETIMPORT R27 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K44 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K91 [".Role-Tooltip"]
  DUPTABLE R22 K81 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R23 K92 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R23 R22 K23 ["BackgroundColor3"]
  LOADK R23 K93 ["$SemanticColorDivider"]
  SETTABLEKS R23 R22 K79 ["BorderColor3"]
  GETIMPORT R23 K85 [Enum.BorderMode.Inset]
  SETTABLEKS R23 R22 K80 ["BorderMode"]
  LOADK R23 K86 ["$BorderMedium"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K94 ["> #Wrapper"]
  DUPTABLE R26 K96 [{"Size"}]
  GETIMPORT R27 K99 [UDim2.new]
  LOADN R28 0
  LOADN R29 232
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K95 ["Size"]
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K100 ["::UISizeConstraint"]
  DUPTABLE R30 K102 [{"MaxSize"}]
  LOADK R31 K103 ["$TooltipMaxSize"]
  SETTABLEKS R31 R30 K101 ["MaxSize"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K41 ["::UIListLayout"]
  DUPTABLE R31 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R32 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R32 R31 K42 ["FillDirection"]
  LOADK R32 K104 ["$TooltipContentSpacing"]
  SETTABLEKS R32 R31 K43 ["Padding"]
  GETIMPORT R32 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K44 ["SortOrder"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K105 ["> #Content"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 5
  MOVE R34 R2
  LOADK R35 K41 ["::UIListLayout"]
  DUPTABLE R36 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R37 K61 [Enum.FillDirection.Vertical]
  SETTABLEKS R37 R36 K42 ["FillDirection"]
  LOADK R37 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R37 R36 K43 ["Padding"]
  GETIMPORT R37 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K44 ["SortOrder"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K107 ["> #TitleFrame"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 2
  MOVE R39 R2
  LOADK R40 K41 ["::UIListLayout"]
  DUPTABLE R41 K108 [{"FillDirection", "SortOrder"}]
  GETIMPORT R42 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R42 R41 K42 ["FillDirection"]
  GETIMPORT R42 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R42 R41 K44 ["SortOrder"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K109 ["> #Spacer"]
  NEWTABLE R42 0 0
  NEWTABLE R43 0 1
  MOVE R44 R2
  LOADK R45 K110 ["::UIFlexItem"]
  DUPTABLE R46 K112 [{"FlexMode"}]
  GETIMPORT R47 K115 [Enum.UIFlexMode.Fill]
  SETTABLEKS R47 R46 K111 ["FlexMode"]
  CALL R44 2 -1
  SETLIST R43 R44 -1 [1]
  CALL R40 3 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K116 ["> #Text"]
  DUPTABLE R38 K119 [{"TextWrapped", "TextXAlignment"}]
  LOADB R39 1
  SETTABLEKS R39 R38 K117 ["TextWrapped"]
  GETIMPORT R39 K121 [Enum.TextXAlignment.Left]
  SETTABLEKS R39 R38 K118 ["TextXAlignment"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K122 [">> TextLabel"]
  DUPTABLE R39 K123 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R40 K15 ["$FontWeight400"]
  SETTABLEKS R40 R39 K13 ["Font"]
  LOADK R40 K124 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R40 R39 K29 ["TextColor3"]
  LOADK R40 K21 ["$BorderNone"]
  SETTABLEKS R40 R39 K18 ["BorderSizePixel"]
  LOADK R40 K20 ["$Transparency100"]
  SETTABLEKS R40 R39 K17 ["BackgroundTransparency"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K125 [">> #Title"]
  DUPTABLE R40 K14 [{"Font"}]
  LOADK R41 K126 ["$FontWeight700"]
  SETTABLEKS R41 R40 K13 ["Font"]
  CALL R38 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K127 [".Role-Scroller"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K128 ["> #Scroller"]
  DUPTABLE R27 K133 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R28 K136 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K129 ["AutomaticCanvasSize"]
  GETIMPORT R28 K138 [Enum.ScrollingDirection.X]
  SETTABLEKS R28 R27 K130 ["ScrollingDirection"]
  LOADN R28 0
  SETTABLEKS R28 R27 K131 ["ScrollBarThickness"]
  GETIMPORT R28 K141 [Enum.ScrollBarInset.None]
  SETTABLEKS R28 R27 K132 ["HorizontalScrollBarInset"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K142 ["> #LeftGradient"]
  DUPTABLE R28 K144 [{"Size", "ZIndex"}]
  LOADK R29 K145 ["$TabGradientSize"]
  SETTABLEKS R29 R28 K95 ["Size"]
  LOADN R29 10
  SETTABLEKS R29 R28 K143 ["ZIndex"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K146 ["> #RightGradient"]
  DUPTABLE R29 K149 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R30 K151 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K147 ["AnchorPoint"]
  LOADK R30 K145 ["$TabGradientSize"]
  SETTABLEKS R30 R29 K95 ["Size"]
  GETIMPORT R30 K99 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K148 ["Position"]
  LOADN R30 10
  SETTABLEKS R30 R29 K143 ["ZIndex"]
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K152 [".Role-DividerH"]
  DUPTABLE R8 K96 [{"Size"}]
  GETIMPORT R9 K99 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  CALL R9 4 1
  SETTABLEKS R9 R8 K95 ["Size"]
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K153 ["> Frame"]
  DUPTABLE R12 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R13 K93 ["$SemanticColorDivider"]
  SETTABLEKS R13 R12 K23 ["BackgroundColor3"]
  LOADK R13 K155 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  LOADK R13 K21 ["$BorderNone"]
  SETTABLEKS R13 R12 K18 ["BorderSizePixel"]
  GETIMPORT R13 K99 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K95 ["Size"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K156 [".Role-DividerV"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K153 ["> Frame"]
  DUPTABLE R13 K157 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R14 K93 ["$SemanticColorDivider"]
  SETTABLEKS R14 R13 K23 ["BackgroundColor3"]
  LOADK R14 K155 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R14 R13 K17 ["BackgroundTransparency"]
  LOADK R14 K21 ["$BorderNone"]
  SETTABLEKS R14 R13 K18 ["BorderSizePixel"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K158 [".Small"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K153 ["> Frame"]
  DUPTABLE R18 K96 [{"Size"}]
  LOADK R19 K159 ["$SmallSeparator"]
  SETTABLEKS R19 R18 K95 ["Size"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K160 [".Role-Mezzanine"]
  DUPTABLE R10 K96 [{"Size"}]
  GETIMPORT R11 K99 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 36
  CALL R11 4 1
  SETTABLEKS R11 R10 K95 ["Size"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K41 ["::UIListLayout"]
  DUPTABLE R14 K163 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R15 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K42 ["FillDirection"]
  GETIMPORT R15 K166 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R15 R14 K161 ["HorizontalFlex"]
  LOADK R15 K67 ["$GlobalSpace50"]
  SETTABLEKS R15 R14 K43 ["Padding"]
  GETIMPORT R15 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K44 ["SortOrder"]
  GETIMPORT R15 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K162 ["VerticalAlignment"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K169 [">> .LeftMezzControls"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K41 ["::UIListLayout"]
  DUPTABLE R19 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K42 ["FillDirection"]
  LOADK R20 K69 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K43 ["Padding"]
  GETIMPORT R20 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K44 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K55 ["::UIPadding"]
  DUPTABLE R20 K57 [{"PaddingLeft"}]
  LOADK R21 K170 ["$MezzaninePadding"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K171 [">> .RightMezzControls"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  LOADK R21 K69 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K43 ["Padding"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K55 ["::UIPadding"]
  DUPTABLE R21 K172 [{"PaddingRight"}]
  LOADK R22 K170 ["$MezzaninePadding"]
  SETTABLEKS R22 R21 K74 ["PaddingRight"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K173 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R11 K112 [{"FlexMode"}]
  GETIMPORT R12 K175 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R12 R11 K111 ["FlexMode"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K176 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R12 K178 [{"Transparency"}]
  GETIMPORT R13 K180 [NumberSequence.new]
  NEWTABLE R14 0 2
  GETIMPORT R15 K182 [NumberSequenceKeypoint.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  GETIMPORT R16 K182 [NumberSequenceKeypoint.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R13 1 1
  SETTABLEKS R13 R12 K177 ["Transparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K183 [".X-FadeRight ::UIGradient"]
  DUPTABLE R13 K178 [{"Transparency"}]
  GETIMPORT R14 K180 [NumberSequence.new]
  NEWTABLE R15 0 2
  GETIMPORT R16 K182 [NumberSequenceKeypoint.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  GETIMPORT R17 K182 [NumberSequenceKeypoint.new]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R14 1 1
  SETTABLEKS R14 R13 K177 ["Transparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K184 [".Component-RibbonTab"]
  DUPTABLE R14 K186 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R15 K20 ["$Transparency100"]
  SETTABLEKS R15 R14 K17 ["BackgroundTransparency"]
  LOADK R15 K187 ["$FontWeight600"]
  SETTABLEKS R15 R14 K13 ["Font"]
  LOADK R15 K188 ["$SemanticColorContentMuted"]
  SETTABLEKS R15 R14 K29 ["TextColor3"]
  LOADK R15 K189 ["$FontSize50"]
  SETTABLEKS R15 R14 K33 ["TextSize"]
  GETIMPORT R15 K191 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R15 R14 K185 ["TextTruncate"]
  NEWTABLE R15 0 7
  MOVE R16 R2
  LOADK R17 K192 [".State-Selected"]
  DUPTABLE R18 K193 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R19 K194 ["$SemanticColorStatesSelected"]
  SETTABLEKS R19 R18 K23 ["BackgroundColor3"]
  LOADK R19 K195 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  LOADK R19 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R19 R18 K29 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K196 [".State-Disabled"]
  DUPTABLE R19 K197 [{"TextColor3"}]
  LOADK R20 K198 ["$SemanticColorContentDisabled"]
  SETTABLEKS R20 R19 K29 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K199 [".State-Default"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K200 [":hover"]
  DUPTABLE R24 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K202 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R25 R24 K23 ["BackgroundColor3"]
  LOADK R25 K203 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K204 [":press"]
  DUPTABLE R25 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K205 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R26 R25 K23 ["BackgroundColor3"]
  LOADK R26 K206 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K207 [".State-Editing"]
  DUPTABLE R21 K209 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  LOADK R22 K194 ["$SemanticColorStatesSelected"]
  SETTABLEKS R22 R21 K23 ["BackgroundColor3"]
  LOADK R22 K195 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K208 ["ClipsDescendants"]
  LOADK R22 K126 ["$FontWeight700"]
  SETTABLEKS R22 R21 K13 ["Font"]
  LOADK R22 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R22 R21 K29 ["TextColor3"]
  GETIMPORT R22 K210 [Enum.TextTruncate.None]
  SETTABLEKS R22 R21 K185 ["TextTruncate"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K100 ["::UISizeConstraint"]
  DUPTABLE R22 K212 [{"MinSize", "MaxSize"}]
  GETIMPORT R23 K151 [Vector2.new]
  LOADN R24 80
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K211 ["MinSize"]
  GETIMPORT R23 K151 [Vector2.new]
  LOADN R24 80
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K101 ["MaxSize"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K55 ["::UIPadding"]
  DUPTABLE R23 K213 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  LOADK R24 K214 ["$GlobalSpace75"]
  SETTABLEKS R24 R23 K75 ["PaddingTop"]
  LOADK R24 K214 ["$GlobalSpace75"]
  SETTABLEKS R24 R23 K73 ["PaddingBottom"]
  LOADK R24 K69 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K56 ["PaddingLeft"]
  LOADK R24 K69 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K74 ["PaddingRight"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K215 ["::UICorner"]
  DUPTABLE R24 K217 [{"CornerRadius"}]
  LOADK R25 K218 ["$TabCornerRadius"]
  SETTABLEKS R25 R24 K216 ["CornerRadius"]
  CALL R22 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K219 [".Component-RibbonTabs"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 5
  MOVE R17 R2
  LOADK R18 K110 ["::UIFlexItem"]
  DUPTABLE R19 K222 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R20 K224 [Enum.UIFlexMode.Custom]
  SETTABLEKS R20 R19 K111 ["FlexMode"]
  LOADK R20 K225 [10000000000]
  SETTABLEKS R20 R19 K220 ["GrowRatio"]
  LOADK R20 K226 [1E-10]
  SETTABLEKS R20 R19 K221 ["ShrinkRatio"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  LOADK R21 K227 ["$RibbonTabsContainerSpacing"]
  SETTABLEKS R21 R20 K43 ["Padding"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K228 ["> #CollapsibleScroller"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K128 ["> #Scroller"]
  DUPTABLE R25 K229 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R26 K136 [Enum.AutomaticSize.XY]
  SETTABLEKS R26 R25 K129 ["AutomaticCanvasSize"]
  GETIMPORT R26 K138 [Enum.ScrollingDirection.X]
  SETTABLEKS R26 R25 K130 ["ScrollingDirection"]
  LOADN R26 0
  SETTABLEKS R26 R25 K131 ["ScrollBarThickness"]
  GETIMPORT R26 K141 [Enum.ScrollBarInset.None]
  SETTABLEKS R26 R25 K132 ["HorizontalScrollBarInset"]
  GETIMPORT R26 K231 [UDim2.fromScale]
  LOADN R27 1
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K95 ["Size"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K94 ["> #Wrapper"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K41 ["::UIListLayout"]
  DUPTABLE R33 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R34 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K42 ["FillDirection"]
  LOADK R34 K232 ["$RibbonTabsSpacing"]
  SETTABLEKS R34 R33 K43 ["Padding"]
  GETIMPORT R34 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K44 ["SortOrder"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K142 ["> #LeftGradient"]
  DUPTABLE R26 K144 [{"Size", "ZIndex"}]
  LOADK R27 K145 ["$TabGradientSize"]
  SETTABLEKS R27 R26 K95 ["Size"]
  LOADN R27 10
  SETTABLEKS R27 R26 K143 ["ZIndex"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K146 ["> #RightGradient"]
  DUPTABLE R27 K149 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R28 K151 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K147 ["AnchorPoint"]
  LOADK R28 K145 ["$TabGradientSize"]
  SETTABLEKS R28 R27 K95 ["Size"]
  GETIMPORT R28 K99 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K148 ["Position"]
  LOADN R28 10
  SETTABLEKS R28 R27 K143 ["ZIndex"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K233 ["> #More"]
  DUPTABLE R22 K235 [{"Visible"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K234 ["Visible"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K236 [".Compact > #More"]
  DUPTABLE R23 K235 [{"Visible"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K234 ["Visible"]
  CALL R21 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K237 [".Component-RibbonButton"]
  DUPTABLE R16 K240 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K238 ["AutoButtonColor"]
  LOADK R17 K20 ["$Transparency100"]
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  LOADK R17 K21 ["$BorderNone"]
  SETTABLEKS R17 R16 K18 ["BorderSizePixel"]
  LOADK R17 K241 [""]
  SETTABLEKS R17 R16 K239 ["Text"]
  NEWTABLE R17 0 8
  MOVE R18 R2
  LOADK R19 K158 [".Small"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K100 ["::UISizeConstraint"]
  DUPTABLE R24 K102 [{"MaxSize"}]
  LOADK R25 K242 ["$RibbonButtonSmallMaxSize"]
  SETTABLEKS R25 R24 K101 ["MaxSize"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K243 ["> TextLabel"]
  DUPTABLE R21 K244 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R22 K20 ["$Transparency100"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  LOADK R22 K15 ["$FontWeight400"]
  SETTABLEKS R22 R21 K13 ["Font"]
  LOADN R22 2
  SETTABLEKS R22 R21 K50 ["LayoutOrder"]
  LOADK R22 K188 ["$SemanticColorContentMuted"]
  SETTABLEKS R22 R21 K29 ["TextColor3"]
  LOADK R22 K245 ["$RibbonButtonLabelTextSize"]
  SETTABLEKS R22 R21 K33 ["TextSize"]
  GETIMPORT R22 K247 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R22 R21 K185 ["TextTruncate"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K248 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R22 K249 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R23 K20 ["$Transparency100"]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K21 ["$BorderNone"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  LOADN R23 0
  SETTABLEKS R23 R22 K50 ["LayoutOrder"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K250 [".Icon-Large"]
  DUPTABLE R26 K96 [{"Size"}]
  LOADK R27 K251 ["$IconLarge"]
  SETTABLEKS R27 R26 K95 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K252 [".Icon-Small"]
  DUPTABLE R27 K96 [{"Size"}]
  LOADK R28 K253 ["$IconSmall"]
  SETTABLEKS R28 R27 K95 ["Size"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K254 ["> #RibbonTool"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K215 ["::UICorner"]
  DUPTABLE R27 K217 [{"CornerRadius"}]
  LOADK R28 K255 ["$GlobalRadiusXSmall"]
  SETTABLEKS R28 R27 K216 ["CornerRadius"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K196 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K0 ["script"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K1 [script]
  DUPTABLE R32 K259 [{"ImageTransparency"}]
  LOADK R33 K4 [require]
  SETTABLEKS R33 R32 K258 ["ImageTransparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K199 [".State-Default"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K5 ["Packages"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K200 [":hover"]
  DUPTABLE R33 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R34 K203 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  LOADK R34 K202 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R34 R33 K23 ["BackgroundColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K204 [":press"]
  DUPTABLE R34 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K206 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R35 R34 K17 ["BackgroundTransparency"]
  LOADK R35 K205 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R35 R34 K23 ["BackgroundColor3"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K192 [".State-Selected"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K0 ["script"]
  DUPTABLE R30 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K195 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  LOADK R31 K194 ["$SemanticColorStatesSelected"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K7 ["Styling"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K8 ["createStyleRule"]
  DUPTABLE R31 K265 [{"BackgroundTransparency"}]
  LOADK R32 K10 ["SharedFlags"]
  SETTABLEKS R32 R31 K17 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  DUPTABLE R35 K270 [{"Color", "Rotation", "Transparency"}]
  LOADK R36 K15 ["$FontWeight400"]
  SETTABLEKS R36 R35 K268 ["Color"]
  LOADK R36 K16 [".Role-Surface"]
  SETTABLEKS R36 R35 K269 ["Rotation"]
  LOADK R36 K17 ["BackgroundTransparency"]
  SETTABLEKS R36 R35 K177 ["Transparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K18 ["BorderSizePixel"]
  DUPTABLE R32 K265 [{"BackgroundTransparency"}]
  LOADK R33 K10 ["SharedFlags"]
  SETTABLEKS R33 R32 K17 ["BackgroundTransparency"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  DUPTABLE R36 K270 [{"Color", "Rotation", "Transparency"}]
  LOADK R37 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R37 R36 K268 ["Color"]
  LOADK R37 K20 ["$Transparency100"]
  SETTABLEKS R37 R36 K269 ["Rotation"]
  LOADK R37 K21 ["$BorderNone"]
  SETTABLEKS R37 R36 K177 ["Transparency"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K22 [".Role-Surface100"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K41 ["::UIListLayout"]
  DUPTABLE R21 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K42 ["FillDirection"]
  LOADK R22 K69 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K43 ["Padding"]
  GETIMPORT R22 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K44 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K23 ["BackgroundColor3"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K24 [{"BackgroundColor3", "BorderSizePixel"}]
  DUPTABLE R26 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K42 ["FillDirection"]
  LOADK R27 K67 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K43 ["Padding"]
  GETIMPORT R27 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K44 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K25 ["$SemanticColorSurface100"]
  DUPTABLE R18 K282 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K238 ["AutoButtonColor"]
  LOADK R19 K241 [""]
  SETTABLEKS R19 R18 K239 ["Text"]
  GETIMPORT R19 K284 [UDim2.fromOffset]
  LOADN R20 0
  LOADN R21 24
  CALL R19 2 1
  SETTABLEKS R19 R18 K95 ["Size"]
  NEWTABLE R19 0 6
  MOVE R20 R2
  LOADK R21 K215 ["::UICorner"]
  DUPTABLE R22 K217 [{"CornerRadius"}]
  LOADK R23 K255 ["$GlobalRadiusXSmall"]
  SETTABLEKS R23 R22 K216 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K29 ["TextColor3"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K30 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  DUPTABLE R27 K287 [{"LayoutOrder"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K250 [".Icon-Large"]
  DUPTABLE R31 K96 [{"Size"}]
  LOADK R32 K251 ["$IconLarge"]
  SETTABLEKS R32 R31 K95 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K252 [".Icon-Small"]
  DUPTABLE R32 K96 [{"Size"}]
  LOADK R33 K253 ["$IconSmall"]
  SETTABLEKS R33 R32 K95 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K32 [".Text-Label"]
  DUPTABLE R33 K287 [{"LayoutOrder"}]
  LOADN R34 3
  SETTABLEKS R34 R33 K50 ["LayoutOrder"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K33 ["TextSize"]
  DUPTABLE R28 K290 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R29 K126 ["$FontWeight700"]
  SETTABLEKS R29 R28 K13 ["Font"]
  LOADK R29 K35 ["$ContentTextFontWeight"]
  SETTABLEKS R29 R28 K33 ["TextSize"]
  LOADN R29 2
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  LOADK R29 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K29 ["TextColor3"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K158 [".Small"]
  DUPTABLE R32 K292 [{"TextSize"}]
  LOADK R33 K189 ["$FontSize50"]
  SETTABLEKS R33 R32 K33 ["TextSize"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K37 [".Text-Title"]
  DUPTABLE R33 K292 [{"TextSize"}]
  LOADK R34 K38 ["$TitleTextFontWeight"]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K196 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K39 ["$TitleTextFontSize"]
  DUPTABLE R28 K259 [{"ImageTransparency"}]
  LOADK R29 K4 [require]
  SETTABLEKS R29 R28 K258 ["ImageTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K40 [".Role-Row"]
  DUPTABLE R29 K197 [{"TextColor3"}]
  LOADK R30 K198 ["$SemanticColorContentDisabled"]
  SETTABLEKS R30 R29 K29 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K199 [".State-Default"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K41 ["::UIListLayout"]
  DUPTABLE R29 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K203 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  LOADK R30 K202 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K42 ["FillDirection"]
  DUPTABLE R30 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K206 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  LOADK R31 K205 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K43 ["Padding"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K44 ["SortOrder"]
  DUPTABLE R30 K303 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R31 K305 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R31 R30 K301 ["ApplyStrokeMode"]
  LOADK R31 K93 ["$SemanticColorDivider"]
  SETTABLEKS R31 R30 K268 ["Color"]
  LOADK R31 K86 ["$BorderMedium"]
  SETTABLEKS R31 R30 K302 ["Thickness"]
  LOADK R31 K155 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R31 R30 K177 ["Transparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K50 ["LayoutOrder"]
  DUPTABLE R27 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K10 ["SharedFlags"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K199 [".State-Default"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K41 ["::UIListLayout"]
  DUPTABLE R35 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K52 [".ConvertibleToColumn"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  LOADK R36 K53 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K42 ["FillDirection"]
  DUPTABLE R36 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R37 K54 ["$ConvertibleRowToColumnPadding"]
  SETTABLEKS R37 R36 K17 ["BackgroundTransparency"]
  LOADK R37 K55 ["::UIPadding"]
  SETTABLEKS R37 R36 K23 ["BackgroundColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K40 [".Role-Row"]
  DUPTABLE R32 K197 [{"TextColor3"}]
  LOADK R33 K124 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R33 R32 K29 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K56 ["PaddingLeft"]
  DUPTABLE R19 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K20 ["$Transparency100"]
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  LOADK R20 K21 ["$BorderNone"]
  SETTABLEKS R20 R19 K18 ["BorderSizePixel"]
  NEWTABLE R20 0 7
  MOVE R21 R2
  LOADK R22 K57 [{"PaddingLeft"}]
  DUPTABLE R23 K314 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K238 ["AutoButtonColor"]
  LOADK R24 K20 ["$Transparency100"]
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  LOADK R24 K21 ["$BorderNone"]
  SETTABLEKS R24 R23 K18 ["BorderSizePixel"]
  LOADN R24 1
  SETTABLEKS R24 R23 K50 ["LayoutOrder"]
  LOADK R24 K241 [""]
  SETTABLEKS R24 R23 K239 ["Text"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K59 [".Role-Column"]
  DUPTABLE R27 K316 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R28 K20 ["$Transparency100"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K21 ["$BorderNone"]
  SETTABLEKS R28 R27 K18 ["BorderSizePixel"]
  LOADK R28 K15 ["$FontWeight400"]
  SETTABLEKS R28 R27 K13 ["Font"]
  LOADN R28 2
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R28 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R29 K20 ["$Transparency100"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  LOADK R29 K21 ["$BorderNone"]
  SETTABLEKS R29 R28 K18 ["BorderSizePixel"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K62 ["$ColumnSpacingDefault"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K57 [{"PaddingLeft"}]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K41 ["::UIListLayout"]
  DUPTABLE R32 K319 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R33 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K42 ["FillDirection"]
  LOADK R33 K69 ["$GlobalSpace100"]
  SETTABLEKS R33 R32 K43 ["Padding"]
  GETIMPORT R33 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K44 ["SortOrder"]
  GETIMPORT R33 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R33 R32 K162 ["VerticalAlignment"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R33 K96 [{"Size"}]
  LOADK R34 K253 ["$IconSmall"]
  SETTABLEKS R34 R33 K95 ["Size"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K158 [".Small"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K57 [{"PaddingLeft"}]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K59 [".Role-Column"]
  DUPTABLE R33 K292 [{"TextSize"}]
  LOADK R34 K189 ["$FontSize50"]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K64 [{"Padding"}]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K57 [{"PaddingLeft"}]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K59 [".Role-Column"]
  DUPTABLE R34 K292 [{"TextSize"}]
  LOADK R35 K35 ["$ContentTextFontWeight"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K37 [".Text-Title"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K57 [{"PaddingLeft"}]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K41 ["::UIListLayout"]
  DUPTABLE R35 K319 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R36 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K42 ["FillDirection"]
  LOADK R36 K77 ["$GlobalSpace150"]
  SETTABLEKS R36 R35 K43 ["Padding"]
  GETIMPORT R36 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K44 ["SortOrder"]
  GETIMPORT R36 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K162 ["VerticalAlignment"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R36 K96 [{"Size"}]
  LOADK R37 K251 ["$IconLarge"]
  SETTABLEKS R37 R36 K95 ["Size"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K59 [".Role-Column"]
  DUPTABLE R37 K292 [{"TextSize"}]
  LOADK R38 K38 ["$TitleTextFontWeight"]
  SETTABLEKS R38 R37 K33 ["TextSize"]
  CALL R35 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K199 [".State-Default"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 4
  MOVE R30 R2
  LOADK R31 K57 [{"PaddingLeft"}]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K65 ["$ColumnSpacingMedium"]
  DUPTABLE R36 K323 [{"Image"}]
  LOADK R37 K68 [".X-RowSpace100"]
  SETTABLEKS R37 R36 K322 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K69 ["$GlobalSpace100"]
  DUPTABLE R37 K197 [{"TextColor3"}]
  LOADK R38 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R38 R37 K29 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K70 [".X-RowSpace200"]
  DUPTABLE R33 K323 [{"Image"}]
  LOADK R34 K71 ["$GlobalSpace200"]
  SETTABLEKS R34 R33 K322 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K72 [".X-Pad150 ::UIPadding"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K57 [{"PaddingLeft"}]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R42 K323 [{"Image"}]
  LOADK R43 K73 ["PaddingBottom"]
  SETTABLEKS R43 R42 K322 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K74 ["PaddingRight"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K57 [{"PaddingLeft"}]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R43 K323 [{"Image"}]
  LOADK R44 K75 ["PaddingTop"]
  SETTABLEKS R44 R43 K322 ["Image"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K196 [".State-Disabled"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K57 [{"PaddingLeft"}]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R37 K323 [{"Image"}]
  LOADK R38 K76 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  SETTABLEKS R38 R37 K322 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K59 [".Role-Column"]
  DUPTABLE R38 K197 [{"TextColor3"}]
  LOADK R39 K198 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K29 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K72 [".X-Pad150 ::UIPadding"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K57 [{"PaddingLeft"}]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R42 K323 [{"Image"}]
  LOADK R43 K77 ["$GlobalSpace150"]
  SETTABLEKS R43 R42 K322 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K74 ["PaddingRight"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K57 [{"PaddingLeft"}]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K61 [Enum.FillDirection.Vertical]
  DUPTABLE R43 K323 [{"Image"}]
  LOADK R44 K78 [".Role-Menu"]
  SETTABLEKS R44 R43 K322 ["Image"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K79 ["BorderColor3"]
  DUPTABLE R20 K336 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K238 ["AutoButtonColor"]
  LOADK R21 K21 ["$BorderNone"]
  SETTABLEKS R21 R20 K18 ["BorderSizePixel"]
  LOADK R21 K20 ["$Transparency100"]
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  LOADK R21 K241 [""]
  SETTABLEKS R21 R20 K239 ["Text"]
  NEWTABLE R21 0 9
  MOVE R22 R2
  LOADK R23 K55 ["::UIPadding"]
  DUPTABLE R24 K87 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R25 K81 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  SETTABLEKS R25 R24 K56 ["PaddingLeft"]
  LOADK R25 K81 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  SETTABLEKS R25 R24 K74 ["PaddingRight"]
  LOADK R25 K82 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R25 R24 K75 ["PaddingTop"]
  LOADK R25 K82 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R25 R24 K73 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K215 ["::UICorner"]
  DUPTABLE R25 K217 [{"CornerRadius"}]
  LOADK R26 K255 ["$GlobalRadiusXSmall"]
  SETTABLEKS R26 R25 K216 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K83 ["$SemanticColorDividerTransparency88"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 6
  MOVE R28 R2
  LOADK R29 K41 ["::UIListLayout"]
  DUPTABLE R30 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R31 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K42 ["FillDirection"]
  LOADK R31 K84 ["Inset"]
  SETTABLEKS R31 R30 K43 ["Padding"]
  GETIMPORT R31 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K44 ["SortOrder"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K85 [Enum.BorderMode.Inset]
  DUPTABLE R31 K342 [{"LayoutOrder", "Size"}]
  LOADN R32 0
  SETTABLEKS R32 R31 K50 ["LayoutOrder"]
  LOADK R32 K253 ["$IconSmall"]
  SETTABLEKS R32 R31 K95 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K87 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  DUPTABLE R32 K344 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R33 K21 ["$BorderNone"]
  SETTABLEKS R33 R32 K18 ["BorderSizePixel"]
  LOADK R33 K20 ["$Transparency100"]
  SETTABLEKS R33 R32 K17 ["BackgroundTransparency"]
  LOADN R33 0
  SETTABLEKS R33 R32 K50 ["LayoutOrder"]
  LOADK R33 K253 ["$IconSmall"]
  SETTABLEKS R33 R32 K95 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K89 ["> #Menu ::UIListLayout"]
  DUPTABLE R33 K344 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R34 K21 ["$BorderNone"]
  SETTABLEKS R34 R33 K18 ["BorderSizePixel"]
  LOADK R34 K20 ["$Transparency100"]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  LOADN R34 1
  SETTABLEKS R34 R33 K50 ["LayoutOrder"]
  LOADK R34 K251 ["$IconLarge"]
  SETTABLEKS R34 R33 K95 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K116 ["> #Text"]
  DUPTABLE R34 K346 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R35 K20 ["$Transparency100"]
  SETTABLEKS R35 R34 K17 ["BackgroundTransparency"]
  LOADK R35 K15 ["$FontWeight400"]
  SETTABLEKS R35 R34 K13 ["Font"]
  LOADK R35 K189 ["$FontSize50"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  LOADN R35 2
  SETTABLEKS R35 R34 K50 ["LayoutOrder"]
  LOADK R35 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K29 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K91 [".Role-Tooltip"]
  DUPTABLE R35 K342 [{"LayoutOrder", "Size"}]
  LOADN R36 3
  SETTABLEKS R36 R35 K50 ["LayoutOrder"]
  LOADK R36 K253 ["$IconSmall"]
  SETTABLEKS R36 R35 K95 ["Size"]
  CALL R33 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K92 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R27 K349 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R28 K151 [Vector2.new]
  LOADN R29 1
  LOADK R30 K94 ["> #Wrapper"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K147 ["AnchorPoint"]
  GETIMPORT R28 K231 [UDim2.fromScale]
  LOADN R29 1
  LOADK R30 K94 ["> #Wrapper"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K148 ["Position"]
  LOADK R28 K21 ["$BorderNone"]
  SETTABLEKS R28 R27 K18 ["BorderSizePixel"]
  LOADK R28 K20 ["$Transparency100"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K95 ["Size"]
  SETTABLEKS R28 R27 K322 ["Image"]
  LOADN R28 3
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  LOADK R28 K253 ["$IconSmall"]
  SETTABLEKS R28 R27 K95 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K96 [{"Size"}]
  DUPTABLE R28 K96 [{"Size"}]
  LOADK R29 K253 ["$IconSmall"]
  SETTABLEKS R29 R28 K95 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K192 [".State-Selected"]
  DUPTABLE R29 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K194 ["$SemanticColorStatesSelected"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  LOADK R30 K195 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K97 ["UDim2"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K83 ["$SemanticColorDividerTransparency88"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K87 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  DUPTABLE R38 K323 [{"Image"}]
  LOADK R39 K98 ["new"]
  SETTABLEKS R39 R38 K322 ["Image"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K99 [UDim2.new]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K200 [":hover"]
  DUPTABLE R35 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R36 K100 ["::UISizeConstraint"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  LOADK R36 K101 ["MaxSize"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K196 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K83 ["$SemanticColorDividerTransparency88"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 2
  MOVE R38 R2
  LOADK R39 K102 [{"MaxSize"}]
  DUPTABLE R40 K259 [{"ImageTransparency"}]
  LOADK R41 K4 [require]
  SETTABLEKS R41 R40 K258 ["ImageTransparency"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K116 ["> #Text"]
  DUPTABLE R41 K197 [{"TextColor3"}]
  LOADK R42 K198 ["$SemanticColorContentDisabled"]
  SETTABLEKS R42 R41 K29 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K103 ["$TooltipMaxSize"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K196 [".State-Disabled"]
  DUPTABLE R25 K259 [{"ImageTransparency"}]
  LOADK R26 K4 [require]
  SETTABLEKS R26 R25 K258 ["ImageTransparency"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K104 ["$TooltipContentSpacing"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K55 ["::UIPadding"]
  DUPTABLE R26 K361 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  LOADK R27 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R27 R26 K56 ["PaddingLeft"]
  LOADK R27 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R27 R26 K75 ["PaddingTop"]
  LOADK R27 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R27 R26 K73 ["PaddingBottom"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K107 ["> #TitleFrame"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 7
  MOVE R25 R2
  LOADK R26 K44 ["SortOrder"]
  DUPTABLE R27 K364 [{"Thickness"}]
  LOADK R28 K21 ["$BorderNone"]
  SETTABLEKS R28 R27 K302 ["Thickness"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K215 ["::UICorner"]
  DUPTABLE R28 K217 [{"CornerRadius"}]
  LOADK R29 K109 ["> #Spacer"]
  SETTABLEKS R29 R28 K216 ["CornerRadius"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K110 ["::UIFlexItem"]
  DUPTABLE R29 K367 [{"TextSize", "TextXAlignment", "TextTruncate"}]
  LOADK R30 K189 ["$FontSize50"]
  SETTABLEKS R30 R29 K33 ["TextSize"]
  GETIMPORT R30 K121 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K118 ["TextXAlignment"]
  GETIMPORT R30 K191 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R30 R29 K185 ["TextTruncate"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K55 ["::UIPadding"]
  DUPTABLE R33 K368 [{"PaddingLeft", "PaddingRight"}]
  LOADK R34 K67 ["$GlobalSpace50"]
  SETTABLEKS R34 R33 K56 ["PaddingLeft"]
  LOADK R34 K67 ["$GlobalSpace50"]
  SETTABLEKS R34 R33 K74 ["PaddingRight"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K199 [".State-Default"]
  DUPTABLE R30 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K113 ["UIFlexMode"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  LOADK R31 K114 ["Fill"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K110 ["::UIFlexItem"]
  DUPTABLE R34 K197 [{"TextColor3"}]
  LOADK R35 K188 ["$SemanticColorContentMuted"]
  SETTABLEKS R35 R34 K29 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K115 [Enum.UIFlexMode.Fill]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K44 ["SortOrder"]
  DUPTABLE R35 K372 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R36 K305 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R36 R35 K301 ["ApplyStrokeMode"]
  LOADK R36 K117 ["TextWrapped"]
  SETTABLEKS R36 R35 K268 ["Color"]
  LOADK R36 K86 ["$BorderMedium"]
  SETTABLEKS R36 R35 K302 ["Thickness"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K110 ["::UIFlexItem"]
  DUPTABLE R36 K197 [{"TextColor3"}]
  LOADK R37 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K29 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K118 ["TextXAlignment"]
  DUPTABLE R32 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K119 [{"TextWrapped", "TextXAlignment"}]
  SETTABLEKS R33 R32 K23 ["BackgroundColor3"]
  LOADK R33 K120 ["Left"]
  SETTABLEKS R33 R32 K17 ["BackgroundTransparency"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K110 ["::UIFlexItem"]
  DUPTABLE R36 K197 [{"TextColor3"}]
  LOADK R37 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K29 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K196 [".State-Disabled"]
  DUPTABLE R33 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K113 ["UIFlexMode"]
  SETTABLEKS R34 R33 K23 ["BackgroundColor3"]
  LOADK R34 K114 ["Fill"]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K110 ["::UIFlexItem"]
  DUPTABLE R37 K197 [{"TextColor3"}]
  LOADK R38 K198 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K29 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K121 [Enum.TextXAlignment.Left]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 3
  MOVE R10 R2
  LOADK R11 K122 [">> TextLabel"]
  DUPTABLE R12 K96 [{"Size"}]
  GETIMPORT R13 K284 [UDim2.fromOffset]
  LOADN R14 16
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K95 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K123 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  DUPTABLE R16 K96 [{"Size"}]
  GETIMPORT R17 K284 [UDim2.fromOffset]
  LOADN R18 16
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K95 ["Size"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K199 [".State-Default"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K124 ["$SemanticColorContentStandardInverse"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K125 [">> #Title"]
  DUPTABLE R21 K323 [{"Image"}]
  LOADK R22 K126 ["$FontWeight700"]
  SETTABLEKS R22 R21 K322 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K127 [".Role-Scroller"]
  DUPTABLE R22 K323 [{"Image"}]
  LOADK R23 K128 ["> #Scroller"]
  SETTABLEKS R23 R22 K322 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K129 ["AutomaticCanvasSize"]
  DUPTABLE R23 K323 [{"Image"}]
  LOADK R24 K130 ["ScrollingDirection"]
  SETTABLEKS R24 R23 K322 ["Image"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K131 ["ScrollBarThickness"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K125 [">> #Title"]
  DUPTABLE R22 K323 [{"Image"}]
  LOADK R23 K132 ["HorizontalScrollBarInset"]
  SETTABLEKS R23 R22 K322 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K127 [".Role-Scroller"]
  DUPTABLE R23 K323 [{"Image"}]
  LOADK R24 K133 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  SETTABLEKS R24 R23 K322 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K129 ["AutomaticCanvasSize"]
  DUPTABLE R24 K323 [{"Image"}]
  LOADK R25 K134 ["AutomaticSize"]
  SETTABLEKS R25 R24 K322 ["Image"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K196 [".State-Disabled"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K124 ["$SemanticColorContentStandardInverse"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K135 ["XY"]
  DUPTABLE R22 K323 [{"Image"}]
  LOADK R23 K130 ["ScrollingDirection"]
  SETTABLEKS R23 R22 K322 ["Image"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K131 ["ScrollBarThickness"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K135 ["XY"]
  DUPTABLE R23 K323 [{"Image"}]
  LOADK R24 K134 ["AutomaticSize"]
  SETTABLEKS R24 R23 K322 ["Image"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K136 [Enum.AutomaticSize.XY]
  DUPTABLE R9 K265 [{"BackgroundTransparency"}]
  LOADK R10 K20 ["$Transparency100"]
  SETTABLEKS R10 R9 K17 ["BackgroundTransparency"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K137 ["X"]
  DUPTABLE R13 K217 [{"CornerRadius"}]
  LOADK R14 K255 ["$GlobalRadiusXSmall"]
  SETTABLEKS R14 R13 K216 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K138 [Enum.ScrollingDirection.X]
  DUPTABLE R14 K303 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R15 K305 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K301 ["ApplyStrokeMode"]
  LOADK R15 K93 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K268 ["Color"]
  LOADK R15 K86 ["$BorderMedium"]
  SETTABLEKS R15 R14 K302 ["Thickness"]
  LOADK R15 K155 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K177 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K139 ["ScrollBarInset"]
  DUPTABLE R15 K265 [{"BackgroundTransparency"}]
  LOADK R16 K20 ["$Transparency100"]
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  NEWTABLE R16 0 4
  MOVE R17 R2
  LOADK R18 K137 ["X"]
  DUPTABLE R19 K217 [{"CornerRadius"}]
  LOADK R20 K255 ["$GlobalRadiusXSmall"]
  SETTABLEKS R20 R19 K216 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K140 ["None"]
  DUPTABLE R20 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K20 ["$Transparency100"]
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  LOADK R21 K21 ["$BorderNone"]
  SETTABLEKS R21 R20 K18 ["BorderSizePixel"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K200 [":hover"]
  DUPTABLE R24 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K202 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R25 R24 K23 ["BackgroundColor3"]
  LOADK R25 K203 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K141 [Enum.ScrollBarInset.None]
  DUPTABLE R25 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K205 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R26 R25 K23 ["BackgroundColor3"]
  LOADK R26 K206 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K142 ["> #LeftGradient"]
  DUPTABLE R21 K399 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
  GETIMPORT R22 K284 [UDim2.fromOffset]
  LOADN R23 82
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K95 ["Size"]
  LOADK R22 K189 ["$FontSize50"]
  SETTABLEKS R22 R21 K33 ["TextSize"]
  LOADK R22 K187 ["$FontWeight600"]
  SETTABLEKS R22 R21 K13 ["Font"]
  LOADB R22 0
  SETTABLEKS R22 R21 K238 ["AutoButtonColor"]
  LOADK R22 K21 ["$BorderNone"]
  SETTABLEKS R22 R21 K18 ["BorderSizePixel"]
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K55 ["::UIPadding"]
  DUPTABLE R25 K368 [{"PaddingLeft", "PaddingRight"}]
  LOADK R26 K77 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K56 ["PaddingLeft"]
  LOADK R26 K77 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K74 ["PaddingRight"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K199 [".State-Default"]
  DUPTABLE R26 K400 [{"BackgroundTransparency", "TextColor3"}]
  LOADK R27 K20 ["$Transparency100"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  LOADK R27 K188 ["$SemanticColorContentMuted"]
  SETTABLEKS R27 R26 K29 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K192 [".State-Selected"]
  DUPTABLE R27 K193 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R28 K194 ["$SemanticColorStatesSelected"]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K195 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K29 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K145 ["$TabGradientSize"]
  DUPTABLE R22 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R23 K93 ["$SemanticColorDivider"]
  SETTABLEKS R23 R22 K23 ["BackgroundColor3"]
  LOADK R23 K155 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K21 ["$BorderNone"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  LOADK R23 K159 ["$SmallSeparator"]
  SETTABLEKS R23 R22 K95 ["Size"]
  CALL R20 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K146 ["> #RightGradient"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 4
  MOVE R12 R2
  LOADK R13 K41 ["::UIListLayout"]
  DUPTABLE R14 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K61 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K42 ["FillDirection"]
  LOADK R15 K69 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K43 ["Padding"]
  GETIMPORT R15 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K44 ["SortOrder"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K55 ["::UIPadding"]
  DUPTABLE R15 K87 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K77 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K56 ["PaddingLeft"]
  LOADK R16 K77 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K74 ["PaddingRight"]
  LOADK R16 K69 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K75 ["PaddingTop"]
  LOADK R16 K69 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K73 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K147 ["AnchorPoint"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  LOADK R21 K69 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K43 ["Padding"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K153 ["> Frame"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K148 ["Position"]
  DUPTABLE R25 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R26 K93 ["$SemanticColorDivider"]
  SETTABLEKS R26 R25 K23 ["BackgroundColor3"]
  LOADK R26 K155 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  LOADK R26 K21 ["$BorderNone"]
  SETTABLEKS R26 R25 K18 ["BorderSizePixel"]
  LOADK R26 K159 ["$SmallSeparator"]
  SETTABLEKS R26 R25 K95 ["Size"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K149 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K109 ["> #Spacer"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K110 ["::UIFlexItem"]
  DUPTABLE R25 K112 [{"FlexMode"}]
  GETIMPORT R26 K115 [Enum.UIFlexMode.Fill]
  SETTABLEKS R26 R25 K111 ["FlexMode"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K150 ["Vector2"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K41 ["::UIListLayout"]
  DUPTABLE R15 K408 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R16 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K42 ["FillDirection"]
  GETIMPORT R16 K409 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K407 ["HorizontalAlignment"]
  GETIMPORT R16 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K44 ["SortOrder"]
  GETIMPORT R16 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K162 ["VerticalAlignment"]
  LOADK R16 K154 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  SETTABLEKS R16 R15 K43 ["Padding"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K243 ["> TextLabel"]
  DUPTABLE R16 K346 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R17 K20 ["$Transparency100"]
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  LOADK R17 K15 ["$FontWeight400"]
  SETTABLEKS R17 R16 K13 ["Font"]
  LOADK R17 K155 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R17 R16 K33 ["TextSize"]
  LOADN R17 0
  SETTABLEKS R17 R16 K50 ["LayoutOrder"]
  LOADK R17 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R17 R16 K29 ["TextColor3"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K156 [".Role-DividerV"]
  DUPTABLE R12 K413 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R13 K416 [Color3.fromHex]
  LOADK R14 K161 ["HorizontalFlex"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K23 ["BackgroundColor3"]
  LOADK R13 K10 ["SharedFlags"]
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  GETIMPORT R13 K284 [UDim2.fromOffset]
  LOADN R14 40
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K95 ["Size"]
  NEWTABLE R13 0 6
  MOVE R14 R2
  LOADK R15 K215 ["::UICorner"]
  DUPTABLE R16 K217 [{"CornerRadius"}]
  LOADK R17 K162 ["VerticalAlignment"]
  SETTABLEKS R17 R16 K216 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K55 ["::UIPadding"]
  DUPTABLE R17 K76 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R18 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R18 R17 K73 ["PaddingBottom"]
  LOADK R18 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R18 R17 K56 ["PaddingLeft"]
  LOADK R18 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R18 R17 K74 ["PaddingRight"]
  LOADK R18 K106 ["$TooltipTextSpacing"]
  SETTABLEKS R18 R17 K75 ["PaddingTop"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K41 ["::UIListLayout"]
  DUPTABLE R18 K419 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R19 K61 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K42 ["FillDirection"]
  GETIMPORT R19 K409 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K407 ["HorizontalAlignment"]
  GETIMPORT R19 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K44 ["SortOrder"]
  GETIMPORT R19 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K162 ["VerticalAlignment"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K153 ["> Frame"]
  DUPTABLE R19 K420 [{"BackgroundColor3", "Size"}]
  LOADK R20 K165 ["SpaceBetween"]
  SETTABLEKS R20 R19 K23 ["BackgroundColor3"]
  GETIMPORT R20 K284 [UDim2.fromOffset]
  LOADN R21 20
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K95 ["Size"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K215 ["::UICorner"]
  DUPTABLE R23 K217 [{"CornerRadius"}]
  LOADK R24 K162 ["VerticalAlignment"]
  SETTABLEKS R24 R23 K216 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K192 [".State-Selected"]
  DUPTABLE R20 K422 [{"BackgroundColor3"}]
  GETIMPORT R21 K416 [Color3.fromHex]
  LOADK R22 K167 ["Center"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K23 ["BackgroundColor3"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K41 ["::UIListLayout"]
  DUPTABLE R24 K424 [{"HorizontalAlignment"}]
  GETIMPORT R25 K426 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R25 R24 K407 ["HorizontalAlignment"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K196 [".State-Disabled"]
  DUPTABLE R21 K265 [{"BackgroundTransparency"}]
  LOADK R22 K171 [">> .RightMezzControls"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K153 ["> Frame"]
  DUPTABLE R25 K265 [{"BackgroundTransparency"}]
  LOADK R26 K171 [">> .RightMezzControls"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K172 [{"PaddingRight"}]
  DUPTABLE R13 K282 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R14 0
  SETTABLEKS R14 R13 K238 ["AutoButtonColor"]
  LOADK R14 K241 [""]
  SETTABLEKS R14 R13 K239 ["Text"]
  GETIMPORT R14 K284 [UDim2.fromOffset]
  LOADN R15 85
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K95 ["Size"]
  NEWTABLE R14 0 13
  MOVE R15 R2
  LOADK R16 K215 ["::UICorner"]
  DUPTABLE R17 K217 [{"CornerRadius"}]
  LOADK R18 K173 [".X-Shrink ::UIFlexItem"]
  SETTABLEKS R18 R17 K216 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K174 ["Shrink"]
  DUPTABLE R18 K96 [{"Size"}]
  GETIMPORT R19 K284 [UDim2.fromOffset]
  LOADN R20 120
  LOADN R21 24
  CALL R19 2 1
  SETTABLEKS R19 R18 K95 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K41 ["::UIListLayout"]
  DUPTABLE R19 K431 [{"HorizontalFlex"}]
  GETIMPORT R20 K432 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R20 R19 K161 ["HorizontalFlex"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K55 ["::UIPadding"]
  DUPTABLE R20 K87 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K177 ["Transparency"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  LOADK R21 K178 [{"Transparency"}]
  SETTABLEKS R21 R20 K74 ["PaddingRight"]
  LOADK R21 K179 ["NumberSequence"]
  SETTABLEKS R21 R20 K75 ["PaddingTop"]
  LOADK R21 K180 [NumberSequence.new]
  SETTABLEKS R21 R20 K73 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K181 ["NumberSequenceKeypoint"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K41 ["::UIListLayout"]
  DUPTABLE R25 K438 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
  GETIMPORT R26 K432 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R26 R25 K161 ["HorizontalFlex"]
  GETIMPORT R26 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K42 ["FillDirection"]
  GETIMPORT R26 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K44 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K135 ["XY"]
  DUPTABLE R22 K96 [{"Size"}]
  LOADK R23 K253 ["$IconSmall"]
  SETTABLEKS R23 R22 K95 ["Size"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K110 ["::UIFlexItem"]
  DUPTABLE R26 K440 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R27 K224 [Enum.UIFlexMode.Custom]
  SETTABLEKS R27 R26 K111 ["FlexMode"]
  LOADN R27 0
  SETTABLEKS R27 R26 K439 ["ShrinkRation"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K185 ["TextTruncate"]
  DUPTABLE R23 K287 [{"LayoutOrder"}]
  LOADN R24 0
  SETTABLEKS R24 R23 K50 ["LayoutOrder"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K32 [".Text-Label"]
  DUPTABLE R27 K287 [{"LayoutOrder"}]
  LOADN R28 3
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K186 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  DUPTABLE R24 K443 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R25 K21 ["$BorderNone"]
  SETTABLEKS R25 R24 K18 ["BorderSizePixel"]
  LOADK R25 K20 ["$Transparency100"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  LOADK R25 K188 ["$SemanticColorContentMuted"]
  SETTABLEKS R25 R24 K322 ["Image"]
  LOADN R25 4
  SETTABLEKS R25 R24 K50 ["LayoutOrder"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K189 ["$FontSize50"]
  DUPTABLE R28 K323 [{"Image"}]
  LOADK R29 K190 ["SplitWord"]
  SETTABLEKS R29 R28 K322 ["Image"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K191 [Enum.TextTruncate.SplitWord]
  DUPTABLE R25 K448 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R26 K15 ["$FontWeight400"]
  SETTABLEKS R26 R25 K13 ["Font"]
  LOADK R26 K189 ["$FontSize50"]
  SETTABLEKS R26 R25 K33 ["TextSize"]
  LOADK R26 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K29 ["TextColor3"]
  GETIMPORT R26 K247 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R26 R25 K185 ["TextTruncate"]
  GETIMPORT R26 K121 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K118 ["TextXAlignment"]
  LOADN R26 2
  SETTABLEKS R26 R25 K50 ["LayoutOrder"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K199 [".State-Default"]
  DUPTABLE R26 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K113 ["UIFlexMode"]
  SETTABLEKS R27 R26 K23 ["BackgroundColor3"]
  LOADK R27 K114 ["Fill"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K185 ["TextTruncate"]
  DUPTABLE R30 K259 [{"ImageTransparency"}]
  LOADK R31 K193 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R31 R30 K258 ["ImageTransparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K194 ["$SemanticColorStatesSelected"]
  DUPTABLE R27 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K119 [{"TextWrapped", "TextXAlignment"}]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K120 ["Left"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K185 ["TextTruncate"]
  DUPTABLE R31 K259 [{"ImageTransparency"}]
  LOADK R32 K10 ["SharedFlags"]
  SETTABLEKS R32 R31 K258 ["ImageTransparency"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K115 [Enum.UIFlexMode.Fill]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K44 ["SortOrder"]
  DUPTABLE R32 K372 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R33 K305 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R33 R32 K301 ["ApplyStrokeMode"]
  LOADK R33 K117 ["TextWrapped"]
  SETTABLEKS R33 R32 K268 ["Color"]
  LOADK R33 K86 ["$BorderMedium"]
  SETTABLEKS R33 R32 K302 ["Thickness"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K185 ["TextTruncate"]
  DUPTABLE R33 K259 [{"ImageTransparency"}]
  LOADK R34 K10 ["SharedFlags"]
  SETTABLEKS R34 R33 K258 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K196 [".State-Disabled"]
  DUPTABLE R29 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K113 ["UIFlexMode"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  LOADK R30 K114 ["Fill"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K191 [Enum.TextTruncate.SplitWord]
  DUPTABLE R33 K197 [{"TextColor3"}]
  LOADK R34 K198 ["$SemanticColorContentDisabled"]
  SETTABLEKS R34 R33 K29 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K195 ["$SemanticColorStatesSelectedTransparency"]
  DUPTABLE R34 K259 [{"ImageTransparency"}]
  LOADK R35 K4 [require]
  SETTABLEKS R35 R34 K258 ["ImageTransparency"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R5 R6 -1 [33]
  MOVE R6 R3
  LOADK R7 K196 [".State-Disabled"]
  MOVE R8 R5
  DUPTABLE R9 K458 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R10 K99 [UDim2.new]
  LOADN R11 0
  LOADN R12 75
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K453 ["SpinboxDefaultSize"]
  GETIMPORT R10 K99 [UDim2.new]
  LOADN R11 0
  LOADN R12 85
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K454 ["SpinboxWithIconSize"]
  GETIMPORT R10 K99 [UDim2.new]
  LOADN R11 0
  LOADN R12 61
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K455 ["SpinboxShortSize"]
  GETIMPORT R10 K99 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K95 ["Size"]
  GETIMPORT R10 K99 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K456 ["SizeDense"]
  GETIMPORT R10 K99 [UDim2.new]
  LOADN R11 0
  LOADN R12 180
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K457 ["SliderSize"]
  CALL R6 3 -1
  RETURN R6 -1
