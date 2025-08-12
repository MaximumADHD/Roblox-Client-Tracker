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
  NEWTABLE R5 0 39
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
  LOADK R24 K203 [":press"]
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
  LOADK R15 K236 [".Component-RibbonButton"]
  DUPTABLE R16 K239 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K237 ["AutoButtonColor"]
  LOADK R17 K20 ["$Transparency100"]
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  LOADK R17 K21 ["$BorderNone"]
  SETTABLEKS R17 R16 K18 ["BorderSizePixel"]
  LOADK R17 K240 [""]
  SETTABLEKS R17 R16 K238 ["Text"]
  NEWTABLE R17 0 9
  MOVE R18 R2
  LOADK R19 K156 [".Small"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K98 ["::UISizeConstraint"]
  DUPTABLE R24 K100 [{"MaxSize"}]
  LOADK R25 K241 ["$RibbonButtonSmallMaxSize"]
  SETTABLEKS R25 R24 K99 ["MaxSize"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K242 ["> TextLabel"]
  DUPTABLE R21 K243 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R22 K20 ["$Transparency100"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  LOADK R22 K15 ["$FontWeight400"]
  SETTABLEKS R22 R21 K13 ["Font"]
  LOADN R22 2
  SETTABLEKS R22 R21 K50 ["LayoutOrder"]
  LOADK R22 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R22 R21 K29 ["TextColor3"]
  LOADK R22 K244 ["$RibbonButtonLabelTextSize"]
  SETTABLEKS R22 R21 K33 ["TextSize"]
  GETIMPORT R22 K246 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R22 R21 K184 ["TextTruncate"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K247 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R22 K248 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R23 K20 ["$Transparency100"]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K21 ["$BorderNone"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  LOADN R23 0
  SETTABLEKS R23 R22 K50 ["LayoutOrder"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K249 [".Icon-Large"]
  DUPTABLE R26 K94 [{"Size"}]
  LOADK R27 K250 ["$IconLarge"]
  SETTABLEKS R27 R26 K93 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K251 [".Icon-Small"]
  DUPTABLE R27 K94 [{"Size"}]
  LOADK R28 K252 ["$IconSmall"]
  SETTABLEKS R28 R27 K93 ["Size"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K253 ["> #RibbonTool"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K214 ["::UICorner"]
  DUPTABLE R27 K216 [{"CornerRadius"}]
  LOADK R28 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R28 R27 K215 ["CornerRadius"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K255 [".Component-SplitButton > #StateLayer"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K214 ["::UICorner"]
  DUPTABLE R28 K216 [{"CornerRadius"}]
  LOADK R29 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R29 R28 K215 ["CornerRadius"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K253 ["> #RibbonTool"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K214 ["::UICorner"]
  DUPTABLE R33 K216 [{"CornerRadius"}]
  LOADK R34 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R34 R33 K215 ["CornerRadius"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K195 [".State-Disabled"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K0 ["script"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K1 [script]
  DUPTABLE R33 K259 [{"ImageTransparency"}]
  LOADK R34 K4 [require]
  SETTABLEKS R34 R33 K258 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K198 [".State-Default"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K5 ["Packages"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K199 [":hover"]
  DUPTABLE R34 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R35 R34 K17 ["BackgroundTransparency"]
  LOADK R35 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R35 R34 K23 ["BackgroundColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K203 [":press"]
  DUPTABLE R35 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  LOADK R36 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K191 [".State-Selected"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K0 ["script"]
  DUPTABLE R31 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R32 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R32 R31 K17 ["BackgroundTransparency"]
  LOADK R32 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R32 R31 K23 ["BackgroundColor3"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K7 ["Styling"]
  DUPTABLE R28 K264 [{"LayoutOrder", "Size"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  LOADK R29 K9 ["createStyleSheet"]
  SETTABLEKS R29 R28 K93 ["Size"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K156 [".Small"]
  DUPTABLE R32 K94 [{"Size"}]
  GETIMPORT R33 K97 [UDim2.new]
  LOADN R34 0
  LOADN R35 4
  LOADN R36 0
  LOADN R37 24
  CALL R33 4 1
  SETTABLEKS R33 R32 K93 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K10 ["SharedFlags"]
  DUPTABLE R33 K268 [{"Position", "Image", "Size"}]
  GETIMPORT R34 K230 [UDim2.fromScale]
  LOADN R35 1
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K146 ["Position"]
  LOADK R34 K13 ["Font"]
  SETTABLEKS R34 R33 K267 ["Image"]
  GETIMPORT R34 K271 [UDim2.fromOffset]
  LOADN R35 4
  LOADN R36 4
  CALL R34 2 1
  SETTABLEKS R34 R33 K93 ["Size"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K195 [".State-Disabled"]
  DUPTABLE R37 K259 [{"ImageTransparency"}]
  LOADK R38 K4 [require]
  SETTABLEKS R38 R37 K258 ["ImageTransparency"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K16 [".Role-Surface"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K41 ["::UIListLayout"]
  DUPTABLE R21 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K42 ["FillDirection"]
  LOADK R22 K65 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K43 ["Padding"]
  GETIMPORT R22 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K44 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K17 ["BackgroundTransparency"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K18 ["BorderSizePixel"]
  DUPTABLE R26 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K42 ["FillDirection"]
  LOADK R27 K63 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K43 ["Padding"]
  GETIMPORT R27 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K44 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R18 K276 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K237 ["AutoButtonColor"]
  LOADK R19 K240 [""]
  SETTABLEKS R19 R18 K238 ["Text"]
  GETIMPORT R19 K271 [UDim2.fromOffset]
  LOADN R20 0
  LOADN R21 24
  CALL R19 2 1
  SETTABLEKS R19 R18 K93 ["Size"]
  NEWTABLE R19 0 6
  MOVE R20 R2
  LOADK R21 K214 ["::UICorner"]
  DUPTABLE R22 K216 [{"CornerRadius"}]
  LOADK R23 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R23 R22 K215 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K21 ["$BorderNone"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K22 [".Role-Surface100"]
  DUPTABLE R27 K279 [{"LayoutOrder"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K249 [".Icon-Large"]
  DUPTABLE R31 K94 [{"Size"}]
  LOADK R32 K250 ["$IconLarge"]
  SETTABLEKS R32 R31 K93 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K251 [".Icon-Small"]
  DUPTABLE R32 K94 [{"Size"}]
  LOADK R33 K252 ["$IconSmall"]
  SETTABLEKS R33 R32 K93 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K24 [{"BackgroundColor3", "BorderSizePixel"}]
  DUPTABLE R33 K279 [{"LayoutOrder"}]
  LOADN R34 3
  SETTABLEKS R34 R33 K50 ["LayoutOrder"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K25 ["$SemanticColorSurface100"]
  DUPTABLE R28 K282 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R29 K124 ["$FontWeight700"]
  SETTABLEKS R29 R28 K13 ["Font"]
  LOADK R29 K27 ["$SemanticColorSurface200"]
  SETTABLEKS R29 R28 K33 ["TextSize"]
  LOADN R29 2
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  LOADK R29 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K29 ["TextColor3"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K156 [".Small"]
  DUPTABLE R32 K284 [{"TextSize"}]
  LOADK R33 K188 ["$FontSize50"]
  SETTABLEKS R33 R32 K33 ["TextSize"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K29 ["TextColor3"]
  DUPTABLE R33 K284 [{"TextSize"}]
  LOADK R34 K30 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K195 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K31 ["$SemanticColorContentStandard"]
  DUPTABLE R28 K259 [{"ImageTransparency"}]
  LOADK R29 K4 [require]
  SETTABLEKS R29 R28 K258 ["ImageTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K32 [".Text-Label"]
  DUPTABLE R29 K196 [{"TextColor3"}]
  LOADK R30 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R30 R29 K29 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K198 [".State-Default"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K33 ["TextSize"]
  DUPTABLE R29 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  LOADK R30 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K34 [{"Font", "TextSize"}]
  DUPTABLE R30 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  LOADK R31 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K35 ["$ContentTextFontWeight"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K36 ["$ContentTextFontSize"]
  DUPTABLE R30 K296 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R31 K298 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R31 R30 K293 ["ApplyStrokeMode"]
  LOADK R31 K91 ["$SemanticColorDivider"]
  SETTABLEKS R31 R30 K294 ["Color"]
  LOADK R31 K83 ["$BorderMedium"]
  SETTABLEKS R31 R30 K295 ["Thickness"]
  LOADK R31 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R31 R30 K176 ["Transparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K43 ["Padding"]
  DUPTABLE R27 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K44 ["SortOrder"]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K45 [{"FillDirection", "Padding", "SortOrder"}]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K198 [".State-Default"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K33 ["TextSize"]
  DUPTABLE R35 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K46 ["Enum"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  LOADK R36 K47 ["Horizontal"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K34 [{"Font", "TextSize"}]
  DUPTABLE R36 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R37 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R37 R36 K17 ["BackgroundTransparency"]
  LOADK R37 K49 ["$RowSpacingDefault"]
  SETTABLEKS R37 R36 K23 ["BackgroundColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K32 [".Text-Label"]
  DUPTABLE R32 K196 [{"TextColor3"}]
  LOADK R33 K122 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R33 R32 K29 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K50 ["LayoutOrder"]
  DUPTABLE R19 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K20 ["$Transparency100"]
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  LOADK R20 K21 ["$BorderNone"]
  SETTABLEKS R20 R19 K18 ["BorderSizePixel"]
  NEWTABLE R20 0 7
  MOVE R21 R2
  LOADK R22 K51 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R23 K308 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K237 ["AutoButtonColor"]
  LOADK R24 K20 ["$Transparency100"]
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  LOADK R24 K21 ["$BorderNone"]
  SETTABLEKS R24 R23 K18 ["BorderSizePixel"]
  LOADN R24 1
  SETTABLEKS R24 R23 K50 ["LayoutOrder"]
  LOADK R24 K240 [""]
  SETTABLEKS R24 R23 K238 ["Text"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R27 K310 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
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
  LOADK R27 K55 [".Role-Column"]
  DUPTABLE R28 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R29 K20 ["$Transparency100"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  LOADK R29 K21 ["$BorderNone"]
  SETTABLEKS R29 R28 K18 ["BorderSizePixel"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K56 ["Vertical"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K41 ["::UIListLayout"]
  DUPTABLE R32 K313 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R33 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K42 ["FillDirection"]
  LOADK R33 K65 ["$GlobalSpace100"]
  SETTABLEKS R33 R32 K43 ["Padding"]
  GETIMPORT R33 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K44 ["SortOrder"]
  GETIMPORT R33 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R33 R32 K160 ["VerticalAlignment"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K55 [".Role-Column"]
  DUPTABLE R33 K94 [{"Size"}]
  LOADK R34 K252 ["$IconSmall"]
  SETTABLEKS R34 R33 K93 ["Size"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K156 [".Small"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R33 K284 [{"TextSize"}]
  LOADK R34 K188 ["$FontSize50"]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K58 ["$ColumnSpacingDefault"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R34 K284 [{"TextSize"}]
  LOADK R35 K27 ["$SemanticColorSurface200"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K29 ["TextColor3"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K41 ["::UIListLayout"]
  DUPTABLE R35 K313 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R36 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K42 ["FillDirection"]
  LOADK R36 K74 ["$GlobalSpace150"]
  SETTABLEKS R36 R35 K43 ["Padding"]
  GETIMPORT R36 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K44 ["SortOrder"]
  GETIMPORT R36 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K160 ["VerticalAlignment"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K55 [".Role-Column"]
  DUPTABLE R36 K94 [{"Size"}]
  LOADK R37 K250 ["$IconLarge"]
  SETTABLEKS R37 R36 K93 ["Size"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R37 K284 [{"TextSize"}]
  LOADK R38 K30 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R38 R37 K33 ["TextSize"]
  CALL R35 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K198 [".State-Default"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 4
  MOVE R30 R2
  LOADK R31 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K59 [".SpacingMedium"]
  DUPTABLE R36 K316 [{"Image"}]
  LOADK R37 K61 ["$ColumnSpacingMedium"]
  SETTABLEKS R37 R36 K267 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K62 [".X-RowSpace50"]
  DUPTABLE R37 K196 [{"TextColor3"}]
  LOADK R38 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R38 R37 K29 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K63 ["$GlobalSpace50"]
  DUPTABLE R33 K316 [{"Image"}]
  LOADK R34 K64 [".X-RowSpace100"]
  SETTABLEKS R34 R33 K267 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K65 ["$GlobalSpace100"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K55 [".Role-Column"]
  DUPTABLE R42 K316 [{"Image"}]
  LOADK R43 K66 [".X-RowSpace200"]
  SETTABLEKS R43 R42 K267 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K67 ["$GlobalSpace200"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K55 [".Role-Column"]
  DUPTABLE R43 K316 [{"Image"}]
  LOADK R44 K68 [".X-Pad150 ::UIPadding"]
  SETTABLEKS R44 R43 K267 ["Image"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K195 [".State-Disabled"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K55 [".Role-Column"]
  DUPTABLE R37 K316 [{"Image"}]
  LOADK R38 K69 ["PaddingBottom"]
  SETTABLEKS R38 R37 K267 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R38 K196 [{"TextColor3"}]
  LOADK R39 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K29 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K65 ["$GlobalSpace100"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K55 [".Role-Column"]
  DUPTABLE R42 K316 [{"Image"}]
  LOADK R43 K70 ["PaddingLeft"]
  SETTABLEKS R43 R42 K267 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K67 ["$GlobalSpace200"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K51 [Enum.SortOrder.LayoutOrder]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K55 [".Role-Column"]
  DUPTABLE R43 K316 [{"Image"}]
  LOADK R44 K71 ["PaddingRight"]
  SETTABLEKS R44 R43 K267 ["Image"]
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
  LOADK R19 K72 ["PaddingTop"]
  DUPTABLE R20 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K20 ["$Transparency100"]
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  LOADK R21 K21 ["$BorderNone"]
  SETTABLEKS R21 R20 K18 ["BorderSizePixel"]
  NEWTABLE R21 0 9
  MOVE R22 R2
  LOADK R23 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  DUPTABLE R24 K308 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K237 ["AutoButtonColor"]
  LOADK R25 K20 ["$Transparency100"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  LOADK R25 K21 ["$BorderNone"]
  SETTABLEKS R25 R24 K18 ["BorderSizePixel"]
  LOADN R25 1
  SETTABLEKS R25 R24 K50 ["LayoutOrder"]
  LOADK R25 K240 [""]
  SETTABLEKS R25 R24 K238 ["Text"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K74 ["$GlobalSpace150"]
  DUPTABLE R25 K310 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R26 K20 ["$Transparency100"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  LOADK R26 K21 ["$BorderNone"]
  SETTABLEKS R26 R25 K18 ["BorderSizePixel"]
  LOADK R26 K15 ["$FontWeight400"]
  SETTABLEKS R26 R25 K13 ["Font"]
  LOADN R26 2
  SETTABLEKS R26 R25 K50 ["LayoutOrder"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K75 [".Role-Menu"]
  DUPTABLE R26 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R27 K20 ["$Transparency100"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  LOADK R27 K21 ["$BorderNone"]
  SETTABLEKS R27 R26 K18 ["BorderSizePixel"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K56 ["Vertical"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K41 ["::UIListLayout"]
  DUPTABLE R35 K313 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R36 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K42 ["FillDirection"]
  LOADK R36 K65 ["$GlobalSpace100"]
  SETTABLEKS R36 R35 K43 ["Padding"]
  GETIMPORT R36 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K44 ["SortOrder"]
  GETIMPORT R36 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K160 ["VerticalAlignment"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K75 [".Role-Menu"]
  DUPTABLE R32 K94 [{"Size"}]
  LOADK R33 K252 ["$IconSmall"]
  SETTABLEKS R33 R32 K93 ["Size"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K156 [".Small"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K74 ["$GlobalSpace150"]
  DUPTABLE R32 K284 [{"TextSize"}]
  LOADK R33 K188 ["$FontSize50"]
  SETTABLEKS R33 R32 K33 ["TextSize"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K58 ["$ColumnSpacingDefault"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K74 ["$GlobalSpace150"]
  DUPTABLE R33 K284 [{"TextSize"}]
  LOADK R34 K27 ["$SemanticColorSurface200"]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K29 ["TextColor3"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K41 ["::UIListLayout"]
  DUPTABLE R38 K313 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K42 ["FillDirection"]
  LOADK R39 K74 ["$GlobalSpace150"]
  SETTABLEKS R39 R38 K43 ["Padding"]
  GETIMPORT R39 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K44 ["SortOrder"]
  GETIMPORT R39 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K160 ["VerticalAlignment"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K75 [".Role-Menu"]
  DUPTABLE R35 K94 [{"Size"}]
  LOADK R36 K250 ["$IconLarge"]
  SETTABLEKS R36 R35 K93 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K74 ["$GlobalSpace150"]
  DUPTABLE R36 K284 [{"TextSize"}]
  LOADK R37 K30 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R37 R36 K33 ["TextSize"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K198 [".State-Default"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 4
  MOVE R33 R2
  LOADK R34 K75 [".Role-Menu"]
  DUPTABLE R35 K316 [{"Image"}]
  LOADK R36 K76 ["BorderColor3"]
  SETTABLEKS R36 R35 K267 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K77 ["BorderMode"]
  DUPTABLE R36 K316 [{"Image"}]
  LOADK R37 K78 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  SETTABLEKS R37 R36 K267 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K79 ["$DEPRECATED_MainBackground"]
  DUPTABLE R37 K316 [{"Image"}]
  LOADK R38 K80 ["$SemanticColorDividerTransparency88"]
  SETTABLEKS R38 R37 K267 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K74 ["$GlobalSpace150"]
  DUPTABLE R38 K196 [{"TextColor3"}]
  LOADK R39 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R39 R38 K29 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K195 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K75 [".Role-Menu"]
  DUPTABLE R36 K316 [{"Image"}]
  LOADK R37 K81 ["Inset"]
  SETTABLEKS R37 R36 K267 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K79 ["$DEPRECATED_MainBackground"]
  DUPTABLE R37 K316 [{"Image"}]
  LOADK R38 K82 [Enum.BorderMode.Inset]
  SETTABLEKS R38 R37 K267 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K74 ["$GlobalSpace150"]
  DUPTABLE R38 K196 [{"TextColor3"}]
  LOADK R39 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K29 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K83 ["$BorderMedium"]
  DUPTABLE R21 K340 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K237 ["AutoButtonColor"]
  LOADK R22 K21 ["$BorderNone"]
  SETTABLEKS R22 R21 K18 ["BorderSizePixel"]
  LOADK R22 K20 ["$Transparency100"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  LOADK R22 K240 [""]
  SETTABLEKS R22 R21 K238 ["Text"]
  NEWTABLE R22 0 9
  MOVE R23 R2
  LOADK R24 K84 ["::UIPadding"]
  DUPTABLE R25 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R26 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R26 R25 K70 ["PaddingLeft"]
  LOADK R26 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R26 R25 K71 ["PaddingRight"]
  LOADK R26 K86 ["$MenuPadding"]
  SETTABLEKS R26 R25 K72 ["PaddingTop"]
  LOADK R26 K86 ["$MenuPadding"]
  SETTABLEKS R26 R25 K69 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K214 ["::UICorner"]
  DUPTABLE R26 K216 [{"CornerRadius"}]
  LOADK R27 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R27 R26 K215 ["CornerRadius"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K87 ["> #Menu ::UIListLayout"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 5
  MOVE R29 R2
  LOADK R30 K41 ["::UIListLayout"]
  DUPTABLE R31 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R32 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R32 R31 K42 ["FillDirection"]
  LOADK R32 K88 ["$MenuColumnSpacing"]
  SETTABLEKS R32 R31 K43 ["Padding"]
  GETIMPORT R32 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K44 ["SortOrder"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K89 [".Role-Tooltip"]
  DUPTABLE R32 K346 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R33 K21 ["$BorderNone"]
  SETTABLEKS R33 R32 K18 ["BorderSizePixel"]
  LOADK R33 K20 ["$Transparency100"]
  SETTABLEKS R33 R32 K17 ["BackgroundTransparency"]
  LOADN R33 0
  SETTABLEKS R33 R32 K50 ["LayoutOrder"]
  LOADK R33 K252 ["$IconSmall"]
  SETTABLEKS R33 R32 K93 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K91 ["$SemanticColorDivider"]
  DUPTABLE R33 K346 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R34 K21 ["$BorderNone"]
  SETTABLEKS R34 R33 K18 ["BorderSizePixel"]
  LOADK R34 K20 ["$Transparency100"]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  LOADN R34 1
  SETTABLEKS R34 R33 K50 ["LayoutOrder"]
  LOADK R34 K250 ["$IconLarge"]
  SETTABLEKS R34 R33 K93 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K114 ["> #Text"]
  DUPTABLE R34 K348 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R35 K20 ["$Transparency100"]
  SETTABLEKS R35 R34 K17 ["BackgroundTransparency"]
  LOADK R35 K15 ["$FontWeight400"]
  SETTABLEKS R35 R34 K13 ["Font"]
  LOADK R35 K188 ["$FontSize50"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  LOADN R35 2
  SETTABLEKS R35 R34 K50 ["LayoutOrder"]
  LOADK R35 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K29 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K93 ["Size"]
  DUPTABLE R35 K264 [{"LayoutOrder", "Size"}]
  LOADN R36 3
  SETTABLEKS R36 R35 K50 ["LayoutOrder"]
  LOADK R36 K252 ["$IconSmall"]
  SETTABLEKS R36 R35 K93 ["Size"]
  CALL R33 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K94 [{"Size"}]
  DUPTABLE R28 K351 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R29 K149 [Vector2.new]
  LOADN R30 1
  LOADK R31 K96 ["new"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K145 ["AnchorPoint"]
  GETIMPORT R29 K230 [UDim2.fromScale]
  LOADN R30 1
  LOADK R31 K96 ["new"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K146 ["Position"]
  LOADK R29 K21 ["$BorderNone"]
  SETTABLEKS R29 R28 K18 ["BorderSizePixel"]
  LOADK R29 K20 ["$Transparency100"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  LOADK R29 K97 [UDim2.new]
  SETTABLEKS R29 R28 K267 ["Image"]
  LOADN R29 3
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  LOADK R29 K252 ["$IconSmall"]
  SETTABLEKS R29 R28 K93 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K98 ["::UISizeConstraint"]
  DUPTABLE R29 K94 [{"Size"}]
  LOADK R30 K252 ["$IconSmall"]
  SETTABLEKS R30 R29 K93 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K191 [".State-Selected"]
  DUPTABLE R30 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  LOADK R31 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K99 ["MaxSize"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K87 ["> #Menu ::UIListLayout"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K89 [".Role-Tooltip"]
  DUPTABLE R39 K316 [{"Image"}]
  LOADK R40 K100 [{"MaxSize"}]
  SETTABLEKS R40 R39 K267 ["Image"]
  CALL R37 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K101 ["$TooltipMaxSize"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K199 [":hover"]
  DUPTABLE R36 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R37 K102 ["$TooltipContentSpacing"]
  SETTABLEKS R37 R36 K23 ["BackgroundColor3"]
  LOADK R37 K103 ["> #Content"]
  SETTABLEKS R37 R36 K17 ["BackgroundTransparency"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K195 [".State-Disabled"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K87 ["> #Menu ::UIListLayout"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 2
  MOVE R39 R2
  LOADK R40 K104 ["$TooltipTextSpacing"]
  DUPTABLE R41 K259 [{"ImageTransparency"}]
  LOADK R42 K4 [require]
  SETTABLEKS R42 R41 K258 ["ImageTransparency"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K114 ["> #Text"]
  DUPTABLE R42 K196 [{"TextColor3"}]
  LOADK R43 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R43 R42 K29 ["TextColor3"]
  CALL R40 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K105 ["> #TitleFrame"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K195 [".State-Disabled"]
  DUPTABLE R26 K259 [{"ImageTransparency"}]
  LOADK R27 K4 [require]
  SETTABLEKS R27 R26 K258 ["ImageTransparency"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K106 [{"FillDirection", "SortOrder"}]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K84 ["::UIPadding"]
  DUPTABLE R27 K363 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  LOADK R28 K108 ["::UIFlexItem"]
  SETTABLEKS R28 R27 K70 ["PaddingLeft"]
  LOADK R28 K108 ["::UIFlexItem"]
  SETTABLEKS R28 R27 K72 ["PaddingTop"]
  LOADK R28 K108 ["::UIFlexItem"]
  SETTABLEKS R28 R27 K69 ["PaddingBottom"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K109 ["FlexMode"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 7
  MOVE R10 R2
  LOADK R11 K36 ["$ContentTextFontSize"]
  DUPTABLE R12 K366 [{"Thickness"}]
  LOADK R13 K21 ["$BorderNone"]
  SETTABLEKS R13 R12 K295 ["Thickness"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K214 ["::UICorner"]
  DUPTABLE R13 K216 [{"CornerRadius"}]
  LOADK R14 K111 ["UIFlexMode"]
  SETTABLEKS R14 R13 K215 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K112 ["Fill"]
  DUPTABLE R14 K369 [{"TextSize", "TextXAlignment", "TextTruncate"}]
  LOADK R15 K188 ["$FontSize50"]
  SETTABLEKS R15 R14 K33 ["TextSize"]
  GETIMPORT R15 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K116 ["TextXAlignment"]
  GETIMPORT R15 K190 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R15 R14 K184 ["TextTruncate"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K84 ["::UIPadding"]
  DUPTABLE R18 K370 [{"PaddingLeft", "PaddingRight"}]
  LOADK R19 K63 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K70 ["PaddingLeft"]
  LOADK R19 K63 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K71 ["PaddingRight"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K198 [".State-Default"]
  DUPTABLE R15 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K115 ["TextWrapped"]
  SETTABLEKS R16 R15 K23 ["BackgroundColor3"]
  LOADK R16 K116 ["TextXAlignment"]
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K112 ["Fill"]
  DUPTABLE R19 K196 [{"TextColor3"}]
  LOADK R20 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R20 R19 K29 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K117 [{"TextWrapped", "TextXAlignment"}]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K36 ["$ContentTextFontSize"]
  DUPTABLE R20 K374 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R21 K298 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R21 R20 K293 ["ApplyStrokeMode"]
  LOADK R21 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K294 ["Color"]
  LOADK R21 K83 ["$BorderMedium"]
  SETTABLEKS R21 R20 K295 ["Thickness"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K112 ["Fill"]
  DUPTABLE R21 K196 [{"TextColor3"}]
  LOADK R22 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R22 R21 K29 ["TextColor3"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K120 [">> TextLabel"]
  DUPTABLE R17 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R18 R17 K23 ["BackgroundColor3"]
  LOADK R18 K122 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R18 R17 K17 ["BackgroundTransparency"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K112 ["Fill"]
  DUPTABLE R21 K196 [{"TextColor3"}]
  LOADK R22 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R22 R21 K29 ["TextColor3"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K195 [".State-Disabled"]
  DUPTABLE R18 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K115 ["TextWrapped"]
  SETTABLEKS R19 R18 K23 ["BackgroundColor3"]
  LOADK R19 K116 ["TextXAlignment"]
  SETTABLEKS R19 R18 K17 ["BackgroundTransparency"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K112 ["Fill"]
  DUPTABLE R22 K196 [{"TextColor3"}]
  LOADK R23 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R23 R22 K29 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K123 [">> #Title"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K124 ["$FontWeight700"]
  DUPTABLE R13 K94 [{"Size"}]
  GETIMPORT R14 K271 [UDim2.fromOffset]
  LOADN R15 16
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K93 ["Size"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K125 [".Role-Scroller"]
  DUPTABLE R17 K94 [{"Size"}]
  GETIMPORT R18 K271 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K93 ["Size"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K198 [".State-Default"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K126 ["> #Scroller"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K127 ["AutomaticCanvasSize"]
  DUPTABLE R22 K316 [{"Image"}]
  LOADK R23 K128 ["ScrollingDirection"]
  SETTABLEKS R23 R22 K267 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K129 ["ScrollBarThickness"]
  DUPTABLE R23 K316 [{"Image"}]
  LOADK R24 K130 ["HorizontalScrollBarInset"]
  SETTABLEKS R24 R23 K267 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K131 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  DUPTABLE R24 K316 [{"Image"}]
  LOADK R25 K132 ["AutomaticSize"]
  SETTABLEKS R25 R24 K267 ["Image"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K133 ["XY"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K127 ["AutomaticCanvasSize"]
  DUPTABLE R23 K316 [{"Image"}]
  LOADK R24 K134 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K267 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K129 ["ScrollBarThickness"]
  DUPTABLE R24 K316 [{"Image"}]
  LOADK R25 K135 ["X"]
  SETTABLEKS R25 R24 K267 ["Image"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K131 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  DUPTABLE R25 K316 [{"Image"}]
  LOADK R26 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R26 R25 K267 ["Image"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K195 [".State-Disabled"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K126 ["> #Scroller"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K137 ["ScrollBarInset"]
  DUPTABLE R23 K316 [{"Image"}]
  LOADK R24 K132 ["AutomaticSize"]
  SETTABLEKS R24 R23 K267 ["Image"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K133 ["XY"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K137 ["ScrollBarInset"]
  DUPTABLE R24 K316 [{"Image"}]
  LOADK R25 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R25 R24 K267 ["Image"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K138 ["None"]
  DUPTABLE R10 K395 [{"BackgroundTransparency"}]
  LOADK R11 K20 ["$Transparency100"]
  SETTABLEKS R11 R10 K17 ["BackgroundTransparency"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K140 ["> #LeftGradient"]
  DUPTABLE R14 K216 [{"CornerRadius"}]
  LOADK R15 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R15 R14 K215 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K141 ["ZIndex"]
  DUPTABLE R15 K296 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R16 K298 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R16 R15 K293 ["ApplyStrokeMode"]
  LOADK R16 K91 ["$SemanticColorDivider"]
  SETTABLEKS R16 R15 K294 ["Color"]
  LOADK R16 K83 ["$BorderMedium"]
  SETTABLEKS R16 R15 K295 ["Thickness"]
  LOADK R16 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R16 R15 K176 ["Transparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K142 [{"Size", "ZIndex"}]
  DUPTABLE R16 K395 [{"BackgroundTransparency"}]
  LOADK R17 K20 ["$Transparency100"]
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  NEWTABLE R17 0 4
  MOVE R18 R2
  LOADK R19 K140 ["> #LeftGradient"]
  DUPTABLE R20 K216 [{"CornerRadius"}]
  LOADK R21 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R21 R20 K215 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K143 ["$TabGradientSize"]
  DUPTABLE R21 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R22 K20 ["$Transparency100"]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  LOADK R22 K21 ["$BorderNone"]
  SETTABLEKS R22 R21 K18 ["BorderSizePixel"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K199 [":hover"]
  DUPTABLE R25 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R26 R25 K23 ["BackgroundColor3"]
  LOADK R26 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K144 ["> #RightGradient"]
  DUPTABLE R26 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R27 R26 K23 ["BackgroundColor3"]
  LOADK R27 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K145 ["AnchorPoint"]
  DUPTABLE R22 K402 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
  GETIMPORT R23 K271 [UDim2.fromOffset]
  LOADN R24 82
  LOADN R25 24
  CALL R23 2 1
  SETTABLEKS R23 R22 K93 ["Size"]
  LOADK R23 K188 ["$FontSize50"]
  SETTABLEKS R23 R22 K33 ["TextSize"]
  LOADK R23 K186 ["$FontWeight600"]
  SETTABLEKS R23 R22 K13 ["Font"]
  LOADB R23 0
  SETTABLEKS R23 R22 K237 ["AutoButtonColor"]
  LOADK R23 K21 ["$BorderNone"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  NEWTABLE R23 0 3
  MOVE R24 R2
  LOADK R25 K84 ["::UIPadding"]
  DUPTABLE R26 K370 [{"PaddingLeft", "PaddingRight"}]
  LOADK R27 K74 ["$GlobalSpace150"]
  SETTABLEKS R27 R26 K70 ["PaddingLeft"]
  LOADK R27 K74 ["$GlobalSpace150"]
  SETTABLEKS R27 R26 K71 ["PaddingRight"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K198 [".State-Default"]
  DUPTABLE R27 K403 [{"BackgroundTransparency", "TextColor3"}]
  LOADK R28 K20 ["$Transparency100"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R28 R27 K29 ["TextColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K191 [".State-Selected"]
  DUPTABLE R28 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R29 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R29 R28 K23 ["BackgroundColor3"]
  LOADK R29 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  LOADK R29 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K29 ["TextColor3"]
  CALL R26 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K148 ["Vector2"]
  DUPTABLE R23 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R24 K91 ["$SemanticColorDivider"]
  SETTABLEKS R24 R23 K23 ["BackgroundColor3"]
  LOADK R24 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  LOADK R24 K21 ["$BorderNone"]
  SETTABLEKS R24 R23 K18 ["BorderSizePixel"]
  LOADK R24 K157 ["$SmallSeparator"]
  SETTABLEKS R24 R23 K93 ["Size"]
  CALL R21 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K149 [Vector2.new]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 4
  MOVE R13 R2
  LOADK R14 K41 ["::UIListLayout"]
  DUPTABLE R15 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K42 ["FillDirection"]
  LOADK R16 K65 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K43 ["Padding"]
  GETIMPORT R16 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K44 ["SortOrder"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K84 ["::UIPadding"]
  DUPTABLE R16 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R17 K74 ["$GlobalSpace150"]
  SETTABLEKS R17 R16 K70 ["PaddingLeft"]
  LOADK R17 K74 ["$GlobalSpace150"]
  SETTABLEKS R17 R16 K71 ["PaddingRight"]
  LOADK R17 K65 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K72 ["PaddingTop"]
  LOADK R17 K65 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K69 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K150 [".Role-DividerH"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K41 ["::UIListLayout"]
  DUPTABLE R21 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K42 ["FillDirection"]
  LOADK R22 K65 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K43 ["Padding"]
  GETIMPORT R22 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K44 ["SortOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K151 ["> Frame"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K151 ["> Frame"]
  DUPTABLE R26 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R27 K91 ["$SemanticColorDivider"]
  SETTABLEKS R27 R26 K23 ["BackgroundColor3"]
  LOADK R27 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  LOADK R27 K21 ["$BorderNone"]
  SETTABLEKS R27 R26 K18 ["BorderSizePixel"]
  LOADK R27 K157 ["$SmallSeparator"]
  SETTABLEKS R27 R26 K93 ["Size"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K107 ["> #Spacer"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K108 ["::UIFlexItem"]
  DUPTABLE R26 K110 [{"FlexMode"}]
  GETIMPORT R27 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R27 R26 K109 ["FlexMode"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K153 ["$SemanticColorDividerTransparency"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K41 ["::UIListLayout"]
  DUPTABLE R16 K411 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R17 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K42 ["FillDirection"]
  GETIMPORT R17 K412 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K410 ["HorizontalAlignment"]
  GETIMPORT R17 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K44 ["SortOrder"]
  GETIMPORT R17 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K160 ["VerticalAlignment"]
  LOADK R17 K157 ["$SmallSeparator"]
  SETTABLEKS R17 R16 K43 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K242 ["> TextLabel"]
  DUPTABLE R17 K348 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R18 K20 ["$Transparency100"]
  SETTABLEKS R18 R17 K17 ["BackgroundTransparency"]
  LOADK R18 K15 ["$FontWeight400"]
  SETTABLEKS R18 R17 K13 ["Font"]
  LOADK R18 K158 [".Role-Mezzanine"]
  SETTABLEKS R18 R17 K33 ["TextSize"]
  LOADN R18 0
  SETTABLEKS R18 R17 K50 ["LayoutOrder"]
  LOADK R18 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R18 R17 K29 ["TextColor3"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K159 ["HorizontalFlex"]
  DUPTABLE R13 K416 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R14 K419 [Color3.fromHex]
  LOADK R15 K164 [Enum.UIFlexAlignment.SpaceBetween]
  CALL R14 1 1
  SETTABLEKS R14 R13 K23 ["BackgroundColor3"]
  LOADK R14 K45 [{"FillDirection", "Padding", "SortOrder"}]
  SETTABLEKS R14 R13 K17 ["BackgroundTransparency"]
  GETIMPORT R14 K271 [UDim2.fromOffset]
  LOADN R15 40
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K93 ["Size"]
  NEWTABLE R14 0 6
  MOVE R15 R2
  LOADK R16 K214 ["::UICorner"]
  DUPTABLE R17 K216 [{"CornerRadius"}]
  LOADK R18 K165 ["Center"]
  SETTABLEKS R18 R17 K215 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K84 ["::UIPadding"]
  DUPTABLE R18 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R19 K108 ["::UIFlexItem"]
  SETTABLEKS R19 R18 K69 ["PaddingBottom"]
  LOADK R19 K108 ["::UIFlexItem"]
  SETTABLEKS R19 R18 K70 ["PaddingLeft"]
  LOADK R19 K108 ["::UIFlexItem"]
  SETTABLEKS R19 R18 K71 ["PaddingRight"]
  LOADK R19 K108 ["::UIFlexItem"]
  SETTABLEKS R19 R18 K72 ["PaddingTop"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K41 ["::UIListLayout"]
  DUPTABLE R19 K422 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R20 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K42 ["FillDirection"]
  GETIMPORT R20 K412 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K410 ["HorizontalAlignment"]
  GETIMPORT R20 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K44 ["SortOrder"]
  GETIMPORT R20 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K160 ["VerticalAlignment"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K151 ["> Frame"]
  DUPTABLE R20 K423 [{"BackgroundColor3", "Size"}]
  LOADK R21 K168 [{"PaddingLeft"}]
  SETTABLEKS R21 R20 K23 ["BackgroundColor3"]
  GETIMPORT R21 K271 [UDim2.fromOffset]
  LOADN R22 20
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K93 ["Size"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K214 ["::UICorner"]
  DUPTABLE R24 K216 [{"CornerRadius"}]
  LOADK R25 K165 ["Center"]
  SETTABLEKS R25 R24 K215 ["CornerRadius"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K191 [".State-Selected"]
  DUPTABLE R21 K425 [{"BackgroundColor3"}]
  GETIMPORT R22 K419 [Color3.fromHex]
  LOADK R23 K170 [">> .RightMezzControls"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K23 ["BackgroundColor3"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K41 ["::UIListLayout"]
  DUPTABLE R25 K427 [{"HorizontalAlignment"}]
  GETIMPORT R26 K429 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R26 R25 K410 ["HorizontalAlignment"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K195 [".State-Disabled"]
  DUPTABLE R22 K395 [{"BackgroundTransparency"}]
  LOADK R23 K174 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K151 ["> Frame"]
  DUPTABLE R26 K395 [{"BackgroundTransparency"}]
  LOADK R27 K174 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K175 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R14 K276 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K237 ["AutoButtonColor"]
  LOADK R15 K240 [""]
  SETTABLEKS R15 R14 K238 ["Text"]
  GETIMPORT R15 K271 [UDim2.fromOffset]
  LOADN R16 85
  LOADN R17 24
  CALL R15 2 1
  SETTABLEKS R15 R14 K93 ["Size"]
  NEWTABLE R15 0 13
  MOVE R16 R2
  LOADK R17 K214 ["::UICorner"]
  DUPTABLE R18 K216 [{"CornerRadius"}]
  LOADK R19 K176 ["Transparency"]
  SETTABLEKS R19 R18 K215 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K177 [{"Transparency"}]
  DUPTABLE R19 K94 [{"Size"}]
  GETIMPORT R20 K271 [UDim2.fromOffset]
  LOADN R21 120
  LOADN R22 24
  CALL R20 2 1
  SETTABLEKS R20 R19 K93 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K41 ["::UIListLayout"]
  DUPTABLE R20 K434 [{"HorizontalFlex"}]
  GETIMPORT R21 K435 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R21 R20 K159 ["HorizontalFlex"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K84 ["::UIPadding"]
  DUPTABLE R21 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K180 ["NumberSequenceKeypoint"]
  SETTABLEKS R22 R21 K70 ["PaddingLeft"]
  LOADK R22 K181 [NumberSequenceKeypoint.new]
  SETTABLEKS R22 R21 K71 ["PaddingRight"]
  LOADK R22 K182 [".X-FadeRight ::UIGradient"]
  SETTABLEKS R22 R21 K72 ["PaddingTop"]
  LOADK R22 K183 [".Component-RibbonTab"]
  SETTABLEKS R22 R21 K69 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K184 ["TextTruncate"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K41 ["::UIListLayout"]
  DUPTABLE R26 K441 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
  GETIMPORT R27 K435 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R27 R26 K159 ["HorizontalFlex"]
  GETIMPORT R27 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K42 ["FillDirection"]
  GETIMPORT R27 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K44 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K137 ["ScrollBarInset"]
  DUPTABLE R23 K94 [{"Size"}]
  LOADK R24 K252 ["$IconSmall"]
  SETTABLEKS R24 R23 K93 ["Size"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K108 ["::UIFlexItem"]
  DUPTABLE R27 K443 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R28 K223 [Enum.UIFlexMode.Custom]
  SETTABLEKS R28 R27 K109 ["FlexMode"]
  LOADN R28 0
  SETTABLEKS R28 R27 K442 ["ShrinkRation"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K188 ["$FontSize50"]
  DUPTABLE R24 K279 [{"LayoutOrder"}]
  LOADN R25 0
  SETTABLEKS R25 R24 K50 ["LayoutOrder"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K24 [{"BackgroundColor3", "BorderSizePixel"}]
  DUPTABLE R28 K279 [{"LayoutOrder"}]
  LOADN R29 3
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K189 ["SplitWord"]
  DUPTABLE R25 K446 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R26 K21 ["$BorderNone"]
  SETTABLEKS R26 R25 K18 ["BorderSizePixel"]
  LOADK R26 K20 ["$Transparency100"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  LOADK R26 K191 [".State-Selected"]
  SETTABLEKS R26 R25 K267 ["Image"]
  LOADN R26 4
  SETTABLEKS R26 R25 K50 ["LayoutOrder"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  DUPTABLE R29 K316 [{"Image"}]
  LOADK R30 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R30 R29 K267 ["Image"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K194 ["$SemanticColorStatesSelectedTransparency"]
  DUPTABLE R26 K451 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R27 K15 ["$FontWeight400"]
  SETTABLEKS R27 R26 K13 ["Font"]
  LOADK R27 K188 ["$FontSize50"]
  SETTABLEKS R27 R26 K33 ["TextSize"]
  LOADK R27 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R27 R26 K29 ["TextColor3"]
  GETIMPORT R27 K246 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R27 R26 K184 ["TextTruncate"]
  GETIMPORT R27 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K116 ["TextXAlignment"]
  LOADN R27 2
  SETTABLEKS R27 R26 K50 ["LayoutOrder"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K198 [".State-Default"]
  DUPTABLE R27 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K115 ["TextWrapped"]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K116 ["TextXAlignment"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K188 ["$FontSize50"]
  DUPTABLE R31 K259 [{"ImageTransparency"}]
  LOADK R32 K196 [{"TextColor3"}]
  SETTABLEKS R32 R31 K258 ["ImageTransparency"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K197 ["$SemanticColorContentDisabled"]
  DUPTABLE R28 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R29 R28 K23 ["BackgroundColor3"]
  LOADK R29 K122 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K188 ["$FontSize50"]
  DUPTABLE R32 K259 [{"ImageTransparency"}]
  LOADK R33 K45 [{"FillDirection", "Padding", "SortOrder"}]
  SETTABLEKS R33 R32 K258 ["ImageTransparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K117 [{"TextWrapped", "TextXAlignment"}]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K36 ["$ContentTextFontSize"]
  DUPTABLE R33 K374 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R34 K298 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R34 R33 K293 ["ApplyStrokeMode"]
  LOADK R34 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R34 R33 K294 ["Color"]
  LOADK R34 K83 ["$BorderMedium"]
  SETTABLEKS R34 R33 K295 ["Thickness"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K188 ["$FontSize50"]
  DUPTABLE R34 K259 [{"ImageTransparency"}]
  LOADK R35 K45 [{"FillDirection", "Padding", "SortOrder"}]
  SETTABLEKS R35 R34 K258 ["ImageTransparency"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K195 [".State-Disabled"]
  DUPTABLE R30 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K115 ["TextWrapped"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  LOADK R31 K116 ["TextXAlignment"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K194 ["$SemanticColorStatesSelectedTransparency"]
  DUPTABLE R34 K196 [{"TextColor3"}]
  LOADK R35 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R35 R34 K29 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K198 [".State-Default"]
  DUPTABLE R35 K259 [{"ImageTransparency"}]
  LOADK R36 K4 [require]
  SETTABLEKS R36 R35 K258 ["ImageTransparency"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R5 R6 -1 [33]
  MOVE R6 R3
  LOADK R7 K199 [":hover"]
  MOVE R8 R5
  DUPTABLE R9 K461 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 75
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K456 ["SpinboxDefaultSize"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 85
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K457 ["SpinboxWithIconSize"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 61
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K458 ["SpinboxShortSize"]
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
  SETTABLEKS R10 R9 K459 ["SizeDense"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 180
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K460 ["SliderSize"]
  CALL R6 3 -1
  RETURN R6 -1
