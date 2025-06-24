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
  GETTABLEKS R5 R6 K12 ["getFFlagTestingControlsOptOut"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagLuaRibbonControlVisibility"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K15 [game]
  LOADK R8 K16 ["FixStylingStateLayer"]
  LOADB R9 0
  NAMECALL R6 R6 K17 ["DefineFastFlag"]
  CALL R6 3 1
  GETIMPORT R7 K15 [game]
  LOADK R9 K18 ["RibbonButtonMaxWidth"]
  LOADN R10 120
  NAMECALL R7 R7 K19 ["DefineFastInt"]
  CALL R7 3 1
  NEWTABLE R8 0 70
  MOVE R9 R2
  LOADK R10 K20 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R11 K22 [{"Font"}]
  GETIMPORT R12 K25 [Enum.Font.SourceSans]
  SETTABLEKS R12 R11 K21 ["Font"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K26 [".Role-Surface"]
  DUPTABLE R12 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R13 K30 ["$BackgroundTransparent"]
  SETTABLEKS R13 R12 K27 ["BackgroundTransparency"]
  LOADK R13 K31 ["$BorderNone"]
  SETTABLEKS R13 R12 K28 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K32 [".Role-Surface100"]
  DUPTABLE R13 K34 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R14 K35 ["$SemanticColorSurface100"]
  SETTABLEKS R14 R13 K33 ["BackgroundColor3"]
  LOADK R14 K31 ["$BorderNone"]
  SETTABLEKS R14 R13 K28 ["BorderSizePixel"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K36 [".Role-Surface200"]
  DUPTABLE R14 K34 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R15 K37 ["$SemanticColorSurface200"]
  SETTABLEKS R15 R14 K33 ["BackgroundColor3"]
  LOADK R15 K31 ["$BorderNone"]
  SETTABLEKS R15 R14 K28 ["BorderSizePixel"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K38 [".Text-Label"]
  DUPTABLE R15 K41 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R16 K42 ["$FontWeight400"]
  SETTABLEKS R16 R15 K21 ["Font"]
  LOADK R16 K43 ["$SemanticColorContentMuted"]
  SETTABLEKS R16 R15 K39 ["TextColor3"]
  LOADK R16 K44 ["$FontSize100"]
  SETTABLEKS R16 R15 K40 ["TextSize"]
  LOADK R16 K31 ["$BorderNone"]
  SETTABLEKS R16 R15 K28 ["BorderSizePixel"]
  LOADK R16 K30 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K27 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K45 [".Text-Title"]
  DUPTABLE R16 K41 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R17 K46 ["$FontWeight700"]
  SETTABLEKS R17 R16 K21 ["Font"]
  LOADK R17 K43 ["$SemanticColorContentMuted"]
  SETTABLEKS R17 R16 K39 ["TextColor3"]
  LOADK R17 K44 ["$FontSize100"]
  SETTABLEKS R17 R16 K40 ["TextSize"]
  LOADK R17 K31 ["$BorderNone"]
  SETTABLEKS R17 R16 K28 ["BorderSizePixel"]
  LOADK R17 K30 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K27 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K47 [".Role-Menu"]
  DUPTABLE R17 K50 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R18 K35 ["$SemanticColorSurface100"]
  SETTABLEKS R18 R17 K33 ["BackgroundColor3"]
  LOADK R18 K51 ["$SemanticColorPanelBorder"]
  SETTABLEKS R18 R17 K48 ["BorderColor3"]
  GETIMPORT R18 K53 [Enum.BorderMode.Inset]
  SETTABLEKS R18 R17 K49 ["BorderMode"]
  LOADK R18 K54 ["$BorderMedium"]
  SETTABLEKS R18 R17 K28 ["BorderSizePixel"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K55 ["::UIPadding"]
  DUPTABLE R21 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K61 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K56 ["PaddingLeft"]
  LOADK R22 K61 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K57 ["PaddingRight"]
  LOADK R22 K61 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K58 ["PaddingTop"]
  LOADK R22 K61 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K59 ["PaddingBottom"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K62 [".Role-Tooltip"]
  DUPTABLE R18 K50 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R19 K63 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R19 R18 K33 ["BackgroundColor3"]
  LOADK R19 K64 ["$SemanticColorDivider"]
  SETTABLEKS R19 R18 K48 ["BorderColor3"]
  GETIMPORT R19 K53 [Enum.BorderMode.Inset]
  SETTABLEKS R19 R18 K49 ["BorderMode"]
  LOADK R19 K54 ["$BorderMedium"]
  SETTABLEKS R19 R18 K28 ["BorderSizePixel"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K65 [">> TextLabel"]
  DUPTABLE R22 K66 [{"TextColor3"}]
  LOADK R23 K67 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R23 R22 K39 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K68 [".Role-Scroller"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K69 ["> #Scroller"]
  DUPTABLE R23 K74 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R24 K77 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K70 ["AutomaticCanvasSize"]
  GETIMPORT R24 K79 [Enum.ScrollingDirection.X]
  SETTABLEKS R24 R23 K71 ["ScrollingDirection"]
  LOADN R24 0
  SETTABLEKS R24 R23 K72 ["ScrollBarThickness"]
  GETIMPORT R24 K82 [Enum.ScrollBarInset.None]
  SETTABLEKS R24 R23 K73 ["HorizontalScrollBarInset"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K83 ["> #LeftGradient"]
  DUPTABLE R24 K86 [{"Size", "ZIndex"}]
  GETIMPORT R25 K89 [UDim2.new]
  LOADN R26 0
  LOADN R27 22
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K84 ["Size"]
  LOADN R25 10
  SETTABLEKS R25 R24 K85 ["ZIndex"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K90 ["> #RightGradient"]
  DUPTABLE R25 K93 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R26 K95 [Vector2.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K91 ["AnchorPoint"]
  GETIMPORT R26 K89 [UDim2.new]
  LOADN R27 0
  LOADN R28 22
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K84 ["Size"]
  GETIMPORT R26 K89 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K92 ["Position"]
  LOADN R26 10
  SETTABLEKS R26 R25 K85 ["ZIndex"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K96 [".TooltipTextBounds"]
  DUPTABLE R20 K99 [{"TextWrapped", "TextXAlignment"}]
  LOADB R21 1
  SETTABLEKS R21 R20 K97 ["TextWrapped"]
  GETIMPORT R21 K101 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K98 ["TextXAlignment"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K102 ["::UISizeConstraint"]
  DUPTABLE R24 K104 [{"MaxSize"}]
  GETIMPORT R25 K95 [Vector2.new]
  LOADN R26 200
  LOADK R27 K105 [∞]
  CALL R25 2 1
  SETTABLEKS R25 R24 K103 ["MaxSize"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K106 [".Role-DividerH"]
  DUPTABLE R21 K107 [{"Size"}]
  GETIMPORT R22 K89 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 1
  CALL R22 4 1
  SETTABLEKS R22 R21 K84 ["Size"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K108 ["> Frame"]
  DUPTABLE R25 K109 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R26 K64 ["$SemanticColorDivider"]
  SETTABLEKS R26 R25 K33 ["BackgroundColor3"]
  LOADK R26 K110 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R26 R25 K27 ["BackgroundTransparency"]
  LOADK R26 K31 ["$BorderNone"]
  SETTABLEKS R26 R25 K28 ["BorderSizePixel"]
  GETIMPORT R26 K89 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 1
  CALL R26 4 1
  SETTABLEKS R26 R25 K84 ["Size"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K111 [".Role-DividerV"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 5
  MOVE R24 R2
  LOADK R25 K108 ["> Frame"]
  DUPTABLE R26 K112 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R27 K64 ["$SemanticColorDivider"]
  SETTABLEKS R27 R26 K33 ["BackgroundColor3"]
  LOADK R27 K110 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R27 R26 K27 ["BackgroundTransparency"]
  LOADK R27 K31 ["$BorderNone"]
  SETTABLEKS R27 R26 K28 ["BorderSizePixel"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K113 [".Small"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K108 ["> Frame"]
  DUPTABLE R31 K107 [{"Size"}]
  GETIMPORT R32 K89 [UDim2.new]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  LOADN R36 28
  CALL R32 4 1
  SETTABLEKS R32 R31 K84 ["Size"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K114 [".Medium"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K108 ["> Frame"]
  DUPTABLE R32 K107 [{"Size"}]
  GETIMPORT R33 K89 [UDim2.new]
  LOADN R34 0
  LOADN R35 1
  LOADN R36 0
  LOADN R37 48
  CALL R33 4 1
  SETTABLEKS R33 R32 K84 ["Size"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K115 [".Large"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K108 ["> Frame"]
  DUPTABLE R33 K107 [{"Size"}]
  GETIMPORT R34 K89 [UDim2.new]
  LOADN R35 0
  LOADN R36 1
  LOADN R37 0
  LOADN R38 64
  CALL R34 4 1
  SETTABLEKS R34 R33 K84 ["Size"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K116 [".RibbonButton-Divider"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K55 ["::UIPadding"]
  DUPTABLE R34 K117 [{"PaddingLeft", "PaddingRight"}]
  LOADK R35 K118 ["$GlobalSpace150"]
  SETTABLEKS R35 R34 K56 ["PaddingLeft"]
  LOADK R35 K118 ["$GlobalSpace150"]
  SETTABLEKS R35 R34 K57 ["PaddingRight"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K119 [".X-RowSpaceBetween"]
  DUPTABLE R23 K107 [{"Size"}]
  GETIMPORT R24 K121 [UDim2.fromScale]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K84 ["Size"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K122 ["::UIListLayout"]
  DUPTABLE R27 K128 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  GETIMPORT R28 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K123 ["FillDirection"]
  LOADK R28 K131 ["$GlobalSpace200"]
  SETTABLEKS R28 R27 K124 ["Padding"]
  GETIMPORT R28 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K125 ["SortOrder"]
  GETIMPORT R28 K136 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R28 R27 K126 ["HorizontalFlex"]
  GETIMPORT R28 K138 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R28 R27 K127 ["ItemLineAlignment"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K139 [".X-RowSpace50"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K122 ["::UIListLayout"]
  DUPTABLE R28 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R29 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K123 ["FillDirection"]
  LOADK R29 K141 ["$GlobalSpace50"]
  SETTABLEKS R29 R28 K124 ["Padding"]
  GETIMPORT R29 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K125 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K142 [".X-RowSpace100"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K122 ["::UIListLayout"]
  DUPTABLE R29 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R30 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K123 ["FillDirection"]
  LOADK R30 K61 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K124 ["Padding"]
  GETIMPORT R30 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K125 ["SortOrder"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K143 [".X-RowSpace150"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K122 ["::UIListLayout"]
  DUPTABLE R30 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R31 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K123 ["FillDirection"]
  LOADK R31 K118 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K124 ["Padding"]
  GETIMPORT R31 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K125 ["SortOrder"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K144 [".X-RowSpace200"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K122 ["::UIListLayout"]
  DUPTABLE R15 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K123 ["FillDirection"]
  LOADK R16 K131 ["$GlobalSpace200"]
  SETTABLEKS R16 R15 K124 ["Padding"]
  GETIMPORT R16 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K125 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K145 [".X-ColumnSpace25"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K122 ["::UIListLayout"]
  DUPTABLE R16 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K147 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K123 ["FillDirection"]
  LOADK R17 K148 ["$GlobalSpace25"]
  SETTABLEKS R17 R16 K124 ["Padding"]
  GETIMPORT R17 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K125 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K149 [".X-ColumnSpace50"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K122 ["::UIListLayout"]
  DUPTABLE R17 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K147 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K123 ["FillDirection"]
  LOADK R18 K141 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K124 ["Padding"]
  GETIMPORT R18 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K125 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K150 [".X-ColumnSpace100"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K122 ["::UIListLayout"]
  DUPTABLE R18 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K147 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K123 ["FillDirection"]
  LOADK R19 K61 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K124 ["Padding"]
  GETIMPORT R19 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K125 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K151 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R15 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K118 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K56 ["PaddingLeft"]
  LOADK R16 K118 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K57 ["PaddingRight"]
  LOADK R16 K118 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K58 ["PaddingTop"]
  LOADK R16 K118 ["$GlobalSpace150"]
  SETTABLEKS R16 R15 K59 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K152 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R16 K153 [{"PaddingLeft"}]
  LOADK R17 K61 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K56 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K154 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R17 K155 [{"PaddingRight"}]
  LOADK R18 K61 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K57 ["PaddingRight"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K156 [".X-RowXS"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K122 ["::UIListLayout"]
  DUPTABLE R22 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K123 ["FillDirection"]
  LOADK R23 K148 ["$GlobalSpace25"]
  SETTABLEKS R23 R22 K124 ["Padding"]
  GETIMPORT R23 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K125 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K157 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R19 K159 [{"Transparency"}]
  GETIMPORT R20 K161 [NumberSequence.new]
  NEWTABLE R21 0 2
  GETIMPORT R22 K163 [NumberSequenceKeypoint.new]
  LOADN R23 0
  LOADN R24 1
  CALL R22 2 1
  GETIMPORT R23 K163 [NumberSequenceKeypoint.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R20 1 1
  SETTABLEKS R20 R19 K158 ["Transparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K164 [".X-FadeRight ::UIGradient"]
  DUPTABLE R20 K159 [{"Transparency"}]
  GETIMPORT R21 K161 [NumberSequence.new]
  NEWTABLE R22 0 2
  GETIMPORT R23 K163 [NumberSequenceKeypoint.new]
  LOADN R24 0
  LOADN R25 0
  CALL R23 2 1
  GETIMPORT R24 K163 [NumberSequenceKeypoint.new]
  LOADN R25 1
  LOADN R26 1
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R21 1 1
  SETTABLEKS R21 R20 K158 ["Transparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K165 [".Role-Mezzanine ::UIListLayout"]
  DUPTABLE R21 K167 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R22 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K123 ["FillDirection"]
  GETIMPORT R22 K136 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R22 R21 K126 ["HorizontalFlex"]
  LOADK R22 K61 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K124 ["Padding"]
  GETIMPORT R22 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K125 ["SortOrder"]
  GETIMPORT R22 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K166 ["VerticalAlignment"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K169 [".Role-TabLocation ::UIPadding"]
  DUPTABLE R22 K170 [{"PaddingLeft", "PaddingTop"}]
  LOADK R23 K171 ["$GlobalSpace75"]
  SETTABLEKS R23 R22 K56 ["PaddingLeft"]
  LOADK R23 K141 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K58 ["PaddingTop"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K172 [".Component-RibbonTab"]
  DUPTABLE R23 K174 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R24 K30 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K27 ["BackgroundTransparency"]
  LOADK R24 K42 ["$FontWeight400"]
  SETTABLEKS R24 R23 K21 ["Font"]
  LOADK R24 K43 ["$SemanticColorContentMuted"]
  SETTABLEKS R24 R23 K39 ["TextColor3"]
  LOADK R24 K175 ["$FontSize150"]
  SETTABLEKS R24 R23 K40 ["TextSize"]
  GETIMPORT R24 K177 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R24 R23 K173 ["TextTruncate"]
  NEWTABLE R24 0 6
  MOVE R25 R2
  LOADK R26 K178 [".State-Selected"]
  DUPTABLE R27 K179 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R28 K180 ["$SemanticColorStatesSelected"]
  SETTABLEKS R28 R27 K33 ["BackgroundColor3"]
  LOADK R28 K181 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R28 R27 K27 ["BackgroundTransparency"]
  LOADK R28 K46 ["$FontWeight700"]
  SETTABLEKS R28 R27 K21 ["Font"]
  LOADK R28 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K39 ["TextColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K183 [".State-Disabled"]
  DUPTABLE R28 K66 [{"TextColor3"}]
  LOADK R29 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R29 R28 K39 ["TextColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K185 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R29 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K187 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R30 R29 K33 ["BackgroundColor3"]
  LOADK R30 K188 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R30 R29 K27 ["BackgroundTransparency"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K189 [".State-Editing"]
  DUPTABLE R30 K191 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  LOADK R31 K180 ["$SemanticColorStatesSelected"]
  SETTABLEKS R31 R30 K33 ["BackgroundColor3"]
  LOADK R31 K181 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R31 R30 K27 ["BackgroundTransparency"]
  LOADB R31 1
  SETTABLEKS R31 R30 K190 ["ClipsDescendants"]
  LOADK R31 K46 ["$FontWeight700"]
  SETTABLEKS R31 R30 K21 ["Font"]
  LOADK R31 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K39 ["TextColor3"]
  GETIMPORT R31 K192 [Enum.TextTruncate.None]
  SETTABLEKS R31 R30 K173 ["TextTruncate"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K102 ["::UISizeConstraint"]
  DUPTABLE R31 K194 [{"MinSize", "MaxSize"}]
  GETIMPORT R32 K95 [Vector2.new]
  LOADN R33 56
  LOADN R34 28
  CALL R32 2 1
  SETTABLEKS R32 R31 K193 ["MinSize"]
  GETIMPORT R32 K95 [Vector2.new]
  LOADN R33 44
  LOADN R34 28
  CALL R32 2 1
  SETTABLEKS R32 R31 K103 ["MaxSize"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K55 ["::UIPadding"]
  DUPTABLE R32 K117 [{"PaddingLeft", "PaddingRight"}]
  LOADK R33 K118 ["$GlobalSpace150"]
  SETTABLEKS R33 R32 K56 ["PaddingLeft"]
  LOADK R33 K118 ["$GlobalSpace150"]
  SETTABLEKS R33 R32 K57 ["PaddingRight"]
  CALL R30 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K195 [".Component-RibbonTabs"]
  DUPTABLE R24 K107 [{"Size"}]
  GETIMPORT R25 K121 [UDim2.fromScale]
  LOADN R26 0
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K84 ["Size"]
  NEWTABLE R25 0 4
  MOVE R26 R2
  LOADK R27 K196 [":: UIFlexItem"]
  DUPTABLE R28 K200 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R29 K203 [Enum.UIFlexMode.Custom]
  SETTABLEKS R29 R28 K197 ["FlexMode"]
  LOADK R29 K204 [10000000000]
  SETTABLEKS R29 R28 K198 ["GrowRatio"]
  LOADK R29 K205 [1E-10]
  SETTABLEKS R29 R28 K199 ["ShrinkRatio"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K206 ["> #CollapsibleScroller"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K69 ["> #Scroller"]
  DUPTABLE R33 K207 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R34 K77 [Enum.AutomaticSize.XY]
  SETTABLEKS R34 R33 K70 ["AutomaticCanvasSize"]
  GETIMPORT R34 K79 [Enum.ScrollingDirection.X]
  SETTABLEKS R34 R33 K71 ["ScrollingDirection"]
  LOADN R34 0
  SETTABLEKS R34 R33 K72 ["ScrollBarThickness"]
  GETIMPORT R34 K82 [Enum.ScrollBarInset.None]
  SETTABLEKS R34 R33 K73 ["HorizontalScrollBarInset"]
  GETIMPORT R34 K121 [UDim2.fromScale]
  LOADN R35 1
  LOADN R36 1
  CALL R34 2 1
  SETTABLEKS R34 R33 K84 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K83 ["> #LeftGradient"]
  DUPTABLE R34 K86 [{"Size", "ZIndex"}]
  GETIMPORT R35 K89 [UDim2.new]
  LOADN R36 0
  LOADN R37 22
  LOADN R38 1
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K84 ["Size"]
  LOADN R35 10
  SETTABLEKS R35 R34 K85 ["ZIndex"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K90 ["> #RightGradient"]
  DUPTABLE R35 K93 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R36 K95 [Vector2.new]
  LOADN R37 1
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K91 ["AnchorPoint"]
  GETIMPORT R36 K89 [UDim2.new]
  LOADN R37 0
  LOADN R38 22
  LOADN R39 1
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K84 ["Size"]
  GETIMPORT R36 K89 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K92 ["Position"]
  LOADN R36 10
  SETTABLEKS R36 R35 K85 ["ZIndex"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K208 ["> #More"]
  DUPTABLE R30 K210 [{"Visible"}]
  LOADB R31 0
  SETTABLEKS R31 R30 K209 ["Visible"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K211 [".Compact > #More"]
  DUPTABLE R31 K210 [{"Visible"}]
  LOADB R32 1
  SETTABLEKS R32 R31 K209 ["Visible"]
  CALL R29 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K212 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R25 K213 [{"FlexMode"}]
  GETIMPORT R26 K215 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R26 R25 K197 ["FlexMode"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K216 [".X-CornerXS ::UICorner"]
  DUPTABLE R26 K218 [{"CornerRadius"}]
  LOADK R27 K219 ["$GlobalRadiusXSmall"]
  SETTABLEKS R27 R26 K217 ["CornerRadius"]
  CALL R24 2 1
  SETLIST R8 R9 16 [17]
  MOVE R9 R2
  LOADK R10 K220 [".X-CornerS ::UICorner"]
  DUPTABLE R11 K218 [{"CornerRadius"}]
  LOADK R12 K221 ["$GlobalRadiusSmall"]
  SETTABLEKS R12 R11 K217 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K222 [".X-CornerM ::UICorner"]
  DUPTABLE R12 K218 [{"CornerRadius"}]
  LOADK R13 K223 ["$GlobalRadiusMedium"]
  SETTABLEKS R13 R12 K217 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K224 [".X-PadMezz :: UIPadding"]
  DUPTABLE R13 K153 [{"PaddingLeft"}]
  GETIMPORT R14 K226 [UDim.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K56 ["PaddingLeft"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K227 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R14 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K226 [UDim.new]
  LOADN R16 0
  LOADN R17 10
  CALL R15 2 1
  SETTABLEKS R15 R14 K56 ["PaddingLeft"]
  GETIMPORT R15 K226 [UDim.new]
  LOADN R16 0
  LOADN R17 10
  CALL R15 2 1
  SETTABLEKS R15 R14 K57 ["PaddingRight"]
  LOADK R15 K61 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K58 ["PaddingTop"]
  LOADK R15 K61 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K59 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K228 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R15 K153 [{"PaddingLeft"}]
  LOADK R16 K61 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K56 ["PaddingLeft"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K229 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R16 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R17 K148 ["$GlobalSpace25"]
  SETTABLEKS R17 R16 K56 ["PaddingLeft"]
  LOADK R17 K171 ["$GlobalSpace75"]
  SETTABLEKS R17 R16 K57 ["PaddingRight"]
  LOADK R17 K230 ["$GlobalSpace350"]
  SETTABLEKS R17 R16 K58 ["PaddingTop"]
  LOADK R17 K171 ["$GlobalSpace75"]
  SETTABLEKS R17 R16 K59 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K231 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R17 K232 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R18 K148 ["$GlobalSpace25"]
  SETTABLEKS R18 R17 K57 ["PaddingRight"]
  LOADK R18 K233 ["$GlobalSpace250"]
  SETTABLEKS R18 R17 K58 ["PaddingTop"]
  LOADK R18 K141 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K59 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K234 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R18 K153 [{"PaddingLeft"}]
  LOADK R19 K171 ["$GlobalSpace75"]
  SETTABLEKS R19 R18 K56 ["PaddingLeft"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K235 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R19 K236 [{"PaddingTop", "PaddingBottom"}]
  LOADK R20 K141 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K58 ["PaddingTop"]
  LOADK R20 K141 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K59 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K237 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R20 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K118 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  LOADK R21 K61 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K57 ["PaddingRight"]
  LOADK R21 K118 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K58 ["PaddingTop"]
  LOADK R21 K118 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K59 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K238 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R21 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K171 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K56 ["PaddingLeft"]
  LOADK R22 K171 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K57 ["PaddingRight"]
  LOADK R22 K171 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K58 ["PaddingTop"]
  LOADK R22 K171 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K59 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K239 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R22 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K61 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K56 ["PaddingLeft"]
  LOADK R23 K61 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K57 ["PaddingRight"]
  LOADK R23 K141 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K58 ["PaddingTop"]
  LOADK R23 K141 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K59 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K240 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R23 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K171 ["$GlobalSpace75"]
  SETTABLEKS R24 R23 K56 ["PaddingLeft"]
  LOADK R24 K171 ["$GlobalSpace75"]
  SETTABLEKS R24 R23 K57 ["PaddingRight"]
  LOADK R24 K141 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K58 ["PaddingTop"]
  LOADK R24 K141 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K59 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K241 [".X-RowSplitButton"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K122 ["::UIListLayout"]
  DUPTABLE R28 K140 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R29 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K123 ["FillDirection"]
  LOADK R29 K148 ["$GlobalSpace25"]
  SETTABLEKS R29 R28 K124 ["Padding"]
  GETIMPORT R29 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K125 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K242 [".X-RowSplitButtonSmall"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K122 ["::UIListLayout"]
  DUPTABLE R29 K243 [{"FillDirection", "SortOrder"}]
  GETIMPORT R30 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K123 ["FillDirection"]
  GETIMPORT R30 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K125 ["SortOrder"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K244 [".Component-RibbonButton"]
  DUPTABLE R26 K247 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R27 0
  SETTABLEKS R27 R26 K245 ["AutoButtonColor"]
  LOADK R27 K30 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K27 ["BackgroundTransparency"]
  LOADK R27 K31 ["$BorderNone"]
  SETTABLEKS R27 R26 K28 ["BorderSizePixel"]
  LOADK R27 K248 [""]
  SETTABLEKS R27 R26 K246 ["Text"]
  NEWTABLE R27 0 9
  MOVE R28 R2
  LOADK R29 K249 ["> TextLabel"]
  DUPTABLE R30 K250 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R31 K30 ["$BackgroundTransparent"]
  SETTABLEKS R31 R30 K27 ["BackgroundTransparency"]
  LOADK R31 K42 ["$FontWeight400"]
  SETTABLEKS R31 R30 K21 ["Font"]
  LOADN R31 2
  SETTABLEKS R31 R30 K132 ["LayoutOrder"]
  LOADK R31 K43 ["$SemanticColorContentMuted"]
  SETTABLEKS R31 R30 K39 ["TextColor3"]
  LOADK R31 K44 ["$FontSize100"]
  SETTABLEKS R31 R30 K40 ["TextSize"]
  GETIMPORT R31 K252 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R31 R30 K173 ["TextTruncate"]
  NEWTABLE R31 0 0
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K253 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R31 K254 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R32 K30 ["$BackgroundTransparent"]
  SETTABLEKS R32 R31 K27 ["BackgroundTransparency"]
  LOADK R32 K31 ["$BorderNone"]
  SETTABLEKS R32 R31 K28 ["BorderSizePixel"]
  LOADN R32 0
  SETTABLEKS R32 R31 K132 ["LayoutOrder"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K255 [".Icon-Large"]
  DUPTABLE R35 K107 [{"Size"}]
  LOADK R36 K0 ["script"]
  SETTABLEKS R36 R35 K84 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K1 [script]
  DUPTABLE R36 K107 [{"Size"}]
  LOADK R37 K2 ["Parent"]
  SETTABLEKS R37 R36 K84 ["Size"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K183 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K3 ["require"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K4 [require]
  DUPTABLE R40 K262 [{"ImageTransparency"}]
  LOADK R41 K7 ["Styling"]
  SETTABLEKS R41 R40 K261 ["ImageTransparency"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K249 ["> TextLabel"]
  DUPTABLE R37 K66 [{"TextColor3"}]
  JUMPIFNOT R5 [+2]
  LOADNIL R38
  JUMP [+1]
  LOADK R38 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K39 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K8 ["createStyleRule"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  JUMPIFNOT R6 [+2]
  LOADK R36 K9 ["createStyleSheet"]
  JUMP [+1]
  LOADK R36 K10 ["Src"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 2
  MOVE R39 R2
  LOADK R40 K11 ["SharedFlags"]
  DUPTABLE R41 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R42 K188 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R42 R41 K27 ["BackgroundTransparency"]
  LOADK R42 K187 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R42 R41 K33 ["BackgroundColor3"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K13 ["getFFlagLuaRibbonControlVisibility"]
  DUPTABLE R42 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R43 K14 ["game"]
  SETTABLEKS R43 R42 K27 ["BackgroundTransparency"]
  LOADK R43 K15 [game]
  SETTABLEKS R43 R42 K33 ["BackgroundColor3"]
  CALL R40 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K178 [".State-Selected"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K3 ["require"]
  DUPTABLE R38 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R39 K181 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R39 R38 K27 ["BackgroundTransparency"]
  LOADK R39 K180 ["$SemanticColorStatesSelected"]
  SETTABLEKS R39 R38 K33 ["BackgroundColor3"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K16 ["FixStylingStateLayer"]
  DUPTABLE R35 K273 [{"LayoutOrder", "Size"}]
  LOADN R36 1
  SETTABLEKS R36 R35 K132 ["LayoutOrder"]
  GETIMPORT R36 K89 [UDim2.new]
  LOADN R37 0
  LOADN R38 12
  LOADN R39 0
  LOADN R40 40
  CALL R36 4 1
  SETTABLEKS R36 R35 K84 ["Size"]
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K113 [".Small"]
  DUPTABLE R39 K107 [{"Size"}]
  GETIMPORT R40 K89 [UDim2.new]
  LOADN R41 0
  LOADN R42 6
  LOADN R43 0
  LOADN R44 28
  CALL R40 4 1
  SETTABLEKS R40 R39 K84 ["Size"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K18 ["RibbonButtonMaxWidth"]
  DUPTABLE R40 K275 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R41 K95 [Vector2.new]
  LOADN R42 1
  LOADN R43 1
  CALL R41 2 1
  SETTABLEKS R41 R40 K91 ["AnchorPoint"]
  LOADB R41 0
  SETTABLEKS R41 R40 K245 ["AutoButtonColor"]
  GETIMPORT R41 K89 [UDim2.new]
  LOADN R42 1
  LOADN R43 0
  LOADN R44 1
  LOADN R45 0
  CALL R41 4 1
  SETTABLEKS R41 R40 K92 ["Position"]
  LOADK R41 K248 [""]
  SETTABLEKS R41 R40 K246 ["Text"]
  LOADN R41 1
  SETTABLEKS R41 R40 K40 ["TextSize"]
  NEWTABLE R41 0 1
  MOVE R42 R2
  LOADK R43 K20 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R44 K278 [{"Image", "Size"}]
  LOADK R45 K23 ["Enum"]
  SETTABLEKS R45 R44 K277 ["Image"]
  GETIMPORT R45 K281 [UDim2.fromOffset]
  LOADN R46 6
  LOADN R47 6
  CALL R45 2 1
  SETTABLEKS R45 R44 K84 ["Size"]
  NEWTABLE R45 0 2
  MOVE R46 R2
  LOADK R47 K113 [".Small"]
  DUPTABLE R48 K107 [{"Size"}]
  GETIMPORT R49 K281 [UDim2.fromOffset]
  LOADN R50 4
  LOADN R51 4
  CALL R49 2 1
  SETTABLEKS R49 R48 K84 ["Size"]
  CALL R46 2 1
  MOVE R47 R2
  LOADK R48 K183 [".State-Disabled"]
  DUPTABLE R49 K262 [{"ImageTransparency"}]
  JUMPIFNOT R5 [+2]
  LOADK R50 K7 ["Styling"]
  JUMP [+1]
  LOADNIL R50
  SETTABLEKS R50 R49 K261 ["ImageTransparency"]
  CALL R47 2 -1
  SETLIST R45 R46 -1 [1]
  CALL R42 3 -1
  SETLIST R41 R42 -1 [1]
  CALL R38 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K26 [".Role-Surface"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 2
  MOVE R38 R2
  LOADK R39 K27 ["BackgroundTransparency"]
  DUPTABLE R40 K284 [{"BackgroundTransparency"}]
  LOADK R41 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R41 R40 K27 ["BackgroundTransparency"]
  NEWTABLE R41 0 1
  MOVE R42 R2
  LOADK R43 K30 ["$BackgroundTransparent"]
  DUPTABLE R44 K289 [{"Color", "Rotation", "Transparency"}]
  LOADK R45 K34 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R45 R44 K287 ["Color"]
  LOADK R45 K35 ["$SemanticColorSurface100"]
  SETTABLEKS R45 R44 K288 ["Rotation"]
  LOADK R45 K36 [".Role-Surface200"]
  SETTABLEKS R45 R44 K158 ["Transparency"]
  CALL R42 2 -1
  SETLIST R41 R42 -1 [1]
  CALL R38 3 1
  MOVE R39 R2
  LOADK R40 K37 ["$SemanticColorSurface200"]
  DUPTABLE R41 K284 [{"BackgroundTransparency"}]
  LOADK R42 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R42 R41 K27 ["BackgroundTransparency"]
  NEWTABLE R42 0 1
  MOVE R43 R2
  LOADK R44 K30 ["$BackgroundTransparent"]
  DUPTABLE R45 K289 [{"Color", "Rotation", "Transparency"}]
  LOADK R46 K38 [".Text-Label"]
  SETTABLEKS R46 R45 K287 ["Color"]
  LOADK R46 K39 ["TextColor3"]
  SETTABLEKS R46 R45 K288 ["Rotation"]
  LOADK R46 K40 ["TextSize"]
  SETTABLEKS R46 R45 K158 ["Transparency"]
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K122 ["::UIListLayout"]
  DUPTABLE R37 K298 [{"FillDirection", "SortOrder", "VerticalFlex"}]
  GETIMPORT R38 K147 [Enum.FillDirection.Vertical]
  SETTABLEKS R38 R37 K123 ["FillDirection"]
  GETIMPORT R38 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K125 ["SortOrder"]
  GETIMPORT R38 K300 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R38 R37 K297 ["VerticalFlex"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K102 ["::UISizeConstraint"]
  DUPTABLE R38 K104 [{"MaxSize"}]
  GETIMPORT R39 K95 [Vector2.new]
  MOVE R40 R7
  LOADK R41 K105 [∞]
  CALL R39 2 1
  SETTABLEKS R39 R38 K103 ["MaxSize"]
  CALL R36 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETLIST R8 R9 16 [33]
  MOVE R9 R2
  LOADK R10 K45 [".Text-Title"]
  DUPTABLE R11 K302 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R12 K95 [Vector2.new]
  LOADN R13 1
  LOADK R14 K47 [".Role-Menu"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K91 ["AnchorPoint"]
  GETIMPORT R12 K89 [UDim2.new]
  LOADN R13 1
  LOADN R14 248
  LOADK R15 K47 [".Role-Menu"]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K92 ["Position"]
  LOADN R12 3
  SETTABLEKS R12 R11 K85 ["ZIndex"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K48 ["BorderColor3"]
  DUPTABLE R12 K305 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K245 ["AutoButtonColor"]
  LOADK R13 K248 [""]
  SETTABLEKS R13 R12 K246 ["Text"]
  GETIMPORT R13 K89 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 28
  CALL R13 4 1
  SETTABLEKS R13 R12 K84 ["Size"]
  NEWTABLE R13 0 5
  MOVE R14 R2
  LOADK R15 K50 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  DUPTABLE R16 K107 [{"Size"}]
  GETIMPORT R17 K89 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K84 ["Size"]
  NEWTABLE R17 0 6
  MOVE R18 R2
  LOADK R19 K122 ["::UIListLayout"]
  DUPTABLE R20 K307 [{"Padding"}]
  LOADK R21 K141 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K124 ["Padding"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K52 ["Inset"]
  DUPTABLE R21 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K118 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K56 ["PaddingLeft"]
  LOADK R22 K118 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K57 ["PaddingRight"]
  LOADK R22 K141 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K58 ["PaddingTop"]
  LOADK R22 K141 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K59 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K53 [Enum.BorderMode.Inset]
  DUPTABLE R22 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K233 ["$GlobalSpace250"]
  SETTABLEKS R23 R22 K56 ["PaddingLeft"]
  LOADK R23 K233 ["$GlobalSpace250"]
  SETTABLEKS R23 R22 K57 ["PaddingRight"]
  LOADK R23 K118 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K58 ["PaddingTop"]
  LOADK R23 K118 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K59 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K54 ["$BorderMedium"]
  DUPTABLE R23 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K131 ["$GlobalSpace200"]
  SETTABLEKS R24 R23 K56 ["PaddingLeft"]
  LOADK R24 K131 ["$GlobalSpace200"]
  SETTABLEKS R24 R23 K57 ["PaddingRight"]
  LOADK R24 K61 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K58 ["PaddingTop"]
  LOADK R24 K61 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K59 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K55 ["::UIPadding"]
  DUPTABLE R24 K312 [{"LayoutOrder"}]
  LOADN R25 0
  SETTABLEKS R25 R24 K132 ["LayoutOrder"]
  NEWTABLE R25 0 3
  MOVE R26 R2
  LOADK R27 K255 [".Icon-Large"]
  DUPTABLE R28 K107 [{"Size"}]
  LOADK R29 K0 ["script"]
  SETTABLEKS R29 R28 K84 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K1 [script]
  DUPTABLE R29 K107 [{"Size"}]
  LOADK R30 K2 ["Parent"]
  SETTABLEKS R30 R29 K84 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K57 ["PaddingRight"]
  DUPTABLE R30 K312 [{"LayoutOrder"}]
  LOADN R31 3
  SETTABLEKS R31 R30 K132 ["LayoutOrder"]
  CALL R28 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K58 ["PaddingTop"]
  DUPTABLE R25 K315 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R26 K46 ["$FontWeight700"]
  SETTABLEKS R26 R25 K21 ["Font"]
  LOADK R26 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R26 R25 K40 ["TextSize"]
  LOADN R26 2
  SETTABLEKS R26 R25 K132 ["LayoutOrder"]
  LOADK R26 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K39 ["TextColor3"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K113 [".Small"]
  DUPTABLE R29 K317 [{"TextSize"}]
  LOADK R30 K175 ["$FontSize150"]
  SETTABLEKS R30 R29 K40 ["TextSize"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K115 [".Large"]
  DUPTABLE R30 K317 [{"TextSize"}]
  LOADK R31 K62 [".Role-Tooltip"]
  SETTABLEKS R31 R30 K40 ["TextSize"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K63 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R17 K107 [{"Size"}]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 26
  CALL R18 4 1
  SETTABLEKS R18 R17 K84 ["Size"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K64 ["$SemanticColorDivider"]
  DUPTABLE R21 K323 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R22 K325 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R22 R21 K321 ["ApplyStrokeMode"]
  LOADK R22 K64 ["$SemanticColorDivider"]
  SETTABLEKS R22 R21 K287 ["Color"]
  LOADK R22 K54 ["$BorderMedium"]
  SETTABLEKS R22 R21 K322 ["Thickness"]
  LOADK R22 K110 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R22 R21 K158 ["Transparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K50 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  DUPTABLE R22 K107 [{"Size"}]
  GETIMPORT R23 K89 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  LOADN R27 26
  CALL R23 4 1
  SETTABLEKS R23 R22 K84 ["Size"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K183 [".State-Disabled"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K70 ["AutomaticCanvasSize"]
  DUPTABLE R22 K262 [{"ImageTransparency"}]
  LOADK R23 K7 ["Styling"]
  SETTABLEKS R23 R22 K261 ["ImageTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K71 ["ScrollingDirection"]
  DUPTABLE R23 K66 [{"TextColor3"}]
  LOADK R24 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R24 R23 K39 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K8 ["createStyleRule"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K72 ["ScrollBarThickness"]
  DUPTABLE R23 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R24 K188 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R24 R23 K27 ["BackgroundTransparency"]
  LOADK R24 K187 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R24 R23 K33 ["BackgroundColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K73 ["HorizontalScrollBarInset"]
  DUPTABLE R24 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R25 K14 ["game"]
  SETTABLEKS R25 R24 K27 ["BackgroundTransparency"]
  LOADK R25 K15 [game]
  SETTABLEKS R25 R24 K33 ["BackgroundColor3"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K74 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  DUPTABLE R20 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K75 ["AutomaticSize"]
  SETTABLEKS R21 R20 K33 ["BackgroundColor3"]
  LOADK R21 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R21 R20 K27 ["BackgroundTransparency"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K8 ["createStyleRule"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K72 ["ScrollBarThickness"]
  DUPTABLE R28 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K76 ["XY"]
  SETTABLEKS R29 R28 K27 ["BackgroundTransparency"]
  LOADK R29 K77 [Enum.AutomaticSize.XY]
  SETTABLEKS R29 R28 K33 ["BackgroundColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K73 ["HorizontalScrollBarInset"]
  DUPTABLE R29 K268 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K78 ["X"]
  SETTABLEKS R30 R29 K27 ["BackgroundTransparency"]
  LOADK R30 K79 [Enum.ScrollingDirection.X]
  SETTABLEKS R30 R29 K33 ["BackgroundColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K71 ["ScrollingDirection"]
  DUPTABLE R25 K66 [{"TextColor3"}]
  LOADK R26 K67 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R26 R25 K39 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K80 ["ScrollBarInset"]
  DUPTABLE R13 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R14 K30 ["$BackgroundTransparent"]
  SETTABLEKS R14 R13 K27 ["BackgroundTransparency"]
  LOADK R14 K31 ["$BorderNone"]
  SETTABLEKS R14 R13 K28 ["BorderSizePixel"]
  NEWTABLE R14 0 9
  MOVE R15 R2
  LOADK R16 K81 ["None"]
  DUPTABLE R17 K338 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K245 ["AutoButtonColor"]
  LOADK R18 K30 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K27 ["BackgroundTransparency"]
  LOADK R18 K31 ["$BorderNone"]
  SETTABLEKS R18 R17 K28 ["BorderSizePixel"]
  LOADN R18 1
  SETTABLEKS R18 R17 K132 ["LayoutOrder"]
  LOADK R18 K248 [""]
  SETTABLEKS R18 R17 K246 ["Text"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K83 ["> #LeftGradient"]
  DUPTABLE R18 K340 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R19 K30 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K27 ["BackgroundTransparency"]
  LOADK R19 K31 ["$BorderNone"]
  SETTABLEKS R19 R18 K28 ["BorderSizePixel"]
  LOADK R19 K42 ["$FontWeight400"]
  SETTABLEKS R19 R18 K21 ["Font"]
  LOADN R19 2
  SETTABLEKS R19 R18 K132 ["LayoutOrder"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K85 ["ZIndex"]
  DUPTABLE R19 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K30 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K27 ["BackgroundTransparency"]
  LOADK R20 K31 ["$BorderNone"]
  SETTABLEKS R20 R19 K28 ["BorderSizePixel"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K86 [{"Size", "ZIndex"}]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K81 ["None"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K122 ["::UIListLayout"]
  DUPTABLE R28 K343 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R29 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K123 ["FillDirection"]
  LOADK R29 K61 ["$GlobalSpace100"]
  SETTABLEKS R29 R28 K124 ["Padding"]
  GETIMPORT R29 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K125 ["SortOrder"]
  GETIMPORT R29 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R29 R28 K166 ["VerticalAlignment"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K85 ["ZIndex"]
  DUPTABLE R25 K107 [{"Size"}]
  LOADK R26 K2 ["Parent"]
  SETTABLEKS R26 R25 K84 ["Size"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K113 [".Small"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K83 ["> #LeftGradient"]
  DUPTABLE R25 K317 [{"TextSize"}]
  LOADK R26 K175 ["$FontSize150"]
  SETTABLEKS R26 R25 K40 ["TextSize"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K114 [".Medium"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K83 ["> #LeftGradient"]
  DUPTABLE R26 K317 [{"TextSize"}]
  LOADK R27 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R27 R26 K40 ["TextSize"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K115 [".Large"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K81 ["None"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K122 ["::UIListLayout"]
  DUPTABLE R31 K343 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R32 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R32 R31 K123 ["FillDirection"]
  LOADK R32 K118 ["$GlobalSpace150"]
  SETTABLEKS R32 R31 K124 ["Padding"]
  GETIMPORT R32 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K125 ["SortOrder"]
  GETIMPORT R32 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R32 R31 K166 ["VerticalAlignment"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K85 ["ZIndex"]
  DUPTABLE R28 K107 [{"Size"}]
  LOADK R29 K0 ["script"]
  SETTABLEKS R29 R28 K84 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K83 ["> #LeftGradient"]
  DUPTABLE R29 K317 [{"TextSize"}]
  LOADK R30 K62 [".Role-Tooltip"]
  SETTABLEKS R30 R29 K40 ["TextSize"]
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K8 ["createStyleRule"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 5
  MOVE R26 R2
  LOADK R27 K85 ["ZIndex"]
  DUPTABLE R28 K344 [{"Image"}]
  LOADK R29 K89 [UDim2.new]
  SETTABLEKS R29 R28 K277 ["Image"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K90 ["> #RightGradient"]
  DUPTABLE R29 K344 [{"Image"}]
  LOADK R30 K91 ["AnchorPoint"]
  SETTABLEKS R30 R29 K277 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K92 ["Position"]
  DUPTABLE R30 K344 [{"Image"}]
  LOADK R31 K93 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  SETTABLEKS R31 R30 K277 ["Image"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K94 ["Vector2"]
  DUPTABLE R31 K344 [{"Image"}]
  LOADK R32 K95 [Vector2.new]
  SETTABLEKS R32 R31 K277 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K83 ["> #LeftGradient"]
  DUPTABLE R32 K66 [{"TextColor3"}]
  LOADK R33 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R33 R32 K39 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K183 [".State-Disabled"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 4
  MOVE R27 R2
  LOADK R28 K85 ["ZIndex"]
  DUPTABLE R29 K344 [{"Image"}]
  LOADK R30 K96 [".TooltipTextBounds"]
  SETTABLEKS R30 R29 K277 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K92 ["Position"]
  DUPTABLE R30 K344 [{"Image"}]
  LOADK R31 K97 ["TextWrapped"]
  SETTABLEKS R31 R30 K277 ["Image"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K94 ["Vector2"]
  DUPTABLE R31 K344 [{"Image"}]
  LOADK R32 K98 ["TextXAlignment"]
  SETTABLEKS R32 R31 K277 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K83 ["> #LeftGradient"]
  DUPTABLE R32 K66 [{"TextColor3"}]
  LOADK R33 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K39 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K99 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R14 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R15 K30 ["$BackgroundTransparent"]
  SETTABLEKS R15 R14 K27 ["BackgroundTransparency"]
  LOADK R15 K31 ["$BorderNone"]
  SETTABLEKS R15 R14 K28 ["BorderSizePixel"]
  NEWTABLE R15 0 9
  MOVE R16 R2
  LOADK R17 K100 ["Left"]
  DUPTABLE R18 K338 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K245 ["AutoButtonColor"]
  LOADK R19 K30 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K27 ["BackgroundTransparency"]
  LOADK R19 K31 ["$BorderNone"]
  SETTABLEKS R19 R18 K28 ["BorderSizePixel"]
  LOADN R19 1
  SETTABLEKS R19 R18 K132 ["LayoutOrder"]
  LOADK R19 K248 [""]
  SETTABLEKS R19 R18 K246 ["Text"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K101 [Enum.TextXAlignment.Left]
  DUPTABLE R19 K340 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R20 K30 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K27 ["BackgroundTransparency"]
  LOADK R20 K31 ["$BorderNone"]
  SETTABLEKS R20 R19 K28 ["BorderSizePixel"]
  LOADK R20 K42 ["$FontWeight400"]
  SETTABLEKS R20 R19 K21 ["Font"]
  LOADN R20 2
  SETTABLEKS R20 R19 K132 ["LayoutOrder"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K102 ["::UISizeConstraint"]
  DUPTABLE R20 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K30 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K27 ["BackgroundTransparency"]
  LOADK R21 K31 ["$BorderNone"]
  SETTABLEKS R21 R20 K28 ["BorderSizePixel"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K86 [{"Size", "ZIndex"}]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K100 ["Left"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K122 ["::UIListLayout"]
  DUPTABLE R29 K343 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R30 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K123 ["FillDirection"]
  LOADK R30 K61 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K124 ["Padding"]
  GETIMPORT R30 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K125 ["SortOrder"]
  GETIMPORT R30 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R30 R29 K166 ["VerticalAlignment"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K102 ["::UISizeConstraint"]
  DUPTABLE R26 K107 [{"Size"}]
  LOADK R27 K2 ["Parent"]
  SETTABLEKS R27 R26 K84 ["Size"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K113 [".Small"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K101 [Enum.TextXAlignment.Left]
  DUPTABLE R26 K317 [{"TextSize"}]
  LOADK R27 K175 ["$FontSize150"]
  SETTABLEKS R27 R26 K40 ["TextSize"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K114 [".Medium"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K101 [Enum.TextXAlignment.Left]
  DUPTABLE R27 K317 [{"TextSize"}]
  LOADK R28 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  SETTABLEKS R28 R27 K40 ["TextSize"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K115 [".Large"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 3
  MOVE R26 R2
  LOADK R27 K100 ["Left"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K122 ["::UIListLayout"]
  DUPTABLE R32 K343 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R33 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K123 ["FillDirection"]
  LOADK R33 K118 ["$GlobalSpace150"]
  SETTABLEKS R33 R32 K124 ["Padding"]
  GETIMPORT R33 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K125 ["SortOrder"]
  GETIMPORT R33 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R33 R32 K166 ["VerticalAlignment"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K102 ["::UISizeConstraint"]
  DUPTABLE R29 K107 [{"Size"}]
  LOADK R30 K0 ["script"]
  SETTABLEKS R30 R29 K84 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K101 [Enum.TextXAlignment.Left]
  DUPTABLE R30 K317 [{"TextSize"}]
  LOADK R31 K62 [".Role-Tooltip"]
  SETTABLEKS R31 R30 K40 ["TextSize"]
  CALL R28 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K8 ["createStyleRule"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 4
  MOVE R27 R2
  LOADK R28 K102 ["::UISizeConstraint"]
  DUPTABLE R29 K344 [{"Image"}]
  LOADK R30 K103 ["MaxSize"]
  SETTABLEKS R30 R29 K277 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K104 [{"MaxSize"}]
  DUPTABLE R30 K344 [{"Image"}]
  LOADK R31 K105 [∞]
  SETTABLEKS R31 R30 K277 ["Image"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K106 [".Role-DividerH"]
  DUPTABLE R31 K344 [{"Image"}]
  LOADK R32 K107 [{"Size"}]
  SETTABLEKS R32 R31 K277 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K101 [Enum.TextXAlignment.Left]
  DUPTABLE R32 K66 [{"TextColor3"}]
  LOADK R33 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R33 R32 K39 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K183 [".State-Disabled"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K102 ["::UISizeConstraint"]
  DUPTABLE R30 K344 [{"Image"}]
  LOADK R31 K108 ["> Frame"]
  SETTABLEKS R31 R30 K277 ["Image"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K106 [".Role-DividerH"]
  DUPTABLE R31 K344 [{"Image"}]
  LOADK R32 K109 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  SETTABLEKS R32 R31 K277 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K101 [Enum.TextXAlignment.Left]
  DUPTABLE R32 K66 [{"TextColor3"}]
  LOADK R33 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K39 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K110 ["$SemanticColorDividerTransparency"]
  DUPTABLE R15 K367 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K245 ["AutoButtonColor"]
  LOADK R16 K31 ["$BorderNone"]
  SETTABLEKS R16 R15 K28 ["BorderSizePixel"]
  LOADK R16 K30 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K27 ["BackgroundTransparency"]
  LOADK R16 K248 [""]
  SETTABLEKS R16 R15 K246 ["Text"]
  NEWTABLE R16 0 8
  MOVE R17 R2
  LOADK R18 K112 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R19 K369 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R20 K31 ["$BorderNone"]
  SETTABLEKS R20 R19 K28 ["BorderSizePixel"]
  LOADK R20 K30 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K27 ["BackgroundTransparency"]
  LOADN R20 1
  SETTABLEKS R20 R19 K132 ["LayoutOrder"]
  LOADK R20 K0 ["script"]
  SETTABLEKS R20 R19 K84 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K114 [".Medium"]
  DUPTABLE R20 K371 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R21 K95 [Vector2.new]
  LOADN R22 1
  LOADK R23 K47 [".Role-Menu"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K91 ["AnchorPoint"]
  GETIMPORT R21 K121 [UDim2.fromScale]
  LOADN R22 1
  LOADK R23 K47 [".Role-Menu"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K92 ["Position"]
  LOADK R21 K31 ["$BorderNone"]
  SETTABLEKS R21 R20 K28 ["BorderSizePixel"]
  LOADN R21 1
  SETTABLEKS R21 R20 K27 ["BackgroundTransparency"]
  LOADK R21 K116 [".RibbonButton-Divider"]
  SETTABLEKS R21 R20 K277 ["Image"]
  LOADN R21 3
  SETTABLEKS R21 R20 K132 ["LayoutOrder"]
  LOADK R21 K2 ["Parent"]
  SETTABLEKS R21 R20 K84 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K117 [{"PaddingLeft", "PaddingRight"}]
  DUPTABLE R21 K273 [{"LayoutOrder", "Size"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K132 ["LayoutOrder"]
  LOADK R22 K2 ["Parent"]
  SETTABLEKS R22 R21 K84 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K65 [">> TextLabel"]
  DUPTABLE R22 K374 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K27 ["BackgroundTransparency"]
  LOADK R23 K42 ["$FontWeight400"]
  SETTABLEKS R23 R22 K21 ["Font"]
  LOADK R23 K175 ["$FontSize150"]
  SETTABLEKS R23 R22 K40 ["TextSize"]
  LOADN R23 2
  SETTABLEKS R23 R22 K132 ["LayoutOrder"]
  LOADK R23 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K39 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K113 [".Small"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K112 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R27 K107 [{"Size"}]
  LOADK R28 K2 ["Parent"]
  SETTABLEKS R28 R27 K84 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K65 [">> TextLabel"]
  DUPTABLE R28 K317 [{"TextSize"}]
  LOADK R29 K44 ["$FontSize100"]
  SETTABLEKS R29 R28 K40 ["TextSize"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K119 [".X-RowSpaceBetween"]
  DUPTABLE R24 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K120 ["fromScale"]
  SETTABLEKS R25 R24 K33 ["BackgroundColor3"]
  LOADK R25 K121 [UDim2.fromScale]
  SETTABLEKS R25 R24 K27 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K178 [".State-Selected"]
  DUPTABLE R25 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K180 ["$SemanticColorStatesSelected"]
  SETTABLEKS R26 R25 K33 ["BackgroundColor3"]
  LOADK R26 K181 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R26 R25 K27 ["BackgroundTransparency"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K183 [".State-Disabled"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K112 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R30 K262 [{"ImageTransparency"}]
  LOADK R31 K7 ["Styling"]
  SETTABLEKS R31 R30 K261 ["ImageTransparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K65 [">> TextLabel"]
  DUPTABLE R31 K66 [{"TextColor3"}]
  LOADK R32 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R32 R31 K39 ["TextColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K122 ["::UIListLayout"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K55 ["::UIPadding"]
  DUPTABLE R20 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K141 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K56 ["PaddingLeft"]
  LOADK R21 K141 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K57 ["PaddingRight"]
  LOADK R21 K148 ["$GlobalSpace25"]
  SETTABLEKS R21 R20 K58 ["PaddingTop"]
  LOADK R21 K148 ["$GlobalSpace25"]
  SETTABLEKS R21 R20 K59 ["PaddingBottom"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K123 ["FillDirection"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 6
  MOVE R19 R2
  LOADK R20 K64 ["$SemanticColorDivider"]
  DUPTABLE R21 K380 [{"Thickness"}]
  LOADK R22 K31 ["$BorderNone"]
  SETTABLEKS R22 R21 K322 ["Thickness"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K125 ["SortOrder"]
  DUPTABLE R22 K382 [{"TextSize", "TextXAlignment"}]
  LOADK R23 K175 ["$FontSize150"]
  SETTABLEKS R23 R22 K40 ["TextSize"]
  GETIMPORT R23 K101 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K98 ["TextXAlignment"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K55 ["::UIPadding"]
  DUPTABLE R26 K117 [{"PaddingLeft", "PaddingRight"}]
  LOADK R27 K141 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K56 ["PaddingLeft"]
  LOADK R27 K148 ["$GlobalSpace25"]
  SETTABLEKS R27 R26 K57 ["PaddingRight"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K8 ["createStyleRule"]
  DUPTABLE R23 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K127 ["ItemLineAlignment"]
  SETTABLEKS R24 R23 K33 ["BackgroundColor3"]
  LOADK R24 K128 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  SETTABLEKS R24 R23 K27 ["BackgroundTransparency"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K125 ["SortOrder"]
  DUPTABLE R27 K66 [{"TextColor3"}]
  LOADK R28 K43 ["$SemanticColorContentMuted"]
  SETTABLEKS R28 R27 K39 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K129 ["Horizontal"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K64 ["$SemanticColorDivider"]
  DUPTABLE R28 K386 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R29 K325 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R29 R28 K321 ["ApplyStrokeMode"]
  LOADK R29 K131 ["$GlobalSpace200"]
  SETTABLEKS R29 R28 K287 ["Color"]
  LOADK R29 K54 ["$BorderMedium"]
  SETTABLEKS R29 R28 K322 ["Thickness"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K125 ["SortOrder"]
  DUPTABLE R29 K66 [{"TextColor3"}]
  LOADK R30 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R30 R29 K39 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K132 ["LayoutOrder"]
  DUPTABLE R25 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K33 ["BackgroundColor3"]
  LOADK R26 K134 ["UIFlexAlignment"]
  SETTABLEKS R26 R25 K27 ["BackgroundTransparency"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K125 ["SortOrder"]
  DUPTABLE R29 K66 [{"TextColor3"}]
  LOADK R30 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R30 R29 K39 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K183 [".State-Disabled"]
  DUPTABLE R26 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K127 ["ItemLineAlignment"]
  SETTABLEKS R27 R26 K33 ["BackgroundColor3"]
  LOADK R27 K128 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  SETTABLEKS R27 R26 K27 ["BackgroundTransparency"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K125 ["SortOrder"]
  DUPTABLE R30 K66 [{"TextColor3"}]
  LOADK R31 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R31 R30 K39 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K135 ["SpaceBetween"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K18 ["RibbonButtonMaxWidth"]
  DUPTABLE R22 K107 [{"Size"}]
  GETIMPORT R23 K89 [UDim2.new]
  LOADN R24 0
  LOADN R25 16
  LOADN R26 0
  LOADN R27 8
  CALL R23 4 1
  SETTABLEKS R23 R22 K84 ["Size"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K136 [Enum.UIFlexAlignment.SpaceBetween]
  DUPTABLE R26 K107 [{"Size"}]
  GETIMPORT R27 K89 [UDim2.new]
  LOADN R28 0
  LOADN R29 16
  LOADN R30 0
  LOADN R31 8
  CALL R27 4 1
  SETTABLEKS R27 R26 K84 ["Size"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K8 ["createStyleRule"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K137 ["Center"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K138 [Enum.ItemLineAlignment.Center]
  DUPTABLE R31 K344 [{"Image"}]
  LOADK R32 K139 [".X-RowSpace50"]
  SETTABLEKS R32 R31 K277 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K140 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R32 K344 [{"Image"}]
  LOADK R33 K141 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K277 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K142 [".X-RowSpace100"]
  DUPTABLE R33 K344 [{"Image"}]
  LOADK R34 K143 [".X-RowSpace150"]
  SETTABLEKS R34 R33 K277 ["Image"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K144 [".X-RowSpace200"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K138 [Enum.ItemLineAlignment.Center]
  DUPTABLE R32 K344 [{"Image"}]
  LOADK R33 K145 [".X-ColumnSpace25"]
  SETTABLEKS R33 R32 K277 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K140 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R33 K344 [{"Image"}]
  LOADK R34 K146 ["Vertical"]
  SETTABLEKS R34 R33 K277 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K142 [".X-RowSpace100"]
  DUPTABLE R34 K344 [{"Image"}]
  LOADK R35 K147 [Enum.FillDirection.Vertical]
  SETTABLEKS R35 R34 K277 ["Image"]
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K183 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K137 ["Center"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K148 ["$GlobalSpace25"]
  DUPTABLE R32 K344 [{"Image"}]
  JUMPIFNOT R5 [+2]
  LOADK R33 K143 [".X-RowSpace150"]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K277 ["Image"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K144 [".X-RowSpace200"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K148 ["$GlobalSpace25"]
  DUPTABLE R33 K344 [{"Image"}]
  JUMPIFNOT R5 [+2]
  LOADK R34 K147 [Enum.FillDirection.Vertical]
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K277 ["Image"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K149 [".X-ColumnSpace50"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K183 [".State-Disabled"]
  DUPTABLE R23 K262 [{"ImageTransparency"}]
  JUMPIFNOT R5 [+2]
  LOADK R24 K7 ["Styling"]
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K261 ["ImageTransparency"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K150 [".X-ColumnSpace100"]
  DUPTABLE R20 K284 [{"BackgroundTransparency"}]
  LOADK R21 K30 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K27 ["BackgroundTransparency"]
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K151 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R24 K218 [{"CornerRadius"}]
  LOADK R25 K223 ["$GlobalRadiusMedium"]
  SETTABLEKS R25 R24 K217 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K152 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R25 K323 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R26 K325 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K321 ["ApplyStrokeMode"]
  LOADK R26 K64 ["$SemanticColorDivider"]
  SETTABLEKS R26 R25 K287 ["Color"]
  LOADK R26 K54 ["$BorderMedium"]
  SETTABLEKS R26 R25 K322 ["Thickness"]
  LOADK R26 K110 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R26 R25 K158 ["Transparency"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K153 [{"PaddingLeft"}]
  DUPTABLE R26 K284 [{"BackgroundTransparency"}]
  LOADK R27 K30 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K27 ["BackgroundTransparency"]
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K151 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R30 K218 [{"CornerRadius"}]
  LOADK R31 K223 ["$GlobalRadiusMedium"]
  SETTABLEKS R31 R30 K217 ["CornerRadius"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K154 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R31 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R32 K30 ["$BackgroundTransparent"]
  SETTABLEKS R32 R31 K27 ["BackgroundTransparency"]
  LOADK R32 K31 ["$BorderNone"]
  SETTABLEKS R32 R31 K28 ["BorderSizePixel"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K11 ["SharedFlags"]
  DUPTABLE R35 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R36 K187 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R36 R35 K33 ["BackgroundColor3"]
  LOADK R36 K188 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R36 R35 K27 ["BackgroundTransparency"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K155 [{"PaddingRight"}]
  DUPTABLE R36 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R37 K15 [game]
  SETTABLEKS R37 R36 K33 ["BackgroundColor3"]
  LOADK R37 K14 ["game"]
  SETTABLEKS R37 R36 K27 ["BackgroundTransparency"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K156 [".X-RowXS"]
  DUPTABLE R32 K413 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R33 K175 ["$FontSize150"]
  SETTABLEKS R33 R32 K40 ["TextSize"]
  LOADB R33 0
  SETTABLEKS R33 R32 K245 ["AutoButtonColor"]
  LOADK R33 K31 ["$BorderNone"]
  SETTABLEKS R33 R32 K28 ["BorderSizePixel"]
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K55 ["::UIPadding"]
  DUPTABLE R36 K117 [{"PaddingLeft", "PaddingRight"}]
  LOADK R37 K118 ["$GlobalSpace150"]
  SETTABLEKS R37 R36 K56 ["PaddingLeft"]
  LOADK R37 K118 ["$GlobalSpace150"]
  SETTABLEKS R37 R36 K57 ["PaddingRight"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K8 ["createStyleRule"]
  DUPTABLE R37 K414 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R38 K30 ["$BackgroundTransparent"]
  SETTABLEKS R38 R37 K27 ["BackgroundTransparency"]
  LOADK R38 K46 ["$FontWeight700"]
  SETTABLEKS R38 R37 K21 ["Font"]
  LOADK R38 K43 ["$SemanticColorContentMuted"]
  SETTABLEKS R38 R37 K39 ["TextColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K178 [".State-Selected"]
  DUPTABLE R38 K179 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R39 K180 ["$SemanticColorStatesSelected"]
  SETTABLEKS R39 R38 K33 ["BackgroundColor3"]
  LOADK R39 K181 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R39 R38 K27 ["BackgroundTransparency"]
  LOADK R39 K46 ["$FontWeight700"]
  SETTABLEKS R39 R38 K21 ["Font"]
  LOADK R39 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R39 R38 K39 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K159 [{"Transparency"}]
  DUPTABLE R21 K416 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R22 K419 [Color3.fromHex]
  LOADK R23 K164 [".X-FadeRight ::UIGradient"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K33 ["BackgroundColor3"]
  LOADK R22 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R22 R21 K27 ["BackgroundTransparency"]
  GETIMPORT R22 K89 [UDim2.new]
  LOADN R23 0
  LOADN R24 40
  LOADN R25 0
  LOADN R26 24
  CALL R22 4 1
  SETTABLEKS R22 R21 K84 ["Size"]
  NEWTABLE R22 0 6
  MOVE R23 R2
  LOADK R24 K165 [".Role-Mezzanine ::UIListLayout"]
  DUPTABLE R25 K218 [{"CornerRadius"}]
  LOADK R26 K166 ["VerticalAlignment"]
  SETTABLEKS R26 R25 K217 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K55 ["::UIPadding"]
  DUPTABLE R26 K423 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R27 K148 ["$GlobalSpace25"]
  SETTABLEKS R27 R26 K59 ["PaddingBottom"]
  LOADK R27 K148 ["$GlobalSpace25"]
  SETTABLEKS R27 R26 K56 ["PaddingLeft"]
  LOADK R27 K148 ["$GlobalSpace25"]
  SETTABLEKS R27 R26 K57 ["PaddingRight"]
  LOADK R27 K148 ["$GlobalSpace25"]
  SETTABLEKS R27 R26 K58 ["PaddingTop"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K122 ["::UIListLayout"]
  DUPTABLE R27 K425 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R28 K147 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K123 ["FillDirection"]
  GETIMPORT R28 K426 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R28 R27 K424 ["HorizontalAlignment"]
  GETIMPORT R28 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K125 ["SortOrder"]
  GETIMPORT R28 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K166 ["VerticalAlignment"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K108 ["> Frame"]
  DUPTABLE R28 K427 [{"BackgroundColor3", "Size"}]
  LOADK R29 K172 [".Component-RibbonTab"]
  SETTABLEKS R29 R28 K33 ["BackgroundColor3"]
  GETIMPORT R29 K89 [UDim2.new]
  LOADN R30 0
  LOADN R31 20
  LOADN R32 0
  LOADN R33 20
  CALL R29 4 1
  SETTABLEKS R29 R28 K84 ["Size"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K165 [".Role-Mezzanine ::UIListLayout"]
  DUPTABLE R32 K218 [{"CornerRadius"}]
  LOADK R33 K166 ["VerticalAlignment"]
  SETTABLEKS R33 R32 K217 ["CornerRadius"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K178 [".State-Selected"]
  DUPTABLE R29 K429 [{"BackgroundColor3"}]
  GETIMPORT R30 K419 [Color3.fromHex]
  LOADK R31 K174 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  CALL R30 1 1
  SETTABLEKS R30 R29 K33 ["BackgroundColor3"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K122 ["::UIListLayout"]
  DUPTABLE R33 K431 [{"HorizontalAlignment"}]
  GETIMPORT R34 K433 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R34 R33 K424 ["HorizontalAlignment"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K183 [".State-Disabled"]
  DUPTABLE R30 K284 [{"BackgroundTransparency"}]
  LOADK R31 K178 [".State-Selected"]
  SETTABLEKS R31 R30 K27 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K108 ["> Frame"]
  DUPTABLE R34 K284 [{"BackgroundTransparency"}]
  LOADK R35 K178 [".State-Selected"]
  SETTABLEKS R35 R34 K27 ["BackgroundTransparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K179 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  DUPTABLE R22 K437 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K436 ["Active"]
  LOADB R23 0
  SETTABLEKS R23 R22 K245 ["AutoButtonColor"]
  GETIMPORT R23 K95 [Vector2.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K91 ["AnchorPoint"]
  GETIMPORT R23 K121 [UDim2.fromScale]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K92 ["Position"]
  LOADK R23 K248 [""]
  SETTABLEKS R23 R22 K246 ["Text"]
  LOADN R23 2
  SETTABLEKS R23 R22 K85 ["ZIndex"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K182 ["$SemanticColorContentStandard"]
  DUPTABLE R23 K439 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R24 K95 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K91 ["AnchorPoint"]
  GETIMPORT R24 K89 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  CALL R24 4 1
  SETTABLEKS R24 R23 K92 ["Position"]
  GETIMPORT R24 K89 [UDim2.new]
  LOADN R25 0
  LOADN R26 22
  LOADN R27 1
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K84 ["Size"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K30 ["$BackgroundTransparent"]
  DUPTABLE R27 K289 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R28 K441 [ColorSequence.new]
  GETIMPORT R29 K419 [Color3.fromHex]
  LOADK R30 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  CALL R29 1 -1
  CALL R28 -1 1
  SETTABLEKS R28 R27 K287 ["Color"]
  LOADN R28 180
  SETTABLEKS R28 R27 K288 ["Rotation"]
  GETIMPORT R28 K161 [NumberSequence.new]
  NEWTABLE R29 0 3
  GETIMPORT R30 K163 [NumberSequenceKeypoint.new]
  LOADN R31 0
  LOADN R32 0
  CALL R30 2 1
  GETIMPORT R31 K163 [NumberSequenceKeypoint.new]
  LOADK R32 K47 [".Role-Menu"]
  LOADN R33 0
  CALL R31 2 1
  GETIMPORT R32 K163 [NumberSequenceKeypoint.new]
  LOADN R33 1
  LOADN R34 1
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R28 1 1
  SETTABLEKS R28 R27 K158 ["Transparency"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K187 ["$SemanticColorStateLayerHover"]
  DUPTABLE R24 K107 [{"Size"}]
  GETIMPORT R25 K89 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 84
  CALL R25 4 1
  SETTABLEKS R25 R24 K84 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K188 ["$SemanticColorStateLayerHoverTransparency"]
  DUPTABLE R25 K107 [{"Size"}]
  GETIMPORT R26 K89 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 70
  CALL R26 4 1
  SETTABLEKS R26 R25 K84 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K189 [".State-Editing"]
  DUPTABLE R26 K107 [{"Size"}]
  GETIMPORT R27 K89 [UDim2.new]
  LOADN R28 1
  LOADN R29 224
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K84 ["Size"]
  CALL R24 2 1
  SETLIST R8 R9 16 [49]
  MOVE R9 R2
  LOADK R10 K190 ["ClipsDescendants"]
  DUPTABLE R11 K447 [{"AnchorPoint", "Position"}]
  GETIMPORT R12 K95 [Vector2.new]
  LOADN R13 0
  LOADK R14 K47 [".Role-Menu"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K91 ["AnchorPoint"]
  GETIMPORT R12 K89 [UDim2.new]
  LOADN R13 0
  LOADN R14 165
  LOADK R15 K47 [".Role-Menu"]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K92 ["Position"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K192 [Enum.TextTruncate.None]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K122 ["::UIListLayout"]
  DUPTABLE R16 K449 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R17 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K123 ["FillDirection"]
  GETIMPORT R17 K426 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K424 ["HorizontalAlignment"]
  GETIMPORT R17 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K125 ["SortOrder"]
  GETIMPORT R17 K168 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K166 ["VerticalAlignment"]
  LOADK R17 K61 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K124 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K249 ["> TextLabel"]
  DUPTABLE R17 K374 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R18 K30 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K27 ["BackgroundTransparency"]
  LOADK R18 K42 ["$FontWeight400"]
  SETTABLEKS R18 R17 K21 ["Font"]
  LOADK R18 K175 ["$FontSize150"]
  SETTABLEKS R18 R17 K40 ["TextSize"]
  LOADN R18 0
  SETTABLEKS R18 R17 K132 ["LayoutOrder"]
  LOADK R18 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R18 R17 K39 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K183 [".State-Disabled"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K249 ["> TextLabel"]
  DUPTABLE R22 K66 [{"TextColor3"}]
  JUMPIFNOT R5 [+2]
  LOADNIL R23
  JUMP [+1]
  LOADK R23 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R23 R22 K39 ["TextColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K194 [{"MinSize", "MaxSize"}]
  DUPTABLE R13 K305 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R14 0
  SETTABLEKS R14 R13 K245 ["AutoButtonColor"]
  LOADK R14 K248 [""]
  SETTABLEKS R14 R13 K246 ["Text"]
  GETIMPORT R14 K89 [UDim2.new]
  LOADN R15 0
  LOADN R16 85
  LOADN R17 0
  LOADN R18 28
  CALL R14 4 1
  SETTABLEKS R14 R13 K84 ["Size"]
  NEWTABLE R14 0 12
  MOVE R15 R2
  LOADK R16 K195 [".Component-RibbonTabs"]
  DUPTABLE R17 K107 [{"Size"}]
  GETIMPORT R18 K89 [UDim2.new]
  LOADN R19 0
  LOADN R20 120
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K84 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K122 ["::UIListLayout"]
  DUPTABLE R18 K452 [{"HorizontalFlex"}]
  GETIMPORT R19 K300 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R19 R18 K126 ["HorizontalFlex"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K55 ["::UIPadding"]
  DUPTABLE R19 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K61 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K56 ["PaddingLeft"]
  LOADK R20 K141 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K57 ["PaddingRight"]
  LOADK R20 K141 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K58 ["PaddingTop"]
  LOADK R20 K141 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K59 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K197 ["FlexMode"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K122 ["::UIListLayout"]
  DUPTABLE R24 K452 [{"HorizontalFlex"}]
  GETIMPORT R25 K300 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R25 R24 K126 ["HorizontalFlex"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K148 ["$GlobalSpace25"]
  DUPTABLE R21 K107 [{"Size"}]
  LOADK R22 K2 ["Parent"]
  SETTABLEKS R22 R21 K84 ["Size"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K198 ["GrowRatio"]
  DUPTABLE R25 K456 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R26 K203 [Enum.UIFlexMode.Custom]
  SETTABLEKS R26 R25 K197 ["FlexMode"]
  LOADN R26 0
  SETTABLEKS R26 R25 K455 ["ShrinkRation"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K201 ["UIFlexMode"]
  DUPTABLE R22 K312 [{"LayoutOrder"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K132 ["LayoutOrder"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K57 ["PaddingRight"]
  DUPTABLE R26 K312 [{"LayoutOrder"}]
  LOADN R27 3
  SETTABLEKS R27 R26 K132 ["LayoutOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K202 ["Custom"]
  DUPTABLE R23 K459 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R24 K31 ["$BorderNone"]
  SETTABLEKS R24 R23 K28 ["BorderSizePixel"]
  LOADN R24 1
  SETTABLEKS R24 R23 K27 ["BackgroundTransparency"]
  JUMPIFNOT R4 [+2]
  LOADK R24 K204 [10000000000]
  JUMP [+1]
  LOADK R24 K205 [1E-10]
  SETTABLEKS R24 R23 K277 ["Image"]
  LOADN R24 4
  SETTABLEKS R24 R23 K132 ["LayoutOrder"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K206 ["> #CollapsibleScroller"]
  DUPTABLE R27 K344 [{"Image"}]
  JUMPIFNOT R4 [+2]
  LOADK R28 K207 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  JUMP [+1]
  LOADK R28 K208 ["> #More"]
  SETTABLEKS R28 R27 K277 ["Image"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K209 ["Visible"]
  DUPTABLE R24 K466 [{"Font", "TextSize", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R25 K42 ["$FontWeight400"]
  SETTABLEKS R25 R24 K21 ["Font"]
  LOADK R25 K175 ["$FontSize150"]
  SETTABLEKS R25 R24 K40 ["TextSize"]
  GETIMPORT R25 K252 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R25 R24 K173 ["TextTruncate"]
  GETIMPORT R25 K101 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K98 ["TextXAlignment"]
  LOADN R25 2
  SETTABLEKS R25 R24 K132 ["LayoutOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K8 ["createStyleRule"]
  DUPTABLE R25 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K127 ["ItemLineAlignment"]
  SETTABLEKS R26 R25 K33 ["BackgroundColor3"]
  LOADK R26 K128 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  SETTABLEKS R26 R25 K27 ["BackgroundTransparency"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K209 ["Visible"]
  DUPTABLE R29 K66 [{"TextColor3"}]
  LOADK R30 K43 ["$SemanticColorContentMuted"]
  SETTABLEKS R30 R29 K39 ["TextColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K201 ["UIFlexMode"]
  DUPTABLE R30 K262 [{"ImageTransparency"}]
  LOADK R31 K211 [".Compact > #More"]
  SETTABLEKS R31 R30 K261 ["ImageTransparency"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K212 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R26 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K133 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K33 ["BackgroundColor3"]
  LOADK R27 K134 ["UIFlexAlignment"]
  SETTABLEKS R27 R26 K27 ["BackgroundTransparency"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K209 ["Visible"]
  DUPTABLE R30 K66 [{"TextColor3"}]
  LOADK R31 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K39 ["TextColor3"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K201 ["UIFlexMode"]
  DUPTABLE R31 K262 [{"ImageTransparency"}]
  LOADN R32 0
  SETTABLEKS R32 R31 K261 ["ImageTransparency"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K129 ["Horizontal"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K64 ["$SemanticColorDivider"]
  DUPTABLE R31 K386 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R32 K325 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R32 R31 K321 ["ApplyStrokeMode"]
  LOADK R32 K131 ["$GlobalSpace200"]
  SETTABLEKS R32 R31 K287 ["Color"]
  LOADK R32 K54 ["$BorderMedium"]
  SETTABLEKS R32 R31 K322 ["Thickness"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K209 ["Visible"]
  DUPTABLE R32 K66 [{"TextColor3"}]
  LOADK R33 K182 ["$SemanticColorContentStandard"]
  SETTABLEKS R33 R32 K39 ["TextColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K201 ["UIFlexMode"]
  DUPTABLE R33 K262 [{"ImageTransparency"}]
  LOADN R34 0
  SETTABLEKS R34 R33 K261 ["ImageTransparency"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K183 [".State-Disabled"]
  DUPTABLE R28 K186 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K127 ["ItemLineAlignment"]
  SETTABLEKS R29 R28 K33 ["BackgroundColor3"]
  LOADK R29 K128 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  SETTABLEKS R29 R28 K27 ["BackgroundTransparency"]
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K209 ["Visible"]
  DUPTABLE R32 K66 [{"TextColor3"}]
  LOADK R33 K184 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K39 ["TextColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K201 ["UIFlexMode"]
  DUPTABLE R33 K262 [{"ImageTransparency"}]
  LOADK R34 K7 ["Styling"]
  SETTABLEKS R34 R33 K261 ["ImageTransparency"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K213 [{"FlexMode"}]
  DUPTABLE R34 K262 [{"ImageTransparency"}]
  JUMPIFNOT R5 [+2]
  LOADK R35 K7 ["Styling"]
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K261 ["ImageTransparency"]
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K214 ["Shrink"]
  DUPTABLE R14 K423 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R15 K148 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K59 ["PaddingBottom"]
  LOADK R15 K148 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K56 ["PaddingLeft"]
  LOADK R15 K148 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K57 ["PaddingRight"]
  LOADK R15 K148 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K58 ["PaddingTop"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K215 [Enum.UIFlexMode.Shrink]
  DUPTABLE R15 K473 [{"Wraps"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K472 ["Wraps"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K218 [{"CornerRadius"}]
  DUPTABLE R16 K423 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R17 K118 ["$GlobalSpace150"]
  SETTABLEKS R17 R16 K59 ["PaddingBottom"]
  LOADK R17 K118 ["$GlobalSpace150"]
  SETTABLEKS R17 R16 K56 ["PaddingLeft"]
  LOADK R17 K118 ["$GlobalSpace150"]
  SETTABLEKS R17 R16 K57 ["PaddingRight"]
  LOADK R17 K118 ["$GlobalSpace150"]
  SETTABLEKS R17 R16 K58 ["PaddingTop"]
  CALL R14 2 -1
  SETLIST R8 R9 -1 [65]
  MOVE R9 R3
  LOADK R10 K219 ["$GlobalRadiusXSmall"]
  MOVE R11 R8
  DUPTABLE R12 K480 [{"SpinboxSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R13 K89 [UDim2.new]
  LOADN R14 0
  LOADN R15 90
  LOADN R16 0
  LOADN R17 28
  CALL R13 4 1
  SETTABLEKS R13 R12 K476 ["SpinboxSize"]
  GETIMPORT R13 K89 [UDim2.new]
  LOADN R14 0
  LOADN R15 61
  LOADN R16 0
  LOADN R17 28
  CALL R13 4 1
  SETTABLEKS R13 R12 K477 ["SpinboxShortSize"]
  GETIMPORT R13 K89 [UDim2.new]
  LOADN R14 0
  LOADN R15 90
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K84 ["Size"]
  GETIMPORT R13 K89 [UDim2.new]
  LOADN R14 0
  LOADN R15 90
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K478 ["SizeDense"]
  GETIMPORT R13 K89 [UDim2.new]
  LOADN R14 0
  LOADN R15 180
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K479 ["SliderSize"]
  CALL R9 3 -1
  RETURN R9 -1
