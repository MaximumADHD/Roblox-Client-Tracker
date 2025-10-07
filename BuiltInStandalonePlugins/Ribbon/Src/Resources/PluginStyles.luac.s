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
  NEWTABLE R17 0 10
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
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K8 ["createStyleRule"]
  DUPTABLE R32 K265 [{"BackgroundTransparency"}]
  LOADK R33 K10 ["SharedFlags"]
  SETTABLEKS R33 R32 K17 ["BackgroundTransparency"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  DUPTABLE R36 K270 [{"Color", "Rotation", "Transparency"}]
  LOADK R37 K15 ["$FontWeight400"]
  SETTABLEKS R37 R36 K268 ["Color"]
  LOADK R37 K16 [".Role-Surface"]
  SETTABLEKS R37 R36 K269 ["Rotation"]
  LOADK R37 K17 ["BackgroundTransparency"]
  SETTABLEKS R37 R36 K176 ["Transparency"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K18 ["BorderSizePixel"]
  DUPTABLE R33 K265 [{"BackgroundTransparency"}]
  LOADK R34 K10 ["SharedFlags"]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K11 ["getFFlagDevFrameworkEnableFoundationColors"]
  DUPTABLE R37 K270 [{"Color", "Rotation", "Transparency"}]
  LOADK R38 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R38 R37 K268 ["Color"]
  LOADK R38 K20 ["$Transparency100"]
  SETTABLEKS R38 R37 K269 ["Rotation"]
  LOADK R38 K21 ["$BorderNone"]
  SETTABLEKS R38 R37 K176 ["Transparency"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K22 [".Role-Surface100"]
  DUPTABLE R29 K279 [{"LayoutOrder", "Size"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K50 ["LayoutOrder"]
  LOADK R30 K24 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R30 R29 K93 ["Size"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K156 [".Small"]
  DUPTABLE R33 K94 [{"Size"}]
  GETIMPORT R34 K97 [UDim2.new]
  LOADN R35 0
  LOADN R36 4
  LOADN R37 0
  LOADN R38 24
  CALL R34 4 1
  SETTABLEKS R34 R33 K93 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K25 ["$SemanticColorSurface100"]
  DUPTABLE R34 K282 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R35 K149 [Vector2.new]
  LOADN R36 1
  LOADN R37 1
  CALL R35 2 1
  SETTABLEKS R35 R34 K145 ["AnchorPoint"]
  LOADB R35 0
  SETTABLEKS R35 R34 K237 ["AutoButtonColor"]
  GETIMPORT R35 K230 [UDim2.fromScale]
  LOADN R36 1
  LOADN R37 1
  CALL R35 2 1
  SETTABLEKS R35 R34 K146 ["Position"]
  LOADK R35 K240 [""]
  SETTABLEKS R35 R34 K238 ["Text"]
  LOADN R35 1
  SETTABLEKS R35 R34 K33 ["TextSize"]
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K27 ["$SemanticColorSurface200"]
  DUPTABLE R38 K285 [{"Image", "Size"}]
  LOADK R39 K30 [{"BorderSizePixel", "BackgroundTransparency", "TextColor3"}]
  SETTABLEKS R39 R38 K284 ["Image"]
  GETIMPORT R39 K288 [UDim2.fromOffset]
  LOADN R40 4
  LOADN R41 4
  CALL R39 2 1
  SETTABLEKS R39 R38 K93 ["Size"]
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K195 [".State-Disabled"]
  DUPTABLE R42 K259 [{"ImageTransparency"}]
  LOADK R43 K4 [require]
  SETTABLEKS R43 R42 K258 ["ImageTransparency"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K33 ["TextSize"]
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
  LOADK R21 K34 [{"Font", "TextSize"}]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K35 ["$ContentTextFontWeight"]
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
  LOADK R17 K36 ["$ContentTextFontSize"]
  DUPTABLE R18 K293 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K237 ["AutoButtonColor"]
  LOADK R19 K240 [""]
  SETTABLEKS R19 R18 K238 ["Text"]
  GETIMPORT R19 K288 [UDim2.fromOffset]
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
  LOADK R22 K38 ["$TitleTextFontWeight"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K39 ["$TitleTextFontSize"]
  DUPTABLE R27 K296 [{"LayoutOrder"}]
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
  LOADK R32 K41 ["::UIListLayout"]
  DUPTABLE R33 K296 [{"LayoutOrder"}]
  LOADN R34 3
  SETTABLEKS R34 R33 K50 ["LayoutOrder"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K42 ["FillDirection"]
  DUPTABLE R28 K299 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R29 K124 ["$FontWeight700"]
  SETTABLEKS R29 R28 K13 ["Font"]
  LOADK R29 K44 ["SortOrder"]
  SETTABLEKS R29 R28 K33 ["TextSize"]
  LOADN R29 2
  SETTABLEKS R29 R28 K50 ["LayoutOrder"]
  LOADK R29 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K29 ["TextColor3"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K156 [".Small"]
  DUPTABLE R32 K301 [{"TextSize"}]
  LOADK R33 K188 ["$FontSize50"]
  SETTABLEKS R33 R32 K33 ["TextSize"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K46 ["Enum"]
  DUPTABLE R33 K301 [{"TextSize"}]
  LOADK R34 K47 ["Horizontal"]
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
  LOADK R27 K48 [Enum.FillDirection.Horizontal]
  DUPTABLE R28 K259 [{"ImageTransparency"}]
  LOADK R29 K4 [require]
  SETTABLEKS R29 R28 K258 ["ImageTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K49 ["$RowSpacingDefault"]
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
  LOADK R28 K50 ["LayoutOrder"]
  DUPTABLE R29 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K202 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  LOADK R30 K201 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K51 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R30 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  LOADK R31 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K52 [".ConvertibleToColumn"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R30 K312 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R31 K314 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R31 R30 K310 ["ApplyStrokeMode"]
  LOADK R31 K91 ["$SemanticColorDivider"]
  SETTABLEKS R31 R30 K268 ["Color"]
  LOADK R31 K83 ["$BorderMedium"]
  SETTABLEKS R31 R30 K311 ["Thickness"]
  LOADK R31 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R31 R30 K176 ["Transparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K59 [".SpacingMedium"]
  DUPTABLE R27 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K60 [{"Padding"}]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K10 ["SharedFlags"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K198 [".State-Default"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K50 ["LayoutOrder"]
  DUPTABLE R35 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K61 ["$ColumnSpacingMedium"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  LOADK R36 K62 [".X-RowSpace50"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K51 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R36 K262 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R37 K63 ["$GlobalSpace50"]
  SETTABLEKS R37 R36 K17 ["BackgroundTransparency"]
  LOADK R37 K64 [".X-RowSpace100"]
  SETTABLEKS R37 R36 K23 ["BackgroundColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K49 ["$RowSpacingDefault"]
  DUPTABLE R32 K196 [{"TextColor3"}]
  LOADK R33 K122 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R33 R32 K29 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K65 ["$GlobalSpace100"]
  DUPTABLE R19 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K20 ["$Transparency100"]
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  LOADK R20 K21 ["$BorderNone"]
  SETTABLEKS R20 R19 K18 ["BorderSizePixel"]
  NEWTABLE R20 0 7
  MOVE R21 R2
  LOADK R22 K66 [".X-RowSpace200"]
  DUPTABLE R23 K323 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
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
  LOADK R26 K68 [".X-Pad150 ::UIPadding"]
  DUPTABLE R27 K325 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
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
  LOADK R27 K70 ["PaddingLeft"]
  DUPTABLE R28 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R29 K20 ["$Transparency100"]
  SETTABLEKS R29 R28 K17 ["BackgroundTransparency"]
  LOADK R29 K21 ["$BorderNone"]
  SETTABLEKS R29 R28 K18 ["BorderSizePixel"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K71 ["PaddingRight"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K66 [".X-RowSpace200"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K41 ["::UIListLayout"]
  DUPTABLE R32 K328 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
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
  LOADK R32 K70 ["PaddingLeft"]
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
  LOADK R28 K66 [".X-RowSpace200"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K68 [".X-Pad150 ::UIPadding"]
  DUPTABLE R33 K301 [{"TextSize"}]
  LOADK R34 K188 ["$FontSize50"]
  SETTABLEKS R34 R33 K33 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K66 [".X-RowSpace200"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K68 [".X-Pad150 ::UIPadding"]
  DUPTABLE R34 K301 [{"TextSize"}]
  LOADK R35 K44 ["SortOrder"]
  SETTABLEKS R35 R34 K33 ["TextSize"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K46 ["Enum"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K66 [".X-RowSpace200"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K41 ["::UIListLayout"]
  DUPTABLE R35 K328 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
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
  LOADK R35 K70 ["PaddingLeft"]
  DUPTABLE R36 K94 [{"Size"}]
  LOADK R37 K250 ["$IconLarge"]
  SETTABLEKS R37 R36 K93 ["Size"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K68 [".X-Pad150 ::UIPadding"]
  DUPTABLE R37 K301 [{"TextSize"}]
  LOADK R38 K47 ["Horizontal"]
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
  LOADK R31 K66 [".X-RowSpace200"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K74 ["$GlobalSpace150"]
  DUPTABLE R36 K331 [{"Image"}]
  LOADK R37 K76 ["BorderColor3"]
  SETTABLEKS R37 R36 K284 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K77 ["BorderMode"]
  DUPTABLE R37 K196 [{"TextColor3"}]
  LOADK R38 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R38 R37 K29 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K78 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  DUPTABLE R33 K331 [{"Image"}]
  LOADK R34 K79 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R34 R33 K284 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K80 ["$SemanticColorDividerTransparency88"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K66 [".X-RowSpace200"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K70 ["PaddingLeft"]
  DUPTABLE R42 K331 [{"Image"}]
  LOADK R43 K81 ["Inset"]
  SETTABLEKS R43 R42 K284 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K82 [Enum.BorderMode.Inset]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K66 [".X-RowSpace200"]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K70 ["PaddingLeft"]
  DUPTABLE R43 K331 [{"Image"}]
  LOADK R44 K83 ["$BorderMedium"]
  SETTABLEKS R44 R43 K284 ["Image"]
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
  LOADK R32 K66 [".X-RowSpace200"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K70 ["PaddingLeft"]
  DUPTABLE R37 K331 [{"Image"}]
  LOADK R38 K84 ["::UIPadding"]
  SETTABLEKS R38 R37 K284 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K68 [".X-Pad150 ::UIPadding"]
  DUPTABLE R38 K196 [{"TextColor3"}]
  LOADK R39 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K29 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K80 ["$SemanticColorDividerTransparency88"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K66 [".X-RowSpace200"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K70 ["PaddingLeft"]
  DUPTABLE R42 K331 [{"Image"}]
  LOADK R43 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R43 R42 K284 ["Image"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K82 [Enum.BorderMode.Inset]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K66 [".X-RowSpace200"]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K70 ["PaddingLeft"]
  DUPTABLE R43 K331 [{"Image"}]
  LOADK R44 K86 ["$MenuPadding"]
  SETTABLEKS R44 R43 K284 ["Image"]
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
  LOADK R19 K87 ["> #Menu ::UIListLayout"]
  DUPTABLE R20 K344 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K237 ["AutoButtonColor"]
  LOADK R21 K21 ["$BorderNone"]
  SETTABLEKS R21 R20 K18 ["BorderSizePixel"]
  LOADK R21 K20 ["$Transparency100"]
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  LOADK R21 K240 [""]
  SETTABLEKS R21 R20 K238 ["Text"]
  NEWTABLE R21 0 9
  MOVE R22 R2
  LOADK R23 K84 ["::UIPadding"]
  DUPTABLE R24 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R25 K89 [".Role-Tooltip"]
  SETTABLEKS R25 R24 K70 ["PaddingLeft"]
  LOADK R25 K89 [".Role-Tooltip"]
  SETTABLEKS R25 R24 K71 ["PaddingRight"]
  LOADK R25 K90 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R25 R24 K72 ["PaddingTop"]
  LOADK R25 K90 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R25 R24 K69 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K214 ["::UICorner"]
  DUPTABLE R25 K216 [{"CornerRadius"}]
  LOADK R26 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R26 R25 K215 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K91 ["$SemanticColorDivider"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 6
  MOVE R28 R2
  LOADK R29 K41 ["::UIListLayout"]
  DUPTABLE R30 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R31 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K42 ["FillDirection"]
  LOADK R31 K92 ["> #Wrapper"]
  SETTABLEKS R31 R30 K43 ["Padding"]
  GETIMPORT R31 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K44 ["SortOrder"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K93 ["Size"]
  DUPTABLE R31 K279 [{"LayoutOrder", "Size"}]
  LOADN R32 0
  SETTABLEKS R32 R31 K50 ["LayoutOrder"]
  LOADK R32 K252 ["$IconSmall"]
  SETTABLEKS R32 R31 K93 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K94 [{"Size"}]
  DUPTABLE R32 K351 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
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
  LOADK R32 K96 ["new"]
  DUPTABLE R33 K351 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
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
  DUPTABLE R34 K353 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
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
  LOADK R34 K98 ["::UISizeConstraint"]
  DUPTABLE R35 K279 [{"LayoutOrder", "Size"}]
  LOADN R36 3
  SETTABLEKS R36 R35 K50 ["LayoutOrder"]
  LOADK R36 K252 ["$IconSmall"]
  SETTABLEKS R36 R35 K93 ["Size"]
  CALL R33 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K99 ["MaxSize"]
  DUPTABLE R27 K356 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R28 K149 [Vector2.new]
  LOADN R29 1
  LOADK R30 K101 ["$TooltipMaxSize"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K145 ["AnchorPoint"]
  GETIMPORT R28 K230 [UDim2.fromScale]
  LOADN R29 1
  LOADK R30 K101 ["$TooltipMaxSize"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K146 ["Position"]
  LOADK R28 K21 ["$BorderNone"]
  SETTABLEKS R28 R27 K18 ["BorderSizePixel"]
  LOADK R28 K20 ["$Transparency100"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K102 ["$TooltipContentSpacing"]
  SETTABLEKS R28 R27 K284 ["Image"]
  LOADN R28 3
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  LOADK R28 K252 ["$IconSmall"]
  SETTABLEKS R28 R27 K93 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K103 ["> #Content"]
  DUPTABLE R28 K94 [{"Size"}]
  LOADK R29 K252 ["$IconSmall"]
  SETTABLEKS R29 R28 K93 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K191 [".State-Selected"]
  DUPTABLE R29 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  LOADK R30 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K104 ["$TooltipTextSpacing"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K91 ["$SemanticColorDivider"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K94 [{"Size"}]
  DUPTABLE R38 K331 [{"Image"}]
  LOADK R39 K105 ["> #TitleFrame"]
  SETTABLEKS R39 R38 K284 ["Image"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K106 [{"FillDirection", "SortOrder"}]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K199 [":hover"]
  DUPTABLE R35 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R36 K107 ["> #Spacer"]
  SETTABLEKS R36 R35 K23 ["BackgroundColor3"]
  LOADK R36 K108 ["::UIFlexItem"]
  SETTABLEKS R36 R35 K17 ["BackgroundTransparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K195 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K91 ["$SemanticColorDivider"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 2
  MOVE R38 R2
  LOADK R39 K109 ["FlexMode"]
  DUPTABLE R40 K259 [{"ImageTransparency"}]
  LOADK R41 K4 [require]
  SETTABLEKS R41 R40 K258 ["ImageTransparency"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K114 ["> #Text"]
  DUPTABLE R41 K196 [{"TextColor3"}]
  LOADK R42 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R42 R41 K29 ["TextColor3"]
  CALL R39 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K110 [{"FlexMode"}]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K195 [".State-Disabled"]
  DUPTABLE R25 K259 [{"ImageTransparency"}]
  LOADK R26 K4 [require]
  SETTABLEKS R26 R25 K258 ["ImageTransparency"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K111 ["UIFlexMode"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K84 ["::UIPadding"]
  DUPTABLE R26 K368 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
  LOADK R27 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R27 R26 K70 ["PaddingLeft"]
  LOADK R27 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R27 R26 K72 ["PaddingTop"]
  LOADK R27 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R27 R26 K69 ["PaddingBottom"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K114 ["> #Text"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 7
  MOVE R25 R2
  LOADK R26 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R27 K371 [{"Thickness"}]
  LOADK R28 K21 ["$BorderNone"]
  SETTABLEKS R28 R27 K311 ["Thickness"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K214 ["::UICorner"]
  DUPTABLE R28 K216 [{"CornerRadius"}]
  LOADK R29 K116 ["TextXAlignment"]
  SETTABLEKS R29 R28 K215 ["CornerRadius"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K117 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R29 K374 [{"TextSize", "TextXAlignment", "TextTruncate"}]
  LOADK R30 K188 ["$FontSize50"]
  SETTABLEKS R30 R29 K33 ["TextSize"]
  GETIMPORT R30 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K116 ["TextXAlignment"]
  GETIMPORT R30 K190 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R30 R29 K184 ["TextTruncate"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K84 ["::UIPadding"]
  DUPTABLE R33 K375 [{"PaddingLeft", "PaddingRight"}]
  LOADK R34 K63 ["$GlobalSpace50"]
  SETTABLEKS R34 R33 K70 ["PaddingLeft"]
  LOADK R34 K63 ["$GlobalSpace50"]
  SETTABLEKS R34 R33 K71 ["PaddingRight"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K198 [".State-Default"]
  DUPTABLE R30 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K120 [">> TextLabel"]
  SETTABLEKS R31 R30 K23 ["BackgroundColor3"]
  LOADK R31 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R31 R30 K17 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K117 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R34 K196 [{"TextColor3"}]
  LOADK R35 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R35 R34 K29 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K122 ["$SemanticColorContentStandardInverse"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R35 K379 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R36 K314 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R36 R35 K310 ["ApplyStrokeMode"]
  LOADK R36 K124 ["$FontWeight700"]
  SETTABLEKS R36 R35 K268 ["Color"]
  LOADK R36 K83 ["$BorderMedium"]
  SETTABLEKS R36 R35 K311 ["Thickness"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K117 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R36 K196 [{"TextColor3"}]
  LOADK R37 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K29 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K125 [".Role-Scroller"]
  DUPTABLE R32 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K126 ["> #Scroller"]
  SETTABLEKS R33 R32 K23 ["BackgroundColor3"]
  LOADK R33 K127 ["AutomaticCanvasSize"]
  SETTABLEKS R33 R32 K17 ["BackgroundTransparency"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K117 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R36 K196 [{"TextColor3"}]
  LOADK R37 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K29 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K195 [".State-Disabled"]
  DUPTABLE R33 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K120 [">> TextLabel"]
  SETTABLEKS R34 R33 K23 ["BackgroundColor3"]
  LOADK R34 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R34 R33 K17 ["BackgroundTransparency"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K117 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R37 K196 [{"TextColor3"}]
  LOADK R38 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K29 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K128 ["ScrollingDirection"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 3
  MOVE R10 R2
  LOADK R11 K25 ["$SemanticColorSurface100"]
  DUPTABLE R12 K94 [{"Size"}]
  GETIMPORT R13 K288 [UDim2.fromOffset]
  LOADN R14 16
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K93 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K129 ["ScrollBarThickness"]
  DUPTABLE R16 K94 [{"Size"}]
  GETIMPORT R17 K288 [UDim2.fromOffset]
  LOADN R18 16
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K93 ["Size"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K198 [".State-Default"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K130 ["HorizontalScrollBarInset"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K131 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  DUPTABLE R21 K331 [{"Image"}]
  LOADK R22 K132 ["AutomaticSize"]
  SETTABLEKS R22 R21 K284 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K133 ["XY"]
  DUPTABLE R22 K331 [{"Image"}]
  LOADK R23 K134 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K284 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K135 ["X"]
  DUPTABLE R23 K331 [{"Image"}]
  LOADK R24 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R24 R23 K284 ["Image"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K137 ["ScrollBarInset"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K131 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  DUPTABLE R22 K331 [{"Image"}]
  LOADK R23 K138 ["None"]
  SETTABLEKS R23 R22 K284 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K133 ["XY"]
  DUPTABLE R23 K331 [{"Image"}]
  LOADK R24 K139 [Enum.ScrollBarInset.None]
  SETTABLEKS R24 R23 K284 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K135 ["X"]
  DUPTABLE R24 K331 [{"Image"}]
  LOADK R25 K140 ["> #LeftGradient"]
  SETTABLEKS R25 R24 K284 ["Image"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K195 [".State-Disabled"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K130 ["HorizontalScrollBarInset"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K141 ["ZIndex"]
  DUPTABLE R22 K331 [{"Image"}]
  LOADK R23 K136 [Enum.ScrollingDirection.X]
  SETTABLEKS R23 R22 K284 ["Image"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K137 ["ScrollBarInset"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K141 ["ZIndex"]
  DUPTABLE R23 K331 [{"Image"}]
  LOADK R24 K140 ["> #LeftGradient"]
  SETTABLEKS R24 R23 K284 ["Image"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K142 [{"Size", "ZIndex"}]
  DUPTABLE R9 K265 [{"BackgroundTransparency"}]
  LOADK R10 K20 ["$Transparency100"]
  SETTABLEKS R10 R9 K17 ["BackgroundTransparency"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K143 ["$TabGradientSize"]
  DUPTABLE R13 K216 [{"CornerRadius"}]
  LOADK R14 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R14 R13 K215 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K144 ["> #RightGradient"]
  DUPTABLE R14 K312 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R15 K314 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K310 ["ApplyStrokeMode"]
  LOADK R15 K91 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K268 ["Color"]
  LOADK R15 K83 ["$BorderMedium"]
  SETTABLEKS R15 R14 K311 ["Thickness"]
  LOADK R15 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K176 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K145 ["AnchorPoint"]
  DUPTABLE R15 K265 [{"BackgroundTransparency"}]
  LOADK R16 K20 ["$Transparency100"]
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  NEWTABLE R16 0 4
  MOVE R17 R2
  LOADK R18 K143 ["$TabGradientSize"]
  DUPTABLE R19 K216 [{"CornerRadius"}]
  LOADK R20 K254 ["$GlobalRadiusXSmall"]
  SETTABLEKS R20 R19 K215 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K146 ["Position"]
  DUPTABLE R20 K19 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K20 ["$Transparency100"]
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  LOADK R21 K21 ["$BorderNone"]
  SETTABLEKS R21 R20 K18 ["BorderSizePixel"]
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
  LOADK R24 K147 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  DUPTABLE R25 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K204 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R26 R25 K23 ["BackgroundColor3"]
  LOADK R26 K205 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K148 ["Vector2"]
  DUPTABLE R21 K405 [{"Size", "TextSize", "Font", "AutoButtonColor", "BorderSizePixel"}]
  GETIMPORT R22 K288 [UDim2.fromOffset]
  LOADN R23 82
  LOADN R24 24
  CALL R22 2 1
  SETTABLEKS R22 R21 K93 ["Size"]
  LOADK R22 K188 ["$FontSize50"]
  SETTABLEKS R22 R21 K33 ["TextSize"]
  LOADK R22 K186 ["$FontWeight600"]
  SETTABLEKS R22 R21 K13 ["Font"]
  LOADB R22 0
  SETTABLEKS R22 R21 K237 ["AutoButtonColor"]
  LOADK R22 K21 ["$BorderNone"]
  SETTABLEKS R22 R21 K18 ["BorderSizePixel"]
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K84 ["::UIPadding"]
  DUPTABLE R25 K375 [{"PaddingLeft", "PaddingRight"}]
  LOADK R26 K74 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K70 ["PaddingLeft"]
  LOADK R26 K74 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K71 ["PaddingRight"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K198 [".State-Default"]
  DUPTABLE R26 K406 [{"BackgroundTransparency", "TextColor3"}]
  LOADK R27 K20 ["$Transparency100"]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  LOADK R27 K187 ["$SemanticColorContentMuted"]
  SETTABLEKS R27 R26 K29 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K191 [".State-Selected"]
  DUPTABLE R27 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R28 K193 ["$SemanticColorStatesSelected"]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  LOADK R28 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K29 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K151 ["> Frame"]
  DUPTABLE R22 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R23 K91 ["$SemanticColorDivider"]
  SETTABLEKS R23 R22 K23 ["BackgroundColor3"]
  LOADK R23 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R23 R22 K17 ["BackgroundTransparency"]
  LOADK R23 K21 ["$BorderNone"]
  SETTABLEKS R23 R22 K18 ["BorderSizePixel"]
  LOADK R23 K157 ["$SmallSeparator"]
  SETTABLEKS R23 R22 K93 ["Size"]
  CALL R20 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 4
  MOVE R12 R2
  LOADK R13 K41 ["::UIListLayout"]
  DUPTABLE R14 K45 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K42 ["FillDirection"]
  LOADK R15 K65 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K43 ["Padding"]
  GETIMPORT R15 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K44 ["SortOrder"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K84 ["::UIPadding"]
  DUPTABLE R15 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K74 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K70 ["PaddingLeft"]
  LOADK R16 K74 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K71 ["PaddingRight"]
  LOADK R16 K65 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K72 ["PaddingTop"]
  LOADK R16 K65 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K69 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K153 ["$SemanticColorDividerTransparency"]
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
  LOADK R20 K151 ["> Frame"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K154 [".Role-DividerV"]
  DUPTABLE R25 K152 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R26 K91 ["$SemanticColorDivider"]
  SETTABLEKS R26 R25 K23 ["BackgroundColor3"]
  LOADK R26 K153 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  LOADK R26 K21 ["$BorderNone"]
  SETTABLEKS R26 R25 K18 ["BorderSizePixel"]
  LOADK R26 K157 ["$SmallSeparator"]
  SETTABLEKS R26 R25 K93 ["Size"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K155 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K107 ["> #Spacer"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K108 ["::UIFlexItem"]
  DUPTABLE R25 K110 [{"FlexMode"}]
  GETIMPORT R26 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R26 R25 K109 ["FlexMode"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K156 [".Small"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K41 ["::UIListLayout"]
  DUPTABLE R15 K414 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R16 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K42 ["FillDirection"]
  GETIMPORT R16 K415 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K413 ["HorizontalAlignment"]
  GETIMPORT R16 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K44 ["SortOrder"]
  GETIMPORT R16 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K160 ["VerticalAlignment"]
  LOADK R16 K160 ["VerticalAlignment"]
  SETTABLEKS R16 R15 K43 ["Padding"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K242 ["> TextLabel"]
  DUPTABLE R16 K353 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R17 K20 ["$Transparency100"]
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  LOADK R17 K15 ["$FontWeight400"]
  SETTABLEKS R17 R16 K13 ["Font"]
  LOADK R17 K161 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  SETTABLEKS R17 R16 K33 ["TextSize"]
  LOADN R17 0
  SETTABLEKS R17 R16 K50 ["LayoutOrder"]
  LOADK R17 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R17 R16 K29 ["TextColor3"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K162 ["UIFlexAlignment"]
  DUPTABLE R12 K419 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R13 K422 [Color3.fromHex]
  LOADK R14 K167 [">> .LeftMezzControls"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K23 ["BackgroundColor3"]
  LOADK R13 K10 ["SharedFlags"]
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  GETIMPORT R13 K288 [UDim2.fromOffset]
  LOADN R14 40
  LOADN R15 24
  CALL R13 2 1
  SETTABLEKS R13 R12 K93 ["Size"]
  NEWTABLE R13 0 6
  MOVE R14 R2
  LOADK R15 K214 ["::UICorner"]
  DUPTABLE R16 K216 [{"CornerRadius"}]
  LOADK R17 K168 [{"PaddingLeft"}]
  SETTABLEKS R17 R16 K215 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K84 ["::UIPadding"]
  DUPTABLE R17 K73 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R18 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R18 R17 K69 ["PaddingBottom"]
  LOADK R18 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R18 R17 K70 ["PaddingLeft"]
  LOADK R18 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R18 R17 K71 ["PaddingRight"]
  LOADK R18 K113 [Enum.UIFlexMode.Fill]
  SETTABLEKS R18 R17 K72 ["PaddingTop"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K41 ["::UIListLayout"]
  DUPTABLE R18 K425 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R19 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K42 ["FillDirection"]
  GETIMPORT R19 K415 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K413 ["HorizontalAlignment"]
  GETIMPORT R19 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K44 ["SortOrder"]
  GETIMPORT R19 K166 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K160 ["VerticalAlignment"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K151 ["> Frame"]
  DUPTABLE R19 K426 [{"BackgroundColor3", "Size"}]
  LOADK R20 K171 [{"PaddingRight"}]
  SETTABLEKS R20 R19 K23 ["BackgroundColor3"]
  GETIMPORT R20 K288 [UDim2.fromOffset]
  LOADN R21 20
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K93 ["Size"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K214 ["::UICorner"]
  DUPTABLE R23 K216 [{"CornerRadius"}]
  LOADK R24 K168 [{"PaddingLeft"}]
  SETTABLEKS R24 R23 K215 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K191 [".State-Selected"]
  DUPTABLE R20 K428 [{"BackgroundColor3"}]
  GETIMPORT R21 K422 [Color3.fromHex]
  LOADK R22 K173 ["Shrink"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K23 ["BackgroundColor3"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K41 ["::UIListLayout"]
  DUPTABLE R24 K430 [{"HorizontalAlignment"}]
  GETIMPORT R25 K432 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R25 R24 K413 ["HorizontalAlignment"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K195 [".State-Disabled"]
  DUPTABLE R21 K265 [{"BackgroundTransparency"}]
  LOADK R22 K177 [{"Transparency"}]
  SETTABLEKS R22 R21 K17 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K151 ["> Frame"]
  DUPTABLE R25 K265 [{"BackgroundTransparency"}]
  LOADK R26 K177 [{"Transparency"}]
  SETTABLEKS R26 R25 K17 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K178 ["NumberSequence"]
  DUPTABLE R13 K293 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R14 0
  SETTABLEKS R14 R13 K237 ["AutoButtonColor"]
  LOADK R14 K240 [""]
  SETTABLEKS R14 R13 K238 ["Text"]
  GETIMPORT R14 K288 [UDim2.fromOffset]
  LOADN R15 85
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K93 ["Size"]
  NEWTABLE R14 0 13
  MOVE R15 R2
  LOADK R16 K214 ["::UICorner"]
  DUPTABLE R17 K216 [{"CornerRadius"}]
  LOADK R18 K179 [NumberSequence.new]
  SETTABLEKS R18 R17 K215 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K180 ["NumberSequenceKeypoint"]
  DUPTABLE R18 K94 [{"Size"}]
  GETIMPORT R19 K288 [UDim2.fromOffset]
  LOADN R20 120
  LOADN R21 24
  CALL R19 2 1
  SETTABLEKS R19 R18 K93 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K41 ["::UIListLayout"]
  DUPTABLE R19 K437 [{"HorizontalFlex"}]
  GETIMPORT R20 K438 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R20 R19 K159 ["HorizontalFlex"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K84 ["::UIPadding"]
  DUPTABLE R20 K85 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K183 [".Component-RibbonTab"]
  SETTABLEKS R21 R20 K70 ["PaddingLeft"]
  LOADK R21 K184 ["TextTruncate"]
  SETTABLEKS R21 R20 K71 ["PaddingRight"]
  LOADK R21 K185 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  SETTABLEKS R21 R20 K72 ["PaddingTop"]
  LOADK R21 K186 ["$FontWeight600"]
  SETTABLEKS R21 R20 K69 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K187 ["$SemanticColorContentMuted"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K41 ["::UIListLayout"]
  DUPTABLE R25 K444 [{"HorizontalFlex", "FillDirection", "SortOrder"}]
  GETIMPORT R26 K438 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R26 R25 K159 ["HorizontalFlex"]
  GETIMPORT R26 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K42 ["FillDirection"]
  GETIMPORT R26 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K44 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K141 ["ZIndex"]
  DUPTABLE R22 K94 [{"Size"}]
  LOADK R23 K252 ["$IconSmall"]
  SETTABLEKS R23 R22 K93 ["Size"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K108 ["::UIFlexItem"]
  DUPTABLE R26 K446 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R27 K223 [Enum.UIFlexMode.Custom]
  SETTABLEKS R27 R26 K109 ["FlexMode"]
  LOADN R27 0
  SETTABLEKS R27 R26 K445 ["ShrinkRation"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K191 [".State-Selected"]
  DUPTABLE R23 K296 [{"LayoutOrder"}]
  LOADN R24 0
  SETTABLEKS R24 R23 K50 ["LayoutOrder"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K41 ["::UIListLayout"]
  DUPTABLE R27 K296 [{"LayoutOrder"}]
  LOADN R28 3
  SETTABLEKS R28 R27 K50 ["LayoutOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K192 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  DUPTABLE R24 K449 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R25 K21 ["$BorderNone"]
  SETTABLEKS R25 R24 K18 ["BorderSizePixel"]
  LOADK R25 K20 ["$Transparency100"]
  SETTABLEKS R25 R24 K17 ["BackgroundTransparency"]
  LOADK R25 K194 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R25 R24 K284 ["Image"]
  LOADN R25 4
  SETTABLEKS R25 R24 K50 ["LayoutOrder"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K195 [".State-Disabled"]
  DUPTABLE R28 K331 [{"Image"}]
  LOADK R29 K196 [{"TextColor3"}]
  SETTABLEKS R29 R28 K284 ["Image"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K197 ["$SemanticColorContentDisabled"]
  DUPTABLE R25 K454 [{"Font", "TextSize", "TextColor3", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R26 K15 ["$FontWeight400"]
  SETTABLEKS R26 R25 K13 ["Font"]
  LOADK R26 K188 ["$FontSize50"]
  SETTABLEKS R26 R25 K33 ["TextSize"]
  LOADK R26 K31 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K29 ["TextColor3"]
  GETIMPORT R26 K246 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R26 R25 K184 ["TextTruncate"]
  GETIMPORT R26 K119 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K116 ["TextXAlignment"]
  LOADN R26 2
  SETTABLEKS R26 R25 K50 ["LayoutOrder"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K198 [".State-Default"]
  DUPTABLE R26 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K120 [">> TextLabel"]
  SETTABLEKS R27 R26 K23 ["BackgroundColor3"]
  LOADK R27 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R27 R26 K17 ["BackgroundTransparency"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K191 [".State-Selected"]
  DUPTABLE R30 K259 [{"ImageTransparency"}]
  LOADK R31 K199 [":hover"]
  SETTABLEKS R31 R30 K258 ["ImageTransparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R27 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K126 ["> #Scroller"]
  SETTABLEKS R28 R27 K23 ["BackgroundColor3"]
  LOADK R28 K127 ["AutomaticCanvasSize"]
  SETTABLEKS R28 R27 K17 ["BackgroundTransparency"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K191 [".State-Selected"]
  DUPTABLE R31 K259 [{"ImageTransparency"}]
  LOADK R32 K10 ["SharedFlags"]
  SETTABLEKS R32 R31 K258 ["ImageTransparency"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K122 ["$SemanticColorContentStandardInverse"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K53 ["$ConvertibleRowToColumnFillDirection"]
  DUPTABLE R32 K379 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R33 K314 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R33 R32 K310 ["ApplyStrokeMode"]
  LOADK R33 K124 ["$FontWeight700"]
  SETTABLEKS R33 R32 K268 ["Color"]
  LOADK R33 K83 ["$BorderMedium"]
  SETTABLEKS R33 R32 K311 ["Thickness"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K191 [".State-Selected"]
  DUPTABLE R33 K259 [{"ImageTransparency"}]
  LOADK R34 K10 ["SharedFlags"]
  SETTABLEKS R34 R33 K258 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K195 [".State-Disabled"]
  DUPTABLE R29 K200 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K120 [">> TextLabel"]
  SETTABLEKS R30 R29 K23 ["BackgroundColor3"]
  LOADK R30 K121 [{"Font", "TextColor3", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R30 R29 K17 ["BackgroundTransparency"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K197 ["$SemanticColorContentDisabled"]
  DUPTABLE R33 K196 [{"TextColor3"}]
  LOADK R34 K197 ["$SemanticColorContentDisabled"]
  SETTABLEKS R34 R33 K29 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K201 ["$SemanticColorStateLayerHover"]
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
  LOADK R7 K202 ["$SemanticColorStateLayerHoverTransparency"]
  MOVE R8 R5
  DUPTABLE R9 K464 [{"SpinboxDefaultSize", "SpinboxWithIconSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 75
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K459 ["SpinboxDefaultSize"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 85
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K460 ["SpinboxWithIconSize"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 61
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K461 ["SpinboxShortSize"]
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
  SETTABLEKS R10 R9 K462 ["SizeDense"]
  GETIMPORT R10 K97 [UDim2.new]
  LOADN R11 0
  LOADN R12 180
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K463 ["SliderSize"]
  CALL R6 3 -1
  RETURN R6 -1
