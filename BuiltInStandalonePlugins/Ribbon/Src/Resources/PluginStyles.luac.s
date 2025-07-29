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
  NEWTABLE R5 0 41
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
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K41 ["::UIListLayout"]
  DUPTABLE R24 K45 [{"FillDirection", "Padding", "SortOrder"}]
  LOADK R25 K53 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R25 R24 K42 ["FillDirection"]
  LOADK R25 K54 ["$ConvertibleRowToColumnPadding"]
  SETTABLEKS R25 R24 K43 ["Padding"]
  GETIMPORT R25 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K44 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K55 [".Role-Column"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  LOADK R21 K58 ["$ColumnSpacingDefault"]
  SETTABLEKS R21 R20 K43 ["Padding"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K59 [".SpacingMedium"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K41 ["::UIListLayout"]
  DUPTABLE R25 K60 [{"Padding"}]
  LOADK R26 K61 ["$ColumnSpacingMedium"]
  SETTABLEKS R26 R25 K43 ["Padding"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K62 [".X-RowSpace50"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K41 ["::UIListLayout"]
  DUPTABLE R21 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K42 ["FillDirection"]
  LOADK R22 K63 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K43 ["Padding"]
  GETIMPORT R22 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K44 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K64 [".X-RowSpace100"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K41 ["::UIListLayout"]
  DUPTABLE R22 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K42 ["FillDirection"]
  LOADK R23 K65 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K43 ["Padding"]
  GETIMPORT R23 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K44 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K66 [".X-RowSpace200"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K41 ["::UIListLayout"]
  DUPTABLE R23 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K42 ["FillDirection"]
  LOADK R24 K67 ["$GlobalSpace200"]
  SETTABLEKS R24 R23 K43 ["Padding"]
  GETIMPORT R24 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K44 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K68 [".X-Pad150 ::UIPadding"]
  DUPTABLE R20 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R21 K74 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K69 ["PaddingBottom"]
  LOADK R21 K74 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K70 ["PaddingLeft"]
  LOADK R21 K74 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K71 ["PaddingRight"]
  LOADK R21 K74 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K72 ["PaddingTop"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K75 [".Role-Menu"]
  DUPTABLE R21 K78 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  MOVE R23 R4
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  LOADK R22 K25 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R22 K79 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R22 R21 K23 ["BackgroundColor3"]
  LOADK R22 K80 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R22 R21 K76 ["BorderColor3"]
  GETIMPORT R22 K82 [Enum.BorderMode.Inset]
  SETTABLEKS R22 R21 K77 ["BorderMode"]
  LOADK R22 K83 ["$BorderMedium"]
  SETTABLEKS R22 R21 K18 ["BorderSizePixel"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K84 ["::UIPadding"]
  DUPTABLE R25 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R26 K86 ["$MenuPadding"]
  SETTABLEKS R26 R25 K70 ["PaddingLeft"]
  LOADK R26 K86 ["$MenuPadding"]
  SETTABLEKS R26 R25 K71 ["PaddingRight"]
  LOADK R26 K86 ["$MenuPadding"]
  SETTABLEKS R26 R25 K72 ["PaddingTop"]
  LOADK R26 K86 ["$MenuPadding"]
  SETTABLEKS R26 R25 K69 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K87 ["> #Menu ::UIListLayout"]
  DUPTABLE R26 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K42 ["FillDirection"]
  LOADK R27 K88 ["$MenuColumnSpacing"]
  SETTABLEKS R27 R26 K43 ["Padding"]
  GETIMPORT R27 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K44 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K89 [".Role-Tooltip"]
  DUPTABLE R22 K78 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R23 K90 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R23 R22 K23 ["BackgroundColor3"]
  LOADK R23 K91 ["$SemanticColorDivider"]
  SETTABLEKS R23 R22 K76 ["BorderColor3"]
  GETIMPORT R23 K82 [Enum.BorderMode.Inset]
  SETTABLEKS R23 R22 K77 ["BorderMode"]
  LOADK R23 K83 ["$BorderMedium"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K92 ["> #Wrapper"]
  DUPTABLE R26 K94 [{"Size"}]
  GETIMPORT R27 K97 [UDim2.new]
  LOADN R28 0
  LOADN R29 232
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K93 ["Size"]
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K98 ["::UISizeConstraint"]
  DUPTABLE R30 K100 [{"MaxSize"}]
  LOADK R31 K101 ["$TooltipMaxSize"]
  SETTABLEKS R31 R30 K99 ["MaxSize"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K41 ["::UIListLayout"]
  DUPTABLE R31 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R32 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R32 R31 K42 ["FillDirection"]
  LOADK R32 K102 ["$TooltipContentSpacing"]
  SETTABLEKS R32 R31 K43 ["Padding"]
  GETIMPORT R32 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K44 ["SortOrder"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K103 ["> #Content"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 5
  MOVE R34 R2
  LOADK R35 K41 ["::UIListLayout"]
  DUPTABLE R36 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R37 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R37 R36 K42 ["FillDirection"]
  LOADK R37 K104 ["$TooltipTextSpacing"]
  SETTABLEKS R37 R36 K43 ["Padding"]
  GETIMPORT R37 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K44 ["SortOrder"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K105 ["> #TitleFrame"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 2
  MOVE R39 R2
  LOADK R40 K41 ["::UIListLayout"]
  DUPTABLE R41 K106 [{"FillDirection", "SortOrder"}]
  GETIMPORT R42 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R42 R41 K42 ["FillDirection"]
  GETIMPORT R42 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R42 R41 K44 ["SortOrder"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K107 ["> #Spacer"]
  NEWTABLE R42 0 0
  NEWTABLE R43 0 1
  MOVE R44 R2
  LOADK R45 K108 ["::UIFlexItem"]
  DUPTABLE R46 K110 [{"FlexMode"}]
  GETIMPORT R47 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R47 R46 K109 ["FlexMode"]
  CALL R44 2 -1
  SETLIST R43 R44 -1 [1]
  CALL R40 3 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K114 ["> #Text"]
  DUPTABLE R38 K117 [{"TextWrapped", "TextXAlignment"}]
  LOADB R39 1
  SETTABLEKS R39 R38 K115 ["TextWrapped"]
  GETIMPORT R39 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R39 R38 K116 ["TextXAlignment"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K120 [">> TextLabel"]
  DUPTABLE R39 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R40 K15 ["$FontWeight400"]
  SETTABLEKS R40 R39 K13 ["Font"]
  LOADK R40 K122 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R40 R39 K29 ["TextColor3"]
  LOADK R40 K21 ["$BorderNone"]
  SETTABLEKS R40 R39 K18 ["BorderSizePixel"]
  LOADK R40 K20 ["$Transparency100"]
  SETTABLEKS R40 R39 K17 ["BackgroundTransparency"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K123 [">> #Title"]
  DUPTABLE R40 K14 [{"Font"}]
  LOADK R41 K124 ["$FontWeight700"]
  SETTABLEKS R41 R40 K13 ["Font"]
  CALL R38 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K125 [".Role-Scroller"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K126 ["> #Scroller"]
  DUPTABLE R27 K131 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R28 K134 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K127 ["AutomaticCanvasSize"]
  GETIMPORT R28 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R28 R27 K128 ["ScrollingDirection"]
  LOADN R28 0
  SETTABLEKS R28 R27 K129 ["ScrollBarThickness"]
  GETIMPORT R28 K139 [Enum.ScrollBarInset.None]
  SETTABLEKS R28 R27 K130 ["HorizontalScrollBarInset"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K140 ["> #LeftGradient"]
  DUPTABLE R28 K142 [{"Size", "ZIndex"}]
  LOADK R29 K143 ["$TabGradientSize"]
  SETTABLEKS R29 R28 K93 ["Size"]
  LOADN R29 10
  SETTABLEKS R29 R28 K141 ["ZIndex"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K144 ["> #RightGradient"]
  DUPTABLE R29 K147 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R30 K149 [Vector2.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K145 ["AnchorPoint"]
  LOADK R30 K143 ["$TabGradientSize"]
  SETTABLEKS R30 R29 K93 ["Size"]
  GETIMPORT R30 K97 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K146 ["Position"]
  LOADN R30 10
  SETTABLEKS R30 R29 K141 ["ZIndex"]
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K150 [".Role-DividerH"]
  DUPTABLE R8 K94 [{"Size"}]
  GETIMPORT R9 K97 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  CALL R9 4 1
  SETTABLEKS R9 R8 K93 ["Size"]
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K151 ["> Frame"]
  DUPTABLE R12 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R13 K91 ["$SemanticColorDivider"]
  SETTABLEKS R13 R12 K23 ["BackgroundColor3"]
  LOADK R13 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  LOADK R13 K21 ["$BorderNone"]
  SETTABLEKS R13 R12 K18 ["BorderSizePixel"]
  GETIMPORT R13 K97 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K93 ["Size"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K154 [".Role-DividerV"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K151 ["> Frame"]
  DUPTABLE R13 K155 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R14 K91 ["$SemanticColorDivider"]
  SETTABLEKS R14 R13 K23 ["BackgroundColor3"]
  LOADK R14 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R14 R13 K17 ["BackgroundTransparency"]
  LOADK R14 K21 ["$BorderNone"]
  SETTABLEKS R14 R13 K18 ["BorderSizePixel"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K156 [".Small"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K151 ["> Frame"]
  DUPTABLE R18 K94 [{"Size"}]
  LOADK R19 K157 ["$SmallSeparator"]
  SETTABLEKS R19 R18 K93 ["Size"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K158 [".Role-Mezzanine"]
  DUPTABLE R10 K94 [{"Size"}]
  GETIMPORT R11 K97 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 36
  CALL R11 4 1
  SETTABLEKS R11 R10 K93 ["Size"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K41 ["::UIListLayout"]
  DUPTABLE R14 K161 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R15 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K42 ["FillDirection"]
  GETIMPORT R15 K164 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R15 R14 K159 ["HorizontalFlex"]
  LOADK R15 K63 ["$GlobalSpace50"]
  SETTABLEKS R15 R14 K43 ["Padding"]
  GETIMPORT R15 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K44 ["SortOrder"]
  GETIMPORT R15 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K160 ["VerticalAlignment"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K167 [">> .LeftMezzControls"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K41 ["::UIListLayout"]
  DUPTABLE R19 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K42 ["FillDirection"]
  LOADK R20 K65 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K43 ["Padding"]
  GETIMPORT R20 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K44 ["SortOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K84 ["::UIPadding"]
  DUPTABLE R20 K168 [{"PaddingLeft"}]
  LOADK R21 K169 ["$MezzaninePadding"]
  SETTABLEKS R21 R20 K70 ["PaddingLeft"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K170 [">> .RightMezzControls"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  LOADK R21 K65 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K43 ["Padding"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K84 ["::UIPadding"]
  DUPTABLE R21 K171 [{"PaddingRight"}]
  LOADK R22 K169 ["$MezzaninePadding"]
  SETTABLEKS R22 R21 K71 ["PaddingRight"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K172 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R11 K110 [{"FlexMode"}]
  GETIMPORT R12 K174 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R12 R11 K109 ["FlexMode"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K175 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R12 K177 [{"Transparency"}]
  GETIMPORT R13 K179 [NumberSequence.new]
  NEWTABLE R14 0 2
  GETIMPORT R15 K181 [NumberSequenceKeypoint.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  GETIMPORT R16 K181 [NumberSequenceKeypoint.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R13 1 1
  SETTABLEKS R13 R12 K176 ["Transparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K182 [".X-FadeRight ::UIGradient"]
  DUPTABLE R13 K177 [{"Transparency"}]
  GETIMPORT R14 K179 [NumberSequence.new]
  NEWTABLE R15 0 2
  GETIMPORT R16 K181 [NumberSequenceKeypoint.new]
  LOADN R17 0
  LOADN R18 0
  CALL R16 2 1
  GETIMPORT R17 K181 [NumberSequenceKeypoint.new]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R14 1 1
  SETTABLEKS R14 R13 K176 ["Transparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K183 [".Component-RibbonTab"]
  DUPTABLE R14 K185 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R15 K20 ["$Transparency100"]
  SETTABLEKS R15 R14 K17 ["BackgroundTransparency"]
  LOADK R15 K186 ["$FontWeight600"]
  SETTABLEKS R15 R14 K13 ["Font"]
  LOADK R15 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R15 R14 K29 ["TextColor3"]
  LOADK R15 K188 ["$FontSize50"]
  SETTABLEKS R15 R14 K33 ["TextSize"]
  GETIMPORT R15 K190 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R15 R14 K184 ["TextTruncate"]
  NEWTABLE R15 0 7
  MOVE R16 R2
  LOADK R17 K191 [".State-Selected"]
  DUPTABLE R18 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R19 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R19 R18 K23 ["BackgroundColor3"]
  LOADK R19 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  LOADK R19 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R19 R18 K29 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K195 [".State-Disabled"]
  DUPTABLE R19 K196 [{"TextColor3"}]
  LOADK R20 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R20 R19 K29 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K198 [".State-Default"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K199 [":hover"]
  DUPTABLE R24 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R25 R24 K23 ["BackgroundColor3"]
  LOADK R25 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K203 [":pressed"]
  DUPTABLE R25 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R26 R25 K23 ["BackgroundColor3"]
  LOADK R26 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K206 [".State-Editing"]
  DUPTABLE R21 K208 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  LOADK R22 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R22 R21 K23 ["BackgroundColor3"]
  LOADK R22 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K207 ["ClipsDescendants"]
  LOADK R22 K124 ["$FontWeight700"]
  SETTABLEKS R22 R21 K13 ["Font"]
  LOADK R22 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R22 R21 K29 ["TextColor3"]
  GETIMPORT R22 K209 [Enum.TextTruncate.None]
  SETTABLEKS R22 R21 K184 ["TextTruncate"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K98 ["::UISizeConstraint"]
  DUPTABLE R22 K211 [{"MinSize", "MaxSize"}]
  GETIMPORT R23 K149 [Vector2.new]
  LOADN R24 80
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K210 ["MinSize"]
  GETIMPORT R23 K149 [Vector2.new]
  LOADN R24 80
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K99 ["MaxSize"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K84 ["::UIPadding"]
  DUPTABLE R23 K212 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  LOADK R24 K213 ["$GlobalSpace75"]
  SETTABLEKS R24 R23 K72 ["PaddingTop"]
  LOADK R24 K213 ["$GlobalSpace75"]
  SETTABLEKS R24 R23 K69 ["PaddingBottom"]
  LOADK R24 K65 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K70 ["PaddingLeft"]
  LOADK R24 K65 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K71 ["PaddingRight"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K214 ["::UICorner"]
  DUPTABLE R24 K216 [{"CornerRadius"}]
  LOADK R25 K217 ["$TabCornerRadius"]
  SETTABLEKS R25 R24 K215 ["CornerRadius"]
  CALL R22 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K218 [".Component-RibbonTabs"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 5
  MOVE R17 R2
  LOADK R18 K108 ["::UIFlexItem"]
  DUPTABLE R19 K221 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R20 K223 [Enum.UIFlexMode.Custom]
  SETTABLEKS R20 R19 K109 ["FlexMode"]
  LOADK R20 K224 [10000000000]
  SETTABLEKS R20 R19 K219 ["GrowRatio"]
  LOADK R20 K225 [1E-10]
  SETTABLEKS R20 R19 K220 ["ShrinkRatio"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  LOADK R21 K226 ["$RibbonTabsContainerSpacing"]
  SETTABLEKS R21 R20 K43 ["Padding"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K227 ["> #CollapsibleScroller"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K126 ["> #Scroller"]
  DUPTABLE R25 K228 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R26 K134 [Enum.AutomaticSize.XY]
  SETTABLEKS R26 R25 K127 ["AutomaticCanvasSize"]
  GETIMPORT R26 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R26 R25 K128 ["ScrollingDirection"]
  LOADN R26 0
  SETTABLEKS R26 R25 K129 ["ScrollBarThickness"]
  GETIMPORT R26 K139 [Enum.ScrollBarInset.None]
  SETTABLEKS R26 R25 K130 ["HorizontalScrollBarInset"]
  GETIMPORT R26 K230 [UDim2.fromScale]
  LOADN R27 1
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K93 ["Size"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K92 ["> #Wrapper"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K41 ["::UIListLayout"]
  DUPTABLE R33 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R34 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K42 ["FillDirection"]
  LOADK R34 K231 ["$RibbonTabsSpacing"]
  SETTABLEKS R34 R33 K43 ["Padding"]
  GETIMPORT R34 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K44 ["SortOrder"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K140 ["> #LeftGradient"]
  DUPTABLE R26 K142 [{"Size", "ZIndex"}]
  LOADK R27 K143 ["$TabGradientSize"]
  SETTABLEKS R27 R26 K93 ["Size"]
  LOADN R27 10
  SETTABLEKS R27 R26 K141 ["ZIndex"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K144 ["> #RightGradient"]
  DUPTABLE R27 K147 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R28 K149 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K145 ["AnchorPoint"]
  LOADK R28 K143 ["$TabGradientSize"]
  SETTABLEKS R28 R27 K93 ["Size"]
  GETIMPORT R28 K97 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K146 ["Position"]
  LOADN R28 10
  SETTABLEKS R28 R27 K141 ["ZIndex"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K232 ["> #More"]
  DUPTABLE R22 K234 [{"Visible"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K233 ["Visible"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K235 [".Compact > #More"]
  DUPTABLE R23 K234 [{"Visible"}]
  LOADB R24 1
  SETTABLEKS R24 R23 K233 ["Visible"]
  CALL R21 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K236 [".Role-More"]
  DUPTABLE R16 K94 [{"Size"}]
  LOADK R17 K237 ["$RibbonScrollerSize"]
  SETTABLEKS R17 R16 K93 ["Size"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K238 ["> .Ribbon-More"]
  DUPTABLE R20 K239 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R21 K149 [Vector2.new]
  LOADN R22 1
  LOADK R23 K240 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K145 ["AnchorPoint"]
  GETIMPORT R21 K97 [UDim2.new]
  LOADN R22 1
  LOADN R23 248
  LOADK R24 K240 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K146 ["Position"]
  LOADN R21 3
  SETTABLEKS R21 R20 K141 ["ZIndex"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K241 [".Component-RibbonButton"]
  DUPTABLE R17 K244 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K242 ["AutoButtonColor"]
  LOADK R18 K20 ["$Transparency100"]
  SETTABLEKS R18 R17 K17 ["BackgroundTransparency"]
  LOADK R18 K21 ["$BorderNone"]
  SETTABLEKS R18 R17 K18 ["BorderSizePixel"]
  LOADK R18 K245 [""]
  SETTABLEKS R18 R17 K243 ["Text"]
  NEWTABLE R18 0 10
  MOVE R19 R2
  LOADK R20 K156 [".Small"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K98 ["::UISizeConstraint"]
  DUPTABLE R25 K100 [{"MaxSize"}]
  LOADK R26 K246 ["$RibbonButtonSmallMaxSize"]
  SETTABLEKS R26 R25 K99 ["MaxSize"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K247 [".Component-SplitButton > #StateLayer"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K248 ["> #RibbonTool"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K84 ["::UIPadding"]
  DUPTABLE R34 K168 [{"PaddingLeft"}]
  LOADK R35 K249 ["$SplitButtonPaddingLeftSmall"]
  SETTABLEKS R35 R34 K70 ["PaddingLeft"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K250 ["> TextLabel"]
  DUPTABLE R22 K251 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R23 K20 ["$Transparency100"]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K15 ["$FontWeight400"]
  SETTABLEKS R23 R22 K13 ["Font"]
  LOADN R23 2
  SETTABLEKS R23 R22 K50 ["LayoutOrder"]
  LOADK R23 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R23 R22 K29 ["TextColor3"]
  LOADK R23 K252 ["$RibbonButtonLabelTextSize"]
  SETTABLEKS R23 R22 K33 ["TextSize"]
  GETIMPORT R23 K254 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R23 R22 K184 ["TextTruncate"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K255 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R23 K256 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R24 K20 ["$Transparency100"]
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  LOADK R24 K21 ["$BorderNone"]
  SETTABLEKS R24 R23 K18 ["BorderSizePixel"]
  LOADN R24 0
  SETTABLEKS R24 R23 K50 ["LayoutOrder"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K1 [script]
  DUPTABLE R27 K94 [{"Size"}]
  LOADK R28 K2 ["Parent"]
  SETTABLEKS R28 R27 K93 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K3 ["require"]
  DUPTABLE R28 K94 [{"Size"}]
  LOADK R29 K4 [require]
  SETTABLEKS R29 R28 K93 ["Size"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K248 ["> #RibbonTool"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K214 ["::UICorner"]
  DUPTABLE R28 K216 [{"CornerRadius"}]
  LOADK R29 K5 ["Packages"]
  SETTABLEKS R29 R28 K215 ["CornerRadius"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K247 [".Component-SplitButton > #StateLayer"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K214 ["::UICorner"]
  DUPTABLE R29 K216 [{"CornerRadius"}]
  LOADK R30 K5 ["Packages"]
  SETTABLEKS R30 R29 K215 ["CornerRadius"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K248 ["> #RibbonTool"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K214 ["::UICorner"]
  DUPTABLE R34 K216 [{"CornerRadius"}]
  LOADK R35 K5 ["Packages"]
  SETTABLEKS R35 R34 K215 ["CornerRadius"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K195 [".State-Disabled"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K6 ["Framework"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K7 ["Styling"]
  DUPTABLE R34 K265 [{"ImageTransparency"}]
  LOADK R35 K10 ["SharedFlags"]
  SETTABLEKS R35 R34 K264 ["ImageTransparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K198 [".State-Default"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K199 [":hover"]
  DUPTABLE R35 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  LOADK R36 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K203 [":pressed"]
  DUPTABLE R36 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R37 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R37 R36 K17 ["BackgroundTransparency"]
  LOADK R37 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R37 R36 K23 ["BackgroundColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K191 [".State-Selected"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K6 ["Framework"]
  DUPTABLE R32 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R33 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R33 R32 K17 ["BackgroundTransparency"]
  LOADK R33 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R33 R32 K23 ["BackgroundColor3"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K13 ["Font"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K14 [{"Font"}]
  DUPTABLE R33 K271 [{"BackgroundTransparency"}]
  LOADK R34 K16 [".Role-Surface"]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K17 ["BackgroundTransparency"]
  DUPTABLE R37 K276 [{"Color", "Rotation", "Transparency"}]
  LOADK R38 K21 ["$BorderNone"]
  SETTABLEKS R38 R37 K274 ["Color"]
  LOADK R38 K22 [".Role-Surface100"]
  SETTABLEKS R38 R37 K275 ["Rotation"]
  LOADK R38 K23 ["BackgroundColor3"]
  SETTABLEKS R38 R37 K176 ["Transparency"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K24 [{"BackgroundColor3", "BorderSizePixel"}]
  DUPTABLE R34 K271 [{"BackgroundTransparency"}]
  LOADK R35 K16 [".Role-Surface"]
  SETTABLEKS R35 R34 K17 ["BackgroundTransparency"]
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K17 ["BackgroundTransparency"]
  DUPTABLE R38 K276 [{"Color", "Rotation", "Transparency"}]
  LOADK R39 K25 ["$SemanticColorSurface100"]
  SETTABLEKS R39 R38 K274 ["Color"]
  LOADK R39 K26 [".Role-Surface200"]
  SETTABLEKS R39 R38 K275 ["Rotation"]
  LOADK R39 K27 ["$SemanticColorSurface200"]
  SETTABLEKS R39 R38 K176 ["Transparency"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K28 [".Role-Text"]
  DUPTABLE R30 K285 [{"LayoutOrder", "Size"}]
  LOADN R31 1
  SETTABLEKS R31 R30 K50 ["LayoutOrder"]
  LOADK R31 K30 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R31 R30 K93 ["Size"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K156 [".Small"]
  DUPTABLE R34 K94 [{"Size"}]
  GETIMPORT R35 K97 [UDim2.new]
  LOADN R36 0
  LOADN R37 4
  LOADN R38 0
  LOADN R39 24
  CALL R35 4 1
  SETTABLEKS R35 R34 K93 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K31 ["$SemanticColorContentStandard"]
  DUPTABLE R35 K288 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R36 K149 [Vector2.new]
  LOADN R37 1
  LOADN R38 1
  CALL R36 2 1
  SETTABLEKS R36 R35 K145 ["AnchorPoint"]
  LOADB R36 0
  SETTABLEKS R36 R35 K242 ["AutoButtonColor"]
  GETIMPORT R36 K230 [UDim2.fromScale]
  LOADN R37 1
  LOADN R38 1
  CALL R36 2 1
  SETTABLEKS R36 R35 K146 ["Position"]
  LOADK R36 K245 [""]
  SETTABLEKS R36 R35 K243 ["Text"]
  LOADN R36 1
  SETTABLEKS R36 R35 K33 ["TextSize"]
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K33 ["TextSize"]
  DUPTABLE R39 K291 [{"Image", "Size"}]
  LOADK R40 K36 ["$ContentTextFontSize"]
  SETTABLEKS R40 R39 K290 ["Image"]
  GETIMPORT R40 K294 [UDim2.fromOffset]
  LOADN R41 4
  LOADN R42 4
  CALL R40 2 1
  SETTABLEKS R40 R39 K93 ["Size"]
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K195 [".State-Disabled"]
  DUPTABLE R43 K265 [{"ImageTransparency"}]
  LOADK R44 K10 ["SharedFlags"]
  SETTABLEKS R44 R43 K264 ["ImageTransparency"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K39 ["$TitleTextFontSize"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K41 ["::UIListLayout"]
  DUPTABLE R22 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K42 ["FillDirection"]
  LOADK R23 K65 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K43 ["Padding"]
  GETIMPORT R23 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K44 ["SortOrder"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K40 [".Role-Row"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K41 ["::UIListLayout"]
  DUPTABLE R27 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R28 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K42 ["FillDirection"]
  LOADK R28 K63 ["$GlobalSpace50"]
  SETTABLEKS R28 R27 K43 ["Padding"]
  GETIMPORT R28 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K44 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K42 ["FillDirection"]
  DUPTABLE R19 K299 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K242 ["AutoButtonColor"]
  LOADK R20 K245 [""]
  SETTABLEKS R20 R19 K243 ["Text"]
  GETIMPORT R20 K294 [UDim2.fromOffset]
  LOADN R21 0
  LOADN R22 24
  CALL R20 2 1
  SETTABLEKS R20 R19 K93 ["Size"]
  NEWTABLE R20 0 6
  MOVE R21 R2
  LOADK R22 K214 ["::UICorner"]
  DUPTABLE R23 K216 [{"CornerRadius"}]
  LOADK R24 K5 ["Packages"]
  SETTABLEKS R24 R23 K215 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K44 ["SortOrder"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K45 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R28 K302 [{"LayoutOrder"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K1 [script]
  DUPTABLE R32 K94 [{"Size"}]
  LOADK R33 K2 ["Parent"]
  SETTABLEKS R33 R32 K93 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K3 ["require"]
  DUPTABLE R33 K94 [{"Size"}]
  LOADK R34 K4 [require]
  SETTABLEKS R34 R33 K93 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K47 ["Horizontal"]
  DUPTABLE R34 K302 [{"LayoutOrder"}]
  LOADN R35 3
  SETTABLEKS R35 R34 K50 ["LayoutOrder"]
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K48 [Enum.FillDirection.Horizontal]
  DUPTABLE R29 K305 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R30 K124 ["$FontWeight700"]
  SETTABLEKS R30 R29 K13 ["Font"]
  LOADK R30 K50 ["LayoutOrder"]
  SETTABLEKS R30 R29 K33 ["TextSize"]
  LOADN R30 2
  SETTABLEKS R30 R29 K50 ["LayoutOrder"]
  LOADK R30 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R30 R29 K29 ["TextColor3"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K156 [".Small"]
  DUPTABLE R33 K307 [{"TextSize"}]
  LOADK R34 K188 ["$FontSize50"]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K52 [".ConvertibleToColumn"]
  DUPTABLE R34 K307 [{"TextSize"}]
  LOADK R35 K53 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K195 [".State-Disabled"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K54 ["$ConvertibleRowToColumnPadding"]
  DUPTABLE R29 K265 [{"ImageTransparency"}]
  LOADK R30 K10 ["SharedFlags"]
  SETTABLEKS R30 R29 K264 ["ImageTransparency"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K55 [".Role-Column"]
  DUPTABLE R30 K196 [{"TextColor3"}]
  LOADK R31 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R31 R30 K29 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K198 [".State-Default"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K56 ["Vertical"]
  DUPTABLE R30 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  LOADK R31 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K57 [Enum.FillDirection.Vertical]
  DUPTABLE R31 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R32 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R32 R31 K17 ["BackgroundTransparency"]
  LOADK R32 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R32 R31 K23 ["BackgroundColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K58 ["$ColumnSpacingDefault"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K59 [".SpacingMedium"]
  DUPTABLE R31 K318 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R32 K320 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R32 R31 K316 ["ApplyStrokeMode"]
  LOADK R32 K91 ["$SemanticColorDivider"]
  SETTABLEKS R32 R31 K274 ["Color"]
  LOADK R32 K83 ["$BorderMedium"]
  SETTABLEKS R32 R31 K317 ["Thickness"]
  LOADK R32 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R32 R31 K176 ["Transparency"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K65 ["$GlobalSpace100"]
  DUPTABLE R28 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K66 [".X-RowSpace200"]
  SETTABLEKS R29 R28 K23 ["BackgroundColor3"]
  LOADK R29 K16 [".Role-Surface"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K198 [".State-Default"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K56 ["Vertical"]
  DUPTABLE R36 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R37 K67 ["$GlobalSpace200"]
  SETTABLEKS R37 R36 K17 ["BackgroundTransparency"]
  LOADK R37 K68 [".X-Pad150 ::UIPadding"]
  SETTABLEKS R37 R36 K23 ["BackgroundColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K57 [Enum.FillDirection.Vertical]
  DUPTABLE R37 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R38 K69 ["PaddingBottom"]
  SETTABLEKS R38 R37 K17 ["BackgroundTransparency"]
  LOADK R38 K70 ["PaddingLeft"]
  SETTABLEKS R38 R37 K23 ["BackgroundColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K55 [".Role-Column"]
  DUPTABLE R33 K196 [{"TextColor3"}]
  LOADK R34 K122 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R34 R33 K29 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K71 ["PaddingRight"]
  DUPTABLE R20 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K20 ["$Transparency100"]
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  LOADK R21 K21 ["$BorderNone"]
  SETTABLEKS R21 R20 K18 ["BorderSizePixel"]
  NEWTABLE R21 0 7
  MOVE R22 R2
  LOADK R23 K72 ["PaddingTop"]
  DUPTABLE R24 K329 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K242 ["AutoButtonColor"]
  LOADK R25 K20 ["$Transparency100"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  LOADK R25 K21 ["$BorderNone"]
  SETTABLEKS R25 R24 K18 ["BorderSizePixel"]
  LOADN R25 1
  SETTABLEKS R25 R24 K50 ["LayoutOrder"]
  LOADK R25 K245 [""]
  SETTABLEKS R25 R24 K243 ["Text"]
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K74 ["$GlobalSpace150"]
  DUPTABLE R28 K331 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R29 K20 ["$Transparency100"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  LOADK R29 K21 ["$BorderNone"]
  SETTABLEKS R29 R28 K18 ["BorderSizePixel"]
  LOADK R29 K15 ["$FontWeight400"]
  SETTABLEKS R29 R28 K13 ["Font"]
  LOADN R29 2
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K76 ["BorderColor3"]
  DUPTABLE R29 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R30 K20 ["$Transparency100"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  LOADK R30 K21 ["$BorderNone"]
  SETTABLEKS R30 R29 K18 ["BorderSizePixel"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K77 ["BorderMode"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K72 ["PaddingTop"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K41 ["::UIListLayout"]
  DUPTABLE R33 K334 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R34 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K42 ["FillDirection"]
  LOADK R34 K65 ["$GlobalSpace100"]
  SETTABLEKS R34 R33 K43 ["Padding"]
  GETIMPORT R34 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K44 ["SortOrder"]
  GETIMPORT R34 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R34 R33 K160 ["VerticalAlignment"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K76 ["BorderColor3"]
  DUPTABLE R34 K94 [{"Size"}]
  LOADK R35 K4 [require]
  SETTABLEKS R35 R34 K93 ["Size"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K156 [".Small"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K72 ["PaddingTop"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K74 ["$GlobalSpace150"]
  DUPTABLE R34 K307 [{"TextSize"}]
  LOADK R35 K188 ["$FontSize50"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K79 ["$DEPRECATED_MainBackground"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K72 ["PaddingTop"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K74 ["$GlobalSpace150"]
  DUPTABLE R35 K307 [{"TextSize"}]
  LOADK R36 K50 ["LayoutOrder"]
  SETTABLEKS R36 R35 K33 ["TextSize"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K52 [".ConvertibleToColumn"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K72 ["PaddingTop"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K41 ["::UIListLayout"]
  DUPTABLE R36 K334 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R37 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R37 R36 K42 ["FillDirection"]
  LOADK R37 K74 ["$GlobalSpace150"]
  SETTABLEKS R37 R36 K43 ["Padding"]
  GETIMPORT R37 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K44 ["SortOrder"]
  GETIMPORT R37 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R37 R36 K160 ["VerticalAlignment"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K76 ["BorderColor3"]
  DUPTABLE R37 K94 [{"Size"}]
  LOADK R38 K2 ["Parent"]
  SETTABLEKS R38 R37 K93 ["Size"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K74 ["$GlobalSpace150"]
  DUPTABLE R38 K307 [{"TextSize"}]
  LOADK R39 K53 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R39 R38 K33 ["TextSize"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K198 [".State-Default"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 4
  MOVE R31 R2
  LOADK R32 K72 ["PaddingTop"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K80 ["$SemanticColorDividerTransparency88"]
  DUPTABLE R37 K337 [{"Image"}]
  LOADK R38 K82 [Enum.BorderMode.Inset]
  SETTABLEKS R38 R37 K290 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K83 ["$BorderMedium"]
  DUPTABLE R38 K196 [{"TextColor3"}]
  LOADK R39 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R39 R38 K29 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K84 ["::UIPadding"]
  DUPTABLE R34 K337 [{"Image"}]
  LOADK R35 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R35 R34 K290 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K86 ["$MenuPadding"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K72 ["PaddingTop"]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K76 ["BorderColor3"]
  DUPTABLE R43 K337 [{"Image"}]
  LOADK R44 K87 ["> #Menu ::UIListLayout"]
  SETTABLEKS R44 R43 K290 ["Image"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K88 ["$MenuColumnSpacing"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K72 ["PaddingTop"]
  NEWTABLE R40 0 0
  NEWTABLE R41 0 1
  MOVE R42 R2
  LOADK R43 K76 ["BorderColor3"]
  DUPTABLE R44 K337 [{"Image"}]
  LOADK R45 K89 [".Role-Tooltip"]
  SETTABLEKS R45 R44 K290 ["Image"]
  CALL R42 2 -1
  SETLIST R41 R42 -1 [1]
  CALL R38 3 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K195 [".State-Disabled"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K72 ["PaddingTop"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 2
  MOVE R36 R2
  LOADK R37 K76 ["BorderColor3"]
  DUPTABLE R38 K337 [{"Image"}]
  LOADK R39 K90 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R39 R38 K290 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K74 ["$GlobalSpace150"]
  DUPTABLE R39 K196 [{"TextColor3"}]
  LOADK R40 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R40 R39 K29 ["TextColor3"]
  CALL R37 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K86 ["$MenuPadding"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K72 ["PaddingTop"]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K76 ["BorderColor3"]
  DUPTABLE R43 K337 [{"Image"}]
  LOADK R44 K91 ["$SemanticColorDivider"]
  SETTABLEKS R44 R43 K290 ["Image"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K88 ["$MenuColumnSpacing"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K72 ["PaddingTop"]
  NEWTABLE R40 0 0
  NEWTABLE R41 0 1
  MOVE R42 R2
  LOADK R43 K76 ["BorderColor3"]
  DUPTABLE R44 K337 [{"Image"}]
  LOADK R45 K92 ["> #Wrapper"]
  SETTABLEKS R45 R44 K290 ["Image"]
  CALL R42 2 -1
  SETLIST R41 R42 -1 [1]
  CALL R38 3 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K93 ["Size"]
  DUPTABLE R21 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R22 K20 ["$Transparency100"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  LOADK R22 K21 ["$BorderNone"]
  SETTABLEKS R22 R21 K18 ["BorderSizePixel"]
  NEWTABLE R22 0 9
  MOVE R23 R2
  LOADK R24 K94 [{"Size"}]
  DUPTABLE R25 K329 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R26 0
  SETTABLEKS R26 R25 K242 ["AutoButtonColor"]
  LOADK R26 K20 ["$Transparency100"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  LOADK R26 K21 ["$BorderNone"]
  SETTABLEKS R26 R25 K18 ["BorderSizePixel"]
  LOADN R26 1
  SETTABLEKS R26 R25 K50 ["LayoutOrder"]
  LOADK R26 K245 [""]
  SETTABLEKS R26 R25 K243 ["Text"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K95 ["UDim2"]
  DUPTABLE R26 K331 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R27 K20 ["$Transparency100"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  LOADK R27 K21 ["$BorderNone"]
  SETTABLEKS R27 R26 K18 ["BorderSizePixel"]
  LOADK R27 K15 ["$FontWeight400"]
  SETTABLEKS R27 R26 K13 ["Font"]
  LOADN R27 2
  SETTABLEKS R27 R26 K50 ["LayoutOrder"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K96 ["new"]
  DUPTABLE R27 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R28 K20 ["$Transparency100"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K21 ["$BorderNone"]
  SETTABLEKS R28 R27 K18 ["BorderSizePixel"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K77 ["BorderMode"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K94 [{"Size"}]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K41 ["::UIListLayout"]
  DUPTABLE R36 K334 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R37 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R37 R36 K42 ["FillDirection"]
  LOADK R37 K65 ["$GlobalSpace100"]
  SETTABLEKS R37 R36 K43 ["Padding"]
  GETIMPORT R37 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K44 ["SortOrder"]
  GETIMPORT R37 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R37 R36 K160 ["VerticalAlignment"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K96 ["new"]
  DUPTABLE R33 K94 [{"Size"}]
  LOADK R34 K4 [require]
  SETTABLEKS R34 R33 K93 ["Size"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K156 [".Small"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K95 ["UDim2"]
  DUPTABLE R33 K307 [{"TextSize"}]
  LOADK R34 K188 ["$FontSize50"]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K79 ["$DEPRECATED_MainBackground"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K95 ["UDim2"]
  DUPTABLE R34 K307 [{"TextSize"}]
  LOADK R35 K50 ["LayoutOrder"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K52 [".ConvertibleToColumn"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K94 [{"Size"}]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K41 ["::UIListLayout"]
  DUPTABLE R39 K334 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R40 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R40 R39 K42 ["FillDirection"]
  LOADK R40 K74 ["$GlobalSpace150"]
  SETTABLEKS R40 R39 K43 ["Padding"]
  GETIMPORT R40 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R40 R39 K44 ["SortOrder"]
  GETIMPORT R40 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R40 R39 K160 ["VerticalAlignment"]
  CALL R37 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K96 ["new"]
  DUPTABLE R36 K94 [{"Size"}]
  LOADK R37 K2 ["Parent"]
  SETTABLEKS R37 R36 K93 ["Size"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K95 ["UDim2"]
  DUPTABLE R37 K307 [{"TextSize"}]
  LOADK R38 K53 ["$ConvertibleRowToColumnFillDirection"]
  SETTABLEKS R38 R37 K33 ["TextSize"]
  CALL R35 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K198 [".State-Default"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 4
  MOVE R34 R2
  LOADK R35 K96 ["new"]
  DUPTABLE R36 K337 [{"Image"}]
  LOADK R37 K97 [UDim2.new]
  SETTABLEKS R37 R36 K290 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K98 ["::UISizeConstraint"]
  DUPTABLE R37 K337 [{"Image"}]
  LOADK R38 K99 ["MaxSize"]
  SETTABLEKS R38 R37 K290 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K100 [{"MaxSize"}]
  DUPTABLE R38 K337 [{"Image"}]
  LOADK R39 K101 ["$TooltipMaxSize"]
  SETTABLEKS R39 R38 K290 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K95 ["UDim2"]
  DUPTABLE R39 K196 [{"TextColor3"}]
  LOADK R40 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R40 R39 K29 ["TextColor3"]
  CALL R37 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K195 [".State-Disabled"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 3
  MOVE R35 R2
  LOADK R36 K96 ["new"]
  DUPTABLE R37 K337 [{"Image"}]
  LOADK R38 K102 ["$TooltipContentSpacing"]
  SETTABLEKS R38 R37 K290 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K100 [{"MaxSize"}]
  DUPTABLE R38 K337 [{"Image"}]
  LOADK R39 K103 ["> #Content"]
  SETTABLEKS R39 R38 K290 ["Image"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K95 ["UDim2"]
  DUPTABLE R39 K196 [{"TextColor3"}]
  LOADK R40 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R40 R39 K29 ["TextColor3"]
  CALL R37 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K104 ["$TooltipTextSpacing"]
  DUPTABLE R22 K361 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K242 ["AutoButtonColor"]
  LOADK R23 K21 ["$BorderNone"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  LOADK R23 K20 ["$Transparency100"]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K245 [""]
  SETTABLEKS R23 R22 K243 ["Text"]
  NEWTABLE R23 0 9
  MOVE R24 R2
  LOADK R25 K84 ["::UIPadding"]
  DUPTABLE R26 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R27 K106 [{"FillDirection", "SortOrder"}]
  SETTABLEKS R27 R26 K70 ["PaddingLeft"]
  LOADK R27 K106 [{"FillDirection", "SortOrder"}]
  SETTABLEKS R27 R26 K71 ["PaddingRight"]
  LOADK R27 K107 ["> #Spacer"]
  SETTABLEKS R27 R26 K72 ["PaddingTop"]
  LOADK R27 K107 ["> #Spacer"]
  SETTABLEKS R27 R26 K69 ["PaddingBottom"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K214 ["::UICorner"]
  DUPTABLE R27 K216 [{"CornerRadius"}]
  LOADK R28 K5 ["Packages"]
  SETTABLEKS R28 R27 K215 ["CornerRadius"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K108 ["::UIFlexItem"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 5
  MOVE R30 R2
  LOADK R31 K41 ["::UIListLayout"]
  DUPTABLE R32 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R33 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K42 ["FillDirection"]
  LOADK R33 K109 ["FlexMode"]
  SETTABLEKS R33 R32 K43 ["Padding"]
  GETIMPORT R33 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K44 ["SortOrder"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K110 [{"FlexMode"}]
  DUPTABLE R33 K367 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R34 K21 ["$BorderNone"]
  SETTABLEKS R34 R33 K18 ["BorderSizePixel"]
  LOADK R34 K20 ["$Transparency100"]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  LOADN R34 0
  SETTABLEKS R34 R33 K50 ["LayoutOrder"]
  LOADK R34 K4 [require]
  SETTABLEKS R34 R33 K93 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K112 ["Fill"]
  DUPTABLE R34 K367 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R35 K21 ["$BorderNone"]
  SETTABLEKS R35 R34 K18 ["BorderSizePixel"]
  LOADK R35 K20 ["$Transparency100"]
  SETTABLEKS R35 R34 K17 ["BackgroundTransparency"]
  LOADN R35 1
  SETTABLEKS R35 R34 K50 ["LayoutOrder"]
  LOADK R35 K2 ["Parent"]
  SETTABLEKS R35 R34 K93 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K114 ["> #Text"]
  DUPTABLE R35 K369 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R36 K20 ["$Transparency100"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  LOADK R36 K15 ["$FontWeight400"]
  SETTABLEKS R36 R35 K13 ["Font"]
  LOADK R36 K188 ["$FontSize50"]
  SETTABLEKS R36 R35 K33 ["TextSize"]
  LOADN R36 2
  SETTABLEKS R36 R35 K50 ["LayoutOrder"]
  LOADK R36 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K29 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K114 ["> #Text"]
  DUPTABLE R36 K285 [{"LayoutOrder", "Size"}]
  LOADN R37 3
  SETTABLEKS R37 R36 K50 ["LayoutOrder"]
  LOADK R37 K4 [require]
  SETTABLEKS R37 R36 K93 ["Size"]
  CALL R34 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K115 ["TextWrapped"]
  DUPTABLE R29 K372 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R30 K149 [Vector2.new]
  LOADN R31 1
  LOADK R32 K240 [0.5]
  CALL R30 2 1
  SETTABLEKS R30 R29 K145 ["AnchorPoint"]
  GETIMPORT R30 K230 [UDim2.fromScale]
  LOADN R31 1
  LOADK R32 K240 [0.5]
  CALL R30 2 1
  SETTABLEKS R30 R29 K146 ["Position"]
  LOADK R30 K21 ["$BorderNone"]
  SETTABLEKS R30 R29 K18 ["BorderSizePixel"]
  LOADK R30 K20 ["$Transparency100"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  LOADK R30 K117 [{"TextWrapped", "TextXAlignment"}]
  SETTABLEKS R30 R29 K290 ["Image"]
  LOADN R30 3
  SETTABLEKS R30 R29 K50 ["LayoutOrder"]
  LOADK R30 K4 [require]
  SETTABLEKS R30 R29 K93 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K118 ["Left"]
  DUPTABLE R30 K94 [{"Size"}]
  LOADK R31 K4 [require]
  SETTABLEKS R31 R30 K93 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K191 [".State-Selected"]
  DUPTABLE R31 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R32 R31 K23 ["BackgroundColor3"]
  LOADK R32 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R32 R31 K17 ["BackgroundTransparency"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K119 [Enum.TextXAlignment.Left]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K108 ["::UIFlexItem"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K110 [{"FlexMode"}]
  DUPTABLE R40 K337 [{"Image"}]
  LOADK R41 K120 [">> TextLabel"]
  SETTABLEKS R41 R40 K290 ["Image"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K199 [":hover"]
  DUPTABLE R37 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R38 K122 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R38 R37 K23 ["BackgroundColor3"]
  LOADK R38 K123 [">> #Title"]
  SETTABLEKS R38 R37 K17 ["BackgroundTransparency"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K195 [".State-Disabled"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K108 ["::UIFlexItem"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 2
  MOVE R40 R2
  LOADK R41 K124 ["$FontWeight700"]
  DUPTABLE R42 K265 [{"ImageTransparency"}]
  LOADK R43 K10 ["SharedFlags"]
  SETTABLEKS R43 R42 K264 ["ImageTransparency"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K114 ["> #Text"]
  DUPTABLE R43 K196 [{"TextColor3"}]
  LOADK R44 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R44 R43 K29 ["TextColor3"]
  CALL R41 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K125 [".Role-Scroller"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K195 [".State-Disabled"]
  DUPTABLE R27 K265 [{"ImageTransparency"}]
  LOADK R28 K10 ["SharedFlags"]
  SETTABLEKS R28 R27 K264 ["ImageTransparency"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K126 ["> #Scroller"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K84 ["::UIPadding"]
  DUPTABLE R12 K383 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  LOADK R13 K128 ["ScrollingDirection"]
  SETTABLEKS R13 R12 K70 ["PaddingLeft"]
  LOADK R13 K128 ["ScrollingDirection"]
  SETTABLEKS R13 R12 K72 ["PaddingTop"]
  LOADK R13 K128 ["ScrollingDirection"]
  SETTABLEKS R13 R12 K69 ["PaddingBottom"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K129 ["ScrollBarThickness"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 7
  MOVE R11 R2
  LOADK R12 K59 [".SpacingMedium"]
  DUPTABLE R13 K386 [{"Thickness"}]
  LOADK R14 K21 ["$BorderNone"]
  SETTABLEKS R14 R13 K317 ["Thickness"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K214 ["::UICorner"]
  DUPTABLE R14 K216 [{"CornerRadius"}]
  LOADK R15 K131 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  SETTABLEKS R15 R14 K215 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K132 ["AutomaticSize"]
  DUPTABLE R15 K389 [{"TextSize", "TextXAlignment", "TextTruncate"}]
  LOADK R16 K188 ["$FontSize50"]
  SETTABLEKS R16 R15 K33 ["TextSize"]
  GETIMPORT R16 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K116 ["TextXAlignment"]
  GETIMPORT R16 K190 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R16 R15 K184 ["TextTruncate"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K84 ["::UIPadding"]
  DUPTABLE R19 K390 [{"PaddingLeft", "PaddingRight"}]
  LOADK R20 K63 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K70 ["PaddingLeft"]
  LOADK R20 K63 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K71 ["PaddingRight"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K198 [".State-Default"]
  DUPTABLE R16 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K135 ["X"]
  SETTABLEKS R17 R16 K23 ["BackgroundColor3"]
  LOADK R17 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K132 ["AutomaticSize"]
  DUPTABLE R20 K196 [{"TextColor3"}]
  LOADK R21 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R21 R20 K29 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K137 ["ScrollBarInset"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K59 [".SpacingMedium"]
  DUPTABLE R21 K394 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R22 K320 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R22 R21 K316 ["ApplyStrokeMode"]
  LOADK R22 K139 [Enum.ScrollBarInset.None]
  SETTABLEKS R22 R21 K274 ["Color"]
  LOADK R22 K83 ["$BorderMedium"]
  SETTABLEKS R22 R21 K317 ["Thickness"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K132 ["AutomaticSize"]
  DUPTABLE R22 K196 [{"TextColor3"}]
  LOADK R23 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K29 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K140 ["> #LeftGradient"]
  DUPTABLE R18 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K141 ["ZIndex"]
  SETTABLEKS R19 R18 K23 ["BackgroundColor3"]
  LOADK R19 K142 [{"Size", "ZIndex"}]
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K132 ["AutomaticSize"]
  DUPTABLE R22 K196 [{"TextColor3"}]
  LOADK R23 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K29 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K195 [".State-Disabled"]
  DUPTABLE R19 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K135 ["X"]
  SETTABLEKS R20 R19 K23 ["BackgroundColor3"]
  LOADK R20 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K132 ["AutomaticSize"]
  DUPTABLE R23 K196 [{"TextColor3"}]
  LOADK R24 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R24 R23 K29 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K143 ["$TabGradientSize"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K31 ["$SemanticColorContentStandard"]
  DUPTABLE R14 K94 [{"Size"}]
  GETIMPORT R15 K294 [UDim2.fromOffset]
  LOADN R16 16
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K93 ["Size"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K144 ["> #RightGradient"]
  DUPTABLE R18 K94 [{"Size"}]
  GETIMPORT R19 K294 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 8
  CALL R19 2 1
  SETTABLEKS R19 R18 K93 ["Size"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K198 [".State-Default"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K145 ["AnchorPoint"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K146 ["Position"]
  DUPTABLE R23 K337 [{"Image"}]
  LOADK R24 K147 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  SETTABLEKS R24 R23 K290 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K148 ["Vector2"]
  DUPTABLE R24 K337 [{"Image"}]
  LOADK R25 K149 [Vector2.new]
  SETTABLEKS R25 R24 K290 ["Image"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K150 [".Role-DividerH"]
  DUPTABLE R25 K337 [{"Image"}]
  LOADK R26 K151 ["> Frame"]
  SETTABLEKS R26 R25 K290 ["Image"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K146 ["Position"]
  DUPTABLE R24 K337 [{"Image"}]
  LOADK R25 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R25 R24 K290 ["Image"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K148 ["Vector2"]
  DUPTABLE R25 K337 [{"Image"}]
  LOADK R26 K154 [".Role-DividerV"]
  SETTABLEKS R26 R25 K290 ["Image"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K150 [".Role-DividerH"]
  DUPTABLE R26 K337 [{"Image"}]
  LOADK R27 K155 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R27 R26 K290 ["Image"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K195 [".State-Disabled"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K145 ["AnchorPoint"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K156 [".Small"]
  DUPTABLE R24 K337 [{"Image"}]
  LOADK R25 K151 ["> Frame"]
  SETTABLEKS R25 R24 K290 ["Image"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K156 [".Small"]
  DUPTABLE R25 K337 [{"Image"}]
  LOADK R26 K155 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R26 R25 K290 ["Image"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K157 ["$SmallSeparator"]
  DUPTABLE R11 K271 [{"BackgroundTransparency"}]
  LOADK R12 K20 ["$Transparency100"]
  SETTABLEKS R12 R11 K17 ["BackgroundTransparency"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K158 [".Role-Mezzanine"]
  DUPTABLE R15 K216 [{"CornerRadius"}]
  LOADK R16 K5 ["Packages"]
  SETTABLEKS R16 R15 K215 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K159 ["HorizontalFlex"]
  DUPTABLE R16 K318 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R17 K320 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R17 R16 K316 ["ApplyStrokeMode"]
  LOADK R17 K91 ["$SemanticColorDivider"]
  SETTABLEKS R17 R16 K274 ["Color"]
  LOADK R17 K83 ["$BorderMedium"]
  SETTABLEKS R17 R16 K317 ["Thickness"]
  LOADK R17 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R17 R16 K176 ["Transparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K160 ["VerticalAlignment"]
  DUPTABLE R17 K271 [{"BackgroundTransparency"}]
  LOADK R18 K20 ["$Transparency100"]
  SETTABLEKS R18 R17 K17 ["BackgroundTransparency"]
  NEWTABLE R18 0 4
  MOVE R19 R2
  LOADK R20 K158 [".Role-Mezzanine"]
  DUPTABLE R21 K216 [{"CornerRadius"}]
  LOADK R22 K5 ["Packages"]
  SETTABLEKS R22 R21 K215 ["CornerRadius"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K161 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  DUPTABLE R22 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R23 K20 ["$Transparency100"]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K21 ["$BorderNone"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K199 [":hover"]
  DUPTABLE R26 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R27 R26 K23 ["BackgroundColor3"]
  LOADK R27 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K162 ["UIFlexAlignment"]
  DUPTABLE R27 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K163 ["SpaceBetween"]
  DUPTABLE R23 K420 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
  GETIMPORT R24 K294 [UDim2.fromOffset]
  LOADN R25 82
  LOADN R26 24
  CALL R24 2 1
  SETTABLEKS R24 R23 K93 ["Size"]
  LOADK R24 K188 ["$FontSize50"]
  SETTABLEKS R24 R23 K33 ["TextSize"]
  LOADK R24 K186 ["$FontWeight600"]
  SETTABLEKS R24 R23 K13 ["Font"]
  LOADB R24 0
  SETTABLEKS R24 R23 K242 ["AutoButtonColor"]
  LOADK R24 K21 ["$BorderNone"]
  SETTABLEKS R24 R23 K18 ["BorderSizePixel"]
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K84 ["::UIPadding"]
  DUPTABLE R27 K390 [{"PaddingLeft", "PaddingRight"}]
  LOADK R28 K74 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K70 ["PaddingLeft"]
  LOADK R28 K74 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K71 ["PaddingRight"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K198 [".State-Default"]
  DUPTABLE R28 K421 [{"BackgroundTransparency", "TextColor3"}]
  LOADK R29 K20 ["$Transparency100"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  LOADK R29 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R29 R28 K29 ["TextColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K191 [".State-Selected"]
  DUPTABLE R29 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R30 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  LOADK R30 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  LOADK R30 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R30 R29 K29 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K166 [Enum.VerticalAlignment.Center]
  DUPTABLE R24 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R25 K91 ["$SemanticColorDivider"]
  SETTABLEKS R25 R24 K23 ["BackgroundColor3"]
  LOADK R25 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  LOADK R25 K21 ["$BorderNone"]
  SETTABLEKS R25 R24 K18 ["BorderSizePixel"]
  LOADK R25 K157 ["$SmallSeparator"]
  SETTABLEKS R25 R24 K93 ["Size"]
  CALL R22 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K167 [">> .LeftMezzControls"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 4
  MOVE R14 R2
  LOADK R15 K41 ["::UIListLayout"]
  DUPTABLE R16 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K42 ["FillDirection"]
  LOADK R17 K65 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K43 ["Padding"]
  GETIMPORT R17 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K44 ["SortOrder"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K84 ["::UIPadding"]
  DUPTABLE R17 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R18 K74 ["$GlobalSpace150"]
  SETTABLEKS R18 R17 K70 ["PaddingLeft"]
  LOADK R18 K74 ["$GlobalSpace150"]
  SETTABLEKS R18 R17 K71 ["PaddingRight"]
  LOADK R18 K65 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K72 ["PaddingTop"]
  LOADK R18 K65 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K69 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K168 [{"PaddingLeft"}]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K41 ["::UIListLayout"]
  DUPTABLE R22 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K42 ["FillDirection"]
  LOADK R23 K65 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K43 ["Padding"]
  GETIMPORT R23 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K44 ["SortOrder"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K151 ["> Frame"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K169 ["$MezzaninePadding"]
  DUPTABLE R27 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R28 K91 ["$SemanticColorDivider"]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K21 ["$BorderNone"]
  SETTABLEKS R28 R27 K18 ["BorderSizePixel"]
  LOADK R28 K157 ["$SmallSeparator"]
  SETTABLEKS R28 R27 K93 ["Size"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K170 [">> .RightMezzControls"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K107 ["> #Spacer"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K108 ["::UIFlexItem"]
  DUPTABLE R27 K110 [{"FlexMode"}]
  GETIMPORT R28 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R28 R27 K109 ["FlexMode"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K171 [{"PaddingRight"}]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K41 ["::UIListLayout"]
  DUPTABLE R17 K429 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R18 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K42 ["FillDirection"]
  GETIMPORT R18 K430 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K428 ["HorizontalAlignment"]
  GETIMPORT R18 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K44 ["SortOrder"]
  GETIMPORT R18 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K160 ["VerticalAlignment"]
  LOADK R18 K175 [".X-FadeLeft ::UIGradient"]
  SETTABLEKS R18 R17 K43 ["Padding"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K250 ["> TextLabel"]
  DUPTABLE R18 K369 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R19 K20 ["$Transparency100"]
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  LOADK R19 K15 ["$FontWeight400"]
  SETTABLEKS R19 R18 K13 ["Font"]
  LOADK R19 K176 ["Transparency"]
  SETTABLEKS R19 R18 K33 ["TextSize"]
  LOADN R19 0
  SETTABLEKS R19 R18 K50 ["LayoutOrder"]
  LOADK R19 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R19 R18 K29 ["TextColor3"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K177 [{"Transparency"}]
  DUPTABLE R14 K434 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R15 K437 [Color3.fromHex]
  LOADK R16 K182 [".X-FadeRight ::UIGradient"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K23 ["BackgroundColor3"]
  LOADK R15 K16 [".Role-Surface"]
  SETTABLEKS R15 R14 K17 ["BackgroundTransparency"]
  GETIMPORT R15 K294 [UDim2.fromOffset]
  LOADN R16 40
  LOADN R17 24
  CALL R15 2 1
  SETTABLEKS R15 R14 K93 ["Size"]
  NEWTABLE R15 0 6
  MOVE R16 R2
  LOADK R17 K214 ["::UICorner"]
  DUPTABLE R18 K216 [{"CornerRadius"}]
  LOADK R19 K183 [".Component-RibbonTab"]
  SETTABLEKS R19 R18 K215 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K84 ["::UIPadding"]
  DUPTABLE R19 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R20 K128 ["ScrollingDirection"]
  SETTABLEKS R20 R19 K69 ["PaddingBottom"]
  LOADK R20 K128 ["ScrollingDirection"]
  SETTABLEKS R20 R19 K70 ["PaddingLeft"]
  LOADK R20 K128 ["ScrollingDirection"]
  SETTABLEKS R20 R19 K71 ["PaddingRight"]
  LOADK R20 K128 ["ScrollingDirection"]
  SETTABLEKS R20 R19 K72 ["PaddingTop"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K440 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R21 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K42 ["FillDirection"]
  GETIMPORT R21 K430 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K428 ["HorizontalAlignment"]
  GETIMPORT R21 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K44 ["SortOrder"]
  GETIMPORT R21 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R21 R20 K160 ["VerticalAlignment"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K151 ["> Frame"]
  DUPTABLE R21 K441 [{"BackgroundColor3", "Size"}]
  LOADK R22 K186 ["$FontWeight600"]
  SETTABLEKS R22 R21 K23 ["BackgroundColor3"]
  GETIMPORT R22 K294 [UDim2.fromOffset]
  LOADN R23 20
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K93 ["Size"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K214 ["::UICorner"]
  DUPTABLE R25 K216 [{"CornerRadius"}]
  LOADK R26 K183 [".Component-RibbonTab"]
  SETTABLEKS R26 R25 K215 ["CornerRadius"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K191 [".State-Selected"]
  DUPTABLE R22 K443 [{"BackgroundColor3"}]
  GETIMPORT R23 K437 [Color3.fromHex]
  LOADK R24 K188 ["$FontSize50"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K23 ["BackgroundColor3"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K41 ["::UIListLayout"]
  DUPTABLE R26 K445 [{"HorizontalAlignment"}]
  GETIMPORT R27 K447 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R27 R26 K428 ["HorizontalAlignment"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K195 [".State-Disabled"]
  DUPTABLE R23 K271 [{"BackgroundTransparency"}]
  LOADK R24 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K151 ["> Frame"]
  DUPTABLE R27 K271 [{"BackgroundTransparency"}]
  LOADK R28 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K193 ["$SemanticColorStatesSelected"]
  DUPTABLE R15 K299 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K242 ["AutoButtonColor"]
  LOADK R16 K245 [""]
  SETTABLEKS R16 R15 K243 ["Text"]
  GETIMPORT R16 K294 [UDim2.fromOffset]
  LOADN R17 85
  LOADN R18 24
  CALL R16 2 1
  SETTABLEKS R16 R15 K93 ["Size"]
  NEWTABLE R16 0 13
  MOVE R17 R2
  LOADK R18 K214 ["::UICorner"]
  DUPTABLE R19 K216 [{"CornerRadius"}]
  LOADK R20 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R20 R19 K215 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K195 [".State-Disabled"]
  DUPTABLE R20 K94 [{"Size"}]
  GETIMPORT R21 K294 [UDim2.fromOffset]
  LOADN R22 120
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K93 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K41 ["::UIListLayout"]
  DUPTABLE R21 K452 [{"HorizontalFlex"}]
  GETIMPORT R22 K453 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R22 R21 K159 ["HorizontalFlex"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K84 ["::UIPadding"]
  DUPTABLE R22 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K198 [".State-Default"]
  SETTABLEKS R23 R22 K70 ["PaddingLeft"]
  LOADK R23 K199 [":hover"]
  SETTABLEKS R23 R22 K71 ["PaddingRight"]
  LOADK R23 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  SETTABLEKS R23 R22 K72 ["PaddingTop"]
  LOADK R23 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R23 R22 K69 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K202 ["$SemanticColorStateLayerHoverTransparency"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K41 ["::UIListLayout"]
  DUPTABLE R27 K459 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
  GETIMPORT R28 K453 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R28 R27 K159 ["HorizontalFlex"]
  GETIMPORT R28 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K42 ["FillDirection"]
  GETIMPORT R28 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K44 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K156 [".Small"]
  DUPTABLE R24 K94 [{"Size"}]
  LOADK R25 K4 [require]
  SETTABLEKS R25 R24 K93 ["Size"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K108 ["::UIFlexItem"]
  DUPTABLE R28 K461 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R29 K223 [Enum.UIFlexMode.Custom]
  SETTABLEKS R29 R28 K109 ["FlexMode"]
  LOADN R29 0
  SETTABLEKS R29 R28 K460 ["ShrinkRation"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K206 [".State-Editing"]
  DUPTABLE R25 K302 [{"LayoutOrder"}]
  LOADN R26 0
  SETTABLEKS R26 R25 K50 ["LayoutOrder"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K47 ["Horizontal"]
  DUPTABLE R29 K302 [{"LayoutOrder"}]
  LOADN R30 3
  SETTABLEKS R30 R29 K50 ["LayoutOrder"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K207 ["ClipsDescendants"]
  DUPTABLE R26 K464 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R27 K21 ["$BorderNone"]
  SETTABLEKS R27 R26 K18 ["BorderSizePixel"]
  LOADK R27 K20 ["$Transparency100"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  LOADK R27 K209 [Enum.TextTruncate.None]
  SETTABLEKS R27 R26 K290 ["Image"]
  LOADN R27 4
  SETTABLEKS R27 R26 K50 ["LayoutOrder"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K210 ["MinSize"]
  DUPTABLE R30 K337 [{"Image"}]
  LOADK R31 K211 [{"MinSize", "MaxSize"}]
  SETTABLEKS R31 R30 K290 ["Image"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K212 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  DUPTABLE R27 K469 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R28 K15 ["$FontWeight400"]
  SETTABLEKS R28 R27 K13 ["Font"]
  LOADK R28 K188 ["$FontSize50"]
  SETTABLEKS R28 R27 K33 ["TextSize"]
  LOADK R28 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K29 ["TextColor3"]
  GETIMPORT R28 K254 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R28 R27 K184 ["TextTruncate"]
  GETIMPORT R28 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K116 ["TextXAlignment"]
  LOADN R28 2
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K198 [".State-Default"]
  DUPTABLE R28 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K135 ["X"]
  SETTABLEKS R29 R28 K23 ["BackgroundColor3"]
  LOADK R29 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K206 [".State-Editing"]
  DUPTABLE R32 K265 [{"ImageTransparency"}]
  LOADK R33 K214 ["::UICorner"]
  SETTABLEKS R33 R32 K264 ["ImageTransparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K215 ["CornerRadius"]
  DUPTABLE R29 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K141 ["ZIndex"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  LOADK R30 K142 [{"Size", "ZIndex"}]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K206 [".State-Editing"]
  DUPTABLE R33 K265 [{"ImageTransparency"}]
  LOADK R34 K16 [".Role-Surface"]
  SETTABLEKS R34 R33 K264 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K137 ["ScrollBarInset"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K59 [".SpacingMedium"]
  DUPTABLE R34 K394 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R35 K320 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R35 R34 K316 ["ApplyStrokeMode"]
  LOADK R35 K139 [Enum.ScrollBarInset.None]
  SETTABLEKS R35 R34 K274 ["Color"]
  LOADK R35 K83 ["$BorderMedium"]
  SETTABLEKS R35 R34 K317 ["Thickness"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K206 [".State-Editing"]
  DUPTABLE R35 K265 [{"ImageTransparency"}]
  LOADK R36 K16 [".Role-Surface"]
  SETTABLEKS R36 R35 K264 ["ImageTransparency"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K195 [".State-Disabled"]
  DUPTABLE R31 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K135 ["X"]
  SETTABLEKS R32 R31 K23 ["BackgroundColor3"]
  LOADK R32 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R32 R31 K17 ["BackgroundTransparency"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K212 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  DUPTABLE R35 K196 [{"TextColor3"}]
  LOADK R36 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R36 R35 K29 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K216 [{"CornerRadius"}]
  DUPTABLE R36 K265 [{"ImageTransparency"}]
  LOADK R37 K10 ["SharedFlags"]
  SETTABLEKS R37 R36 K264 ["ImageTransparency"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K217 ["$TabCornerRadius"]
  DUPTABLE R16 K475 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R17 1
  SETTABLEKS R17 R16 K474 ["Active"]
  LOADB R17 0
  SETTABLEKS R17 R16 K242 ["AutoButtonColor"]
  GETIMPORT R17 K149 [Vector2.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K145 ["AnchorPoint"]
  GETIMPORT R17 K230 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K146 ["Position"]
  LOADK R17 K245 [""]
  SETTABLEKS R17 R16 K243 ["Text"]
  LOADN R17 2
  SETTABLEKS R17 R16 K141 ["ZIndex"]
  CALL R14 2 -1
  SETLIST R5 R6 -1 [33]
  MOVE R6 R3
  LOADK R7 K220 ["ShrinkRatio"]
  MOVE R8 R5
  DUPTABLE R9 K482 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 75
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K477 ["SpinboxDefaultSize"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 85
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K478 ["SpinboxWithIconSize"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 61
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K479 ["SpinboxShortSize"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K93 ["Size"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K480 ["SizeDense"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 180
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K481 ["SliderSize"]
  CALL R6 3 -1
  RETURN R6 -1
