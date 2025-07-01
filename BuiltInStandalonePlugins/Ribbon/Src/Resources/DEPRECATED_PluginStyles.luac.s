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
  GETTABLEKS R5 R6 K12 ["getFFlagLuaRibbonControlVisibility"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K14 [game]
  LOADK R7 K15 ["RibbonButtonMaxWidth"]
  LOADN R8 120
  NAMECALL R5 R5 K16 ["DefineFastInt"]
  CALL R5 3 1
  NEWTABLE R6 0 70
  MOVE R7 R2
  LOADK R8 K17 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R9 K19 [{"Font"}]
  GETIMPORT R10 K22 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K18 ["Font"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K23 [".Role-Surface"]
  DUPTABLE R10 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R11 K27 ["$BackgroundTransparent"]
  SETTABLEKS R11 R10 K24 ["BackgroundTransparency"]
  LOADK R11 K28 ["$BorderNone"]
  SETTABLEKS R11 R10 K25 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K29 [".Role-Surface100"]
  DUPTABLE R11 K31 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R12 K32 ["$SemanticColorSurface100"]
  SETTABLEKS R12 R11 K30 ["BackgroundColor3"]
  LOADK R12 K28 ["$BorderNone"]
  SETTABLEKS R12 R11 K25 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K33 [".Role-Surface200"]
  DUPTABLE R12 K31 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R13 K34 ["$SemanticColorSurface200"]
  SETTABLEKS R13 R12 K30 ["BackgroundColor3"]
  LOADK R13 K28 ["$BorderNone"]
  SETTABLEKS R13 R12 K25 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K35 [".Text-Label"]
  DUPTABLE R13 K38 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R14 K39 ["$FontWeight400"]
  SETTABLEKS R14 R13 K18 ["Font"]
  LOADK R14 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R14 R13 K36 ["TextColor3"]
  LOADK R14 K41 ["$FontSize100"]
  SETTABLEKS R14 R13 K37 ["TextSize"]
  LOADK R14 K28 ["$BorderNone"]
  SETTABLEKS R14 R13 K25 ["BorderSizePixel"]
  LOADK R14 K27 ["$BackgroundTransparent"]
  SETTABLEKS R14 R13 K24 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K42 [".Text-Title"]
  DUPTABLE R14 K38 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R15 K43 ["$FontWeight700"]
  SETTABLEKS R15 R14 K18 ["Font"]
  LOADK R15 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R15 R14 K36 ["TextColor3"]
  LOADK R15 K41 ["$FontSize100"]
  SETTABLEKS R15 R14 K37 ["TextSize"]
  LOADK R15 K28 ["$BorderNone"]
  SETTABLEKS R15 R14 K25 ["BorderSizePixel"]
  LOADK R15 K27 ["$BackgroundTransparent"]
  SETTABLEKS R15 R14 K24 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K44 [".Role-Menu"]
  DUPTABLE R15 K47 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R16 K32 ["$SemanticColorSurface100"]
  SETTABLEKS R16 R15 K30 ["BackgroundColor3"]
  LOADK R16 K48 ["$SemanticColorPanelBorder"]
  SETTABLEKS R16 R15 K45 ["BorderColor3"]
  GETIMPORT R16 K50 [Enum.BorderMode.Inset]
  SETTABLEKS R16 R15 K46 ["BorderMode"]
  LOADK R16 K51 ["$BorderMedium"]
  SETTABLEKS R16 R15 K25 ["BorderSizePixel"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K52 ["::UIPadding"]
  DUPTABLE R19 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K58 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K53 ["PaddingLeft"]
  LOADK R20 K58 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K54 ["PaddingRight"]
  LOADK R20 K58 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K55 ["PaddingTop"]
  LOADK R20 K58 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K56 ["PaddingBottom"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K59 [".Role-Tooltip"]
  DUPTABLE R16 K47 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R17 K60 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R17 R16 K30 ["BackgroundColor3"]
  LOADK R17 K61 ["$SemanticColorDivider"]
  SETTABLEKS R17 R16 K45 ["BorderColor3"]
  GETIMPORT R17 K50 [Enum.BorderMode.Inset]
  SETTABLEKS R17 R16 K46 ["BorderMode"]
  LOADK R17 K51 ["$BorderMedium"]
  SETTABLEKS R17 R16 K25 ["BorderSizePixel"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K62 [">> TextLabel"]
  DUPTABLE R20 K63 [{"TextColor3"}]
  LOADK R21 K64 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R21 R20 K36 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K65 [".Role-Scroller"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K66 ["> #Scroller"]
  DUPTABLE R21 K71 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R22 K74 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K67 ["AutomaticCanvasSize"]
  GETIMPORT R22 K76 [Enum.ScrollingDirection.X]
  SETTABLEKS R22 R21 K68 ["ScrollingDirection"]
  LOADN R22 0
  SETTABLEKS R22 R21 K69 ["ScrollBarThickness"]
  GETIMPORT R22 K79 [Enum.ScrollBarInset.None]
  SETTABLEKS R22 R21 K70 ["HorizontalScrollBarInset"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K80 ["> #LeftGradient"]
  DUPTABLE R22 K83 [{"Size", "ZIndex"}]
  GETIMPORT R23 K86 [UDim2.new]
  LOADN R24 0
  LOADN R25 22
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K81 ["Size"]
  LOADN R23 10
  SETTABLEKS R23 R22 K82 ["ZIndex"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K87 ["> #RightGradient"]
  DUPTABLE R23 K90 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R24 K92 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K88 ["AnchorPoint"]
  GETIMPORT R24 K86 [UDim2.new]
  LOADN R25 0
  LOADN R26 22
  LOADN R27 1
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K81 ["Size"]
  GETIMPORT R24 K86 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K89 ["Position"]
  LOADN R24 10
  SETTABLEKS R24 R23 K82 ["ZIndex"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K93 [".TooltipTextBounds"]
  DUPTABLE R18 K96 [{"TextWrapped", "TextXAlignment"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K94 ["TextWrapped"]
  GETIMPORT R19 K98 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K95 ["TextXAlignment"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K99 ["::UISizeConstraint"]
  DUPTABLE R22 K101 [{"MaxSize"}]
  GETIMPORT R23 K92 [Vector2.new]
  LOADN R24 200
  LOADK R25 K102 [∞]
  CALL R23 2 1
  SETTABLEKS R23 R22 K100 ["MaxSize"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K103 [".Role-DividerH"]
  DUPTABLE R19 K104 [{"Size"}]
  GETIMPORT R20 K86 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 1
  CALL R20 4 1
  SETTABLEKS R20 R19 K81 ["Size"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K105 ["> Frame"]
  DUPTABLE R23 K106 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R24 K61 ["$SemanticColorDivider"]
  SETTABLEKS R24 R23 K30 ["BackgroundColor3"]
  LOADK R24 K107 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R24 R23 K24 ["BackgroundTransparency"]
  LOADK R24 K28 ["$BorderNone"]
  SETTABLEKS R24 R23 K25 ["BorderSizePixel"]
  GETIMPORT R24 K86 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  CALL R24 4 1
  SETTABLEKS R24 R23 K81 ["Size"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K108 [".Role-DividerV"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 5
  MOVE R22 R2
  LOADK R23 K105 ["> Frame"]
  DUPTABLE R24 K109 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R25 K61 ["$SemanticColorDivider"]
  SETTABLEKS R25 R24 K30 ["BackgroundColor3"]
  LOADK R25 K107 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  LOADK R25 K28 ["$BorderNone"]
  SETTABLEKS R25 R24 K25 ["BorderSizePixel"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K110 [".Small"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K105 ["> Frame"]
  DUPTABLE R29 K104 [{"Size"}]
  GETIMPORT R30 K86 [UDim2.new]
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  LOADN R34 28
  CALL R30 4 1
  SETTABLEKS R30 R29 K81 ["Size"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K111 [".Medium"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K105 ["> Frame"]
  DUPTABLE R30 K104 [{"Size"}]
  GETIMPORT R31 K86 [UDim2.new]
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  LOADN R35 48
  CALL R31 4 1
  SETTABLEKS R31 R30 K81 ["Size"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K112 [".Large"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K105 ["> Frame"]
  DUPTABLE R31 K104 [{"Size"}]
  GETIMPORT R32 K86 [UDim2.new]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  LOADN R36 64
  CALL R32 4 1
  SETTABLEKS R32 R31 K81 ["Size"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K113 [".RibbonButton-Divider"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K52 ["::UIPadding"]
  DUPTABLE R32 K114 [{"PaddingLeft", "PaddingRight"}]
  LOADK R33 K115 ["$GlobalSpace150"]
  SETTABLEKS R33 R32 K53 ["PaddingLeft"]
  LOADK R33 K115 ["$GlobalSpace150"]
  SETTABLEKS R33 R32 K54 ["PaddingRight"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K116 [".X-RowSpaceBetween"]
  DUPTABLE R21 K104 [{"Size"}]
  GETIMPORT R22 K118 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K81 ["Size"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K119 ["::UIListLayout"]
  DUPTABLE R25 K125 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  GETIMPORT R26 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K120 ["FillDirection"]
  LOADK R26 K128 ["$GlobalSpace200"]
  SETTABLEKS R26 R25 K121 ["Padding"]
  GETIMPORT R26 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K122 ["SortOrder"]
  GETIMPORT R26 K133 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R26 R25 K123 ["HorizontalFlex"]
  GETIMPORT R26 K135 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R26 R25 K124 ["ItemLineAlignment"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K136 [".X-RowSpace50"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K119 ["::UIListLayout"]
  DUPTABLE R26 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K120 ["FillDirection"]
  LOADK R27 K138 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K121 ["Padding"]
  GETIMPORT R27 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K122 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K139 [".X-RowSpace100"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K119 ["::UIListLayout"]
  DUPTABLE R27 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R28 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K120 ["FillDirection"]
  LOADK R28 K58 ["$GlobalSpace100"]
  SETTABLEKS R28 R27 K121 ["Padding"]
  GETIMPORT R28 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K122 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K140 [".X-RowSpace150"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K119 ["::UIListLayout"]
  DUPTABLE R28 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R29 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K120 ["FillDirection"]
  LOADK R29 K115 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K121 ["Padding"]
  GETIMPORT R29 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K122 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  SETLIST R6 R7 16 [1]
  MOVE R7 R2
  LOADK R8 K141 [".X-RowSpace200"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K119 ["::UIListLayout"]
  DUPTABLE R13 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R14 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K120 ["FillDirection"]
  LOADK R14 K128 ["$GlobalSpace200"]
  SETTABLEKS R14 R13 K121 ["Padding"]
  GETIMPORT R14 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K122 ["SortOrder"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K142 [".X-ColumnSpace25"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K119 ["::UIListLayout"]
  DUPTABLE R14 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K144 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K120 ["FillDirection"]
  LOADK R15 K145 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K121 ["Padding"]
  GETIMPORT R15 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K122 ["SortOrder"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K146 [".X-ColumnSpace50"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K119 ["::UIListLayout"]
  DUPTABLE R15 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K144 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K120 ["FillDirection"]
  LOADK R16 K138 ["$GlobalSpace50"]
  SETTABLEKS R16 R15 K121 ["Padding"]
  GETIMPORT R16 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K122 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K147 [".X-ColumnSpace100"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K119 ["::UIListLayout"]
  DUPTABLE R16 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K144 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K120 ["FillDirection"]
  LOADK R17 K58 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K121 ["Padding"]
  GETIMPORT R17 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K122 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K148 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R13 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R14 K115 ["$GlobalSpace150"]
  SETTABLEKS R14 R13 K53 ["PaddingLeft"]
  LOADK R14 K115 ["$GlobalSpace150"]
  SETTABLEKS R14 R13 K54 ["PaddingRight"]
  LOADK R14 K115 ["$GlobalSpace150"]
  SETTABLEKS R14 R13 K55 ["PaddingTop"]
  LOADK R14 K115 ["$GlobalSpace150"]
  SETTABLEKS R14 R13 K56 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K149 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R14 K150 [{"PaddingLeft"}]
  LOADK R15 K58 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K53 ["PaddingLeft"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K151 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R15 K152 [{"PaddingRight"}]
  LOADK R16 K58 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K54 ["PaddingRight"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K153 [".X-RowXS"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K119 ["::UIListLayout"]
  DUPTABLE R20 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K120 ["FillDirection"]
  LOADK R21 K145 ["$GlobalSpace25"]
  SETTABLEKS R21 R20 K121 ["Padding"]
  GETIMPORT R21 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K122 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K154 [".X-FadeLeft ::UIGradient"]
  DUPTABLE R17 K156 [{"Transparency"}]
  GETIMPORT R18 K158 [NumberSequence.new]
  NEWTABLE R19 0 2
  GETIMPORT R20 K160 [NumberSequenceKeypoint.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  GETIMPORT R21 K160 [NumberSequenceKeypoint.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R18 1 1
  SETTABLEKS R18 R17 K155 ["Transparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K161 [".X-FadeRight ::UIGradient"]
  DUPTABLE R18 K156 [{"Transparency"}]
  GETIMPORT R19 K158 [NumberSequence.new]
  NEWTABLE R20 0 2
  GETIMPORT R21 K160 [NumberSequenceKeypoint.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  GETIMPORT R22 K160 [NumberSequenceKeypoint.new]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R19 1 1
  SETTABLEKS R19 R18 K155 ["Transparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K162 [".Role-Mezzanine ::UIListLayout"]
  DUPTABLE R19 K164 [{"FillDirection", "HorizontalFlex", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R20 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K120 ["FillDirection"]
  GETIMPORT R20 K133 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R20 R19 K123 ["HorizontalFlex"]
  LOADK R20 K58 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K121 ["Padding"]
  GETIMPORT R20 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K122 ["SortOrder"]
  GETIMPORT R20 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K163 ["VerticalAlignment"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K166 [".Role-TabLocation ::UIPadding"]
  DUPTABLE R20 K167 [{"PaddingLeft", "PaddingTop"}]
  LOADK R21 K168 ["$GlobalSpace75"]
  SETTABLEKS R21 R20 K53 ["PaddingLeft"]
  LOADK R21 K138 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K55 ["PaddingTop"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K169 [".Component-RibbonTab"]
  DUPTABLE R21 K171 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R22 K27 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K24 ["BackgroundTransparency"]
  LOADK R22 K39 ["$FontWeight400"]
  SETTABLEKS R22 R21 K18 ["Font"]
  LOADK R22 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R22 R21 K36 ["TextColor3"]
  LOADK R22 K172 ["$FontSize150"]
  SETTABLEKS R22 R21 K37 ["TextSize"]
  GETIMPORT R22 K174 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R22 R21 K170 ["TextTruncate"]
  NEWTABLE R22 0 6
  MOVE R23 R2
  LOADK R24 K175 [".State-Selected"]
  DUPTABLE R25 K176 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R26 K177 ["$SemanticColorStatesSelected"]
  SETTABLEKS R26 R25 K30 ["BackgroundColor3"]
  LOADK R26 K178 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R26 R25 K24 ["BackgroundTransparency"]
  LOADK R26 K43 ["$FontWeight700"]
  SETTABLEKS R26 R25 K18 ["Font"]
  LOADK R26 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K36 ["TextColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K180 [".State-Disabled"]
  DUPTABLE R26 K63 [{"TextColor3"}]
  LOADK R27 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R27 R26 K36 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K182 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R27 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K184 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R28 R27 K30 ["BackgroundColor3"]
  LOADK R28 K185 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R28 R27 K24 ["BackgroundTransparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K186 [".State-Editing"]
  DUPTABLE R28 K188 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  LOADK R29 K177 ["$SemanticColorStatesSelected"]
  SETTABLEKS R29 R28 K30 ["BackgroundColor3"]
  LOADK R29 K178 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R29 R28 K24 ["BackgroundTransparency"]
  LOADB R29 1
  SETTABLEKS R29 R28 K187 ["ClipsDescendants"]
  LOADK R29 K43 ["$FontWeight700"]
  SETTABLEKS R29 R28 K18 ["Font"]
  LOADK R29 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K36 ["TextColor3"]
  GETIMPORT R29 K189 [Enum.TextTruncate.None]
  SETTABLEKS R29 R28 K170 ["TextTruncate"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K99 ["::UISizeConstraint"]
  DUPTABLE R29 K191 [{"MinSize", "MaxSize"}]
  GETIMPORT R30 K92 [Vector2.new]
  LOADN R31 56
  LOADN R32 28
  CALL R30 2 1
  SETTABLEKS R30 R29 K190 ["MinSize"]
  GETIMPORT R30 K92 [Vector2.new]
  LOADN R31 44
  LOADN R32 28
  CALL R30 2 1
  SETTABLEKS R30 R29 K100 ["MaxSize"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K52 ["::UIPadding"]
  DUPTABLE R30 K114 [{"PaddingLeft", "PaddingRight"}]
  LOADK R31 K115 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K53 ["PaddingLeft"]
  LOADK R31 K115 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K54 ["PaddingRight"]
  CALL R28 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K192 [".Component-RibbonTabs"]
  DUPTABLE R22 K104 [{"Size"}]
  GETIMPORT R23 K118 [UDim2.fromScale]
  LOADN R24 0
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K81 ["Size"]
  NEWTABLE R23 0 4
  MOVE R24 R2
  LOADK R25 K193 [":: UIFlexItem"]
  DUPTABLE R26 K197 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  GETIMPORT R27 K200 [Enum.UIFlexMode.Custom]
  SETTABLEKS R27 R26 K194 ["FlexMode"]
  LOADK R27 K201 [10000000000]
  SETTABLEKS R27 R26 K195 ["GrowRatio"]
  LOADK R27 K202 [1E-10]
  SETTABLEKS R27 R26 K196 ["ShrinkRatio"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K203 ["> #CollapsibleScroller"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K66 ["> #Scroller"]
  DUPTABLE R31 K204 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset", "Size"}]
  GETIMPORT R32 K74 [Enum.AutomaticSize.XY]
  SETTABLEKS R32 R31 K67 ["AutomaticCanvasSize"]
  GETIMPORT R32 K76 [Enum.ScrollingDirection.X]
  SETTABLEKS R32 R31 K68 ["ScrollingDirection"]
  LOADN R32 0
  SETTABLEKS R32 R31 K69 ["ScrollBarThickness"]
  GETIMPORT R32 K79 [Enum.ScrollBarInset.None]
  SETTABLEKS R32 R31 K70 ["HorizontalScrollBarInset"]
  GETIMPORT R32 K118 [UDim2.fromScale]
  LOADN R33 1
  LOADN R34 1
  CALL R32 2 1
  SETTABLEKS R32 R31 K81 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K80 ["> #LeftGradient"]
  DUPTABLE R32 K83 [{"Size", "ZIndex"}]
  GETIMPORT R33 K86 [UDim2.new]
  LOADN R34 0
  LOADN R35 22
  LOADN R36 1
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K81 ["Size"]
  LOADN R33 10
  SETTABLEKS R33 R32 K82 ["ZIndex"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K87 ["> #RightGradient"]
  DUPTABLE R33 K90 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  GETIMPORT R34 K92 [Vector2.new]
  LOADN R35 1
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K88 ["AnchorPoint"]
  GETIMPORT R34 K86 [UDim2.new]
  LOADN R35 0
  LOADN R36 22
  LOADN R37 1
  LOADN R38 0
  CALL R34 4 1
  SETTABLEKS R34 R33 K81 ["Size"]
  GETIMPORT R34 K86 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  LOADN R38 0
  CALL R34 4 1
  SETTABLEKS R34 R33 K89 ["Position"]
  LOADN R34 10
  SETTABLEKS R34 R33 K82 ["ZIndex"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K205 ["> #More"]
  DUPTABLE R28 K207 [{"Visible"}]
  LOADB R29 0
  SETTABLEKS R29 R28 K206 ["Visible"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K208 [".Compact > #More"]
  DUPTABLE R29 K207 [{"Visible"}]
  LOADB R30 1
  SETTABLEKS R30 R29 K206 ["Visible"]
  CALL R27 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K209 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R23 K210 [{"FlexMode"}]
  GETIMPORT R24 K212 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R24 R23 K194 ["FlexMode"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K213 [".X-CornerXS ::UICorner"]
  DUPTABLE R24 K215 [{"CornerRadius"}]
  LOADK R25 K216 ["$GlobalRadiusXSmall"]
  SETTABLEKS R25 R24 K214 ["CornerRadius"]
  CALL R22 2 1
  SETLIST R6 R7 16 [17]
  MOVE R7 R2
  LOADK R8 K217 [".X-CornerS ::UICorner"]
  DUPTABLE R9 K215 [{"CornerRadius"}]
  LOADK R10 K218 ["$GlobalRadiusSmall"]
  SETTABLEKS R10 R9 K214 ["CornerRadius"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K219 [".X-CornerM ::UICorner"]
  DUPTABLE R10 K215 [{"CornerRadius"}]
  LOADK R11 K220 ["$GlobalRadiusMedium"]
  SETTABLEKS R11 R10 K214 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K221 [".X-PadMezz :: UIPadding"]
  DUPTABLE R11 K150 [{"PaddingLeft"}]
  GETIMPORT R12 K223 [UDim.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K53 ["PaddingLeft"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K224 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R12 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K223 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K53 ["PaddingLeft"]
  GETIMPORT R13 K223 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K54 ["PaddingRight"]
  LOADK R13 K58 ["$GlobalSpace100"]
  SETTABLEKS R13 R12 K55 ["PaddingTop"]
  LOADK R13 K58 ["$GlobalSpace100"]
  SETTABLEKS R13 R12 K56 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K225 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R13 K150 [{"PaddingLeft"}]
  LOADK R14 K58 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K53 ["PaddingLeft"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K226 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R14 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R15 K145 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K53 ["PaddingLeft"]
  LOADK R15 K168 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K54 ["PaddingRight"]
  LOADK R15 K227 ["$GlobalSpace350"]
  SETTABLEKS R15 R14 K55 ["PaddingTop"]
  LOADK R15 K168 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K56 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K228 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R15 K229 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K145 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K54 ["PaddingRight"]
  LOADK R16 K230 ["$GlobalSpace250"]
  SETTABLEKS R16 R15 K55 ["PaddingTop"]
  LOADK R16 K138 ["$GlobalSpace50"]
  SETTABLEKS R16 R15 K56 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K231 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R16 K150 [{"PaddingLeft"}]
  LOADK R17 K168 ["$GlobalSpace75"]
  SETTABLEKS R17 R16 K53 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K232 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R17 K233 [{"PaddingTop", "PaddingBottom"}]
  LOADK R18 K138 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K55 ["PaddingTop"]
  LOADK R18 K138 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K56 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K234 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R18 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R19 K115 ["$GlobalSpace150"]
  SETTABLEKS R19 R18 K53 ["PaddingLeft"]
  LOADK R19 K58 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K54 ["PaddingRight"]
  LOADK R19 K115 ["$GlobalSpace150"]
  SETTABLEKS R19 R18 K55 ["PaddingTop"]
  LOADK R19 K115 ["$GlobalSpace150"]
  SETTABLEKS R19 R18 K56 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K235 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R19 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K168 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K53 ["PaddingLeft"]
  LOADK R20 K168 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K54 ["PaddingRight"]
  LOADK R20 K168 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K55 ["PaddingTop"]
  LOADK R20 K168 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K56 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K236 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R20 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K58 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K53 ["PaddingLeft"]
  LOADK R21 K58 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K54 ["PaddingRight"]
  LOADK R21 K138 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K55 ["PaddingTop"]
  LOADK R21 K138 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K56 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K237 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R21 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K168 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K53 ["PaddingLeft"]
  LOADK R22 K168 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K54 ["PaddingRight"]
  LOADK R22 K138 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K55 ["PaddingTop"]
  LOADK R22 K138 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K56 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K238 [".X-RowSplitButton"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K119 ["::UIListLayout"]
  DUPTABLE R26 K137 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K120 ["FillDirection"]
  LOADK R27 K145 ["$GlobalSpace25"]
  SETTABLEKS R27 R26 K121 ["Padding"]
  GETIMPORT R27 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K122 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K239 [".X-RowSplitButtonSmall"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K119 ["::UIListLayout"]
  DUPTABLE R27 K240 [{"FillDirection", "SortOrder"}]
  GETIMPORT R28 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K120 ["FillDirection"]
  GETIMPORT R28 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K122 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K241 [".Component-RibbonButton"]
  DUPTABLE R24 K244 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K242 ["AutoButtonColor"]
  LOADK R25 K27 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  LOADK R25 K28 ["$BorderNone"]
  SETTABLEKS R25 R24 K25 ["BorderSizePixel"]
  LOADK R25 K245 [""]
  SETTABLEKS R25 R24 K243 ["Text"]
  NEWTABLE R25 0 9
  MOVE R26 R2
  LOADK R27 K246 ["> TextLabel"]
  DUPTABLE R28 K247 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize", "TextTruncate"}]
  LOADK R29 K27 ["$BackgroundTransparent"]
  SETTABLEKS R29 R28 K24 ["BackgroundTransparency"]
  LOADK R29 K39 ["$FontWeight400"]
  SETTABLEKS R29 R28 K18 ["Font"]
  LOADN R29 2
  SETTABLEKS R29 R28 K129 ["LayoutOrder"]
  LOADK R29 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R29 R28 K36 ["TextColor3"]
  LOADK R29 K41 ["$FontSize100"]
  SETTABLEKS R29 R28 K37 ["TextSize"]
  GETIMPORT R29 K249 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R29 R28 K170 ["TextTruncate"]
  NEWTABLE R29 0 0
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K250 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R29 K251 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R30 K27 ["$BackgroundTransparent"]
  SETTABLEKS R30 R29 K24 ["BackgroundTransparency"]
  LOADK R30 K28 ["$BorderNone"]
  SETTABLEKS R30 R29 K25 ["BorderSizePixel"]
  LOADN R30 0
  SETTABLEKS R30 R29 K129 ["LayoutOrder"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K252 [".Icon-Large"]
  DUPTABLE R33 K104 [{"Size"}]
  LOADK R34 K253 ["$IconLarge"]
  SETTABLEKS R34 R33 K81 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K254 [".Icon-Small"]
  DUPTABLE R34 K104 [{"Size"}]
  LOADK R35 K255 ["$IconSmall"]
  SETTABLEKS R35 R34 K81 ["Size"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K180 [".State-Disabled"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K0 ["script"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K1 [script]
  DUPTABLE R38 K259 [{"ImageTransparency"}]
  LOADK R39 K4 [require]
  SETTABLEKS R39 R38 K258 ["ImageTransparency"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K246 ["> TextLabel"]
  DUPTABLE R35 K63 [{"TextColor3"}]
  JUMPIFNOT R4 [+2]
  LOADNIL R36
  JUMP [+1]
  LOADK R36 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R36 R35 K36 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K5 ["Packages"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K6 ["Framework"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K7 ["Styling"]
  DUPTABLE R39 K264 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R40 K185 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R40 R39 K24 ["BackgroundTransparency"]
  LOADK R40 K184 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R40 R39 K30 ["BackgroundColor3"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K9 ["createStyleSheet"]
  DUPTABLE R40 K264 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R41 K10 ["Src"]
  SETTABLEKS R41 R40 K24 ["BackgroundTransparency"]
  LOADK R41 K11 ["SharedFlags"]
  SETTABLEKS R41 R40 K30 ["BackgroundColor3"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K175 [".State-Selected"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K0 ["script"]
  DUPTABLE R36 K264 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R37 K178 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R37 R36 K24 ["BackgroundTransparency"]
  LOADK R37 K177 ["$SemanticColorStatesSelected"]
  SETTABLEKS R37 R36 K30 ["BackgroundColor3"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K12 ["getFFlagLuaRibbonControlVisibility"]
  DUPTABLE R33 K269 [{"LayoutOrder", "Size"}]
  LOADN R34 1
  SETTABLEKS R34 R33 K129 ["LayoutOrder"]
  GETIMPORT R34 K86 [UDim2.new]
  LOADN R35 0
  LOADN R36 12
  LOADN R37 0
  LOADN R38 40
  CALL R34 4 1
  SETTABLEKS R34 R33 K81 ["Size"]
  NEWTABLE R34 0 2
  MOVE R35 R2
  LOADK R36 K110 [".Small"]
  DUPTABLE R37 K104 [{"Size"}]
  GETIMPORT R38 K86 [UDim2.new]
  LOADN R39 0
  LOADN R40 6
  LOADN R41 0
  LOADN R42 28
  CALL R38 4 1
  SETTABLEKS R38 R37 K81 ["Size"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K14 [game]
  DUPTABLE R38 K271 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R39 K92 [Vector2.new]
  LOADN R40 1
  LOADN R41 1
  CALL R39 2 1
  SETTABLEKS R39 R38 K88 ["AnchorPoint"]
  LOADB R39 0
  SETTABLEKS R39 R38 K242 ["AutoButtonColor"]
  GETIMPORT R39 K86 [UDim2.new]
  LOADN R40 1
  LOADN R41 0
  LOADN R42 1
  LOADN R43 0
  CALL R39 4 1
  SETTABLEKS R39 R38 K89 ["Position"]
  LOADK R39 K245 [""]
  SETTABLEKS R39 R38 K243 ["Text"]
  LOADN R39 1
  SETTABLEKS R39 R38 K37 ["TextSize"]
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K16 ["DefineFastInt"]
  DUPTABLE R42 K274 [{"Image", "Size"}]
  LOADK R43 K19 [{"Font"}]
  SETTABLEKS R43 R42 K273 ["Image"]
  GETIMPORT R43 K277 [UDim2.fromOffset]
  LOADN R44 6
  LOADN R45 6
  CALL R43 2 1
  SETTABLEKS R43 R42 K81 ["Size"]
  NEWTABLE R43 0 2
  MOVE R44 R2
  LOADK R45 K110 [".Small"]
  DUPTABLE R46 K104 [{"Size"}]
  GETIMPORT R47 K277 [UDim2.fromOffset]
  LOADN R48 4
  LOADN R49 4
  CALL R47 2 1
  SETTABLEKS R47 R46 K81 ["Size"]
  CALL R44 2 1
  MOVE R45 R2
  LOADK R46 K180 [".State-Disabled"]
  DUPTABLE R47 K259 [{"ImageTransparency"}]
  JUMPIFNOT R4 [+2]
  LOADK R48 K4 [require]
  JUMP [+1]
  LOADNIL R48
  SETTABLEKS R48 R47 K258 ["ImageTransparency"]
  CALL R45 2 -1
  SETLIST R43 R44 -1 [1]
  CALL R40 3 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K22 [Enum.Font.SourceSans]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 2
  MOVE R36 R2
  LOADK R37 K23 [".Role-Surface"]
  DUPTABLE R38 K280 [{"BackgroundTransparency"}]
  LOADK R39 K25 ["BorderSizePixel"]
  SETTABLEKS R39 R38 K24 ["BackgroundTransparency"]
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R42 K285 [{"Color", "Rotation", "Transparency"}]
  LOADK R43 K30 ["BackgroundColor3"]
  SETTABLEKS R43 R42 K283 ["Color"]
  LOADK R43 K31 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R43 R42 K284 ["Rotation"]
  LOADK R43 K32 ["$SemanticColorSurface100"]
  SETTABLEKS R43 R42 K155 ["Transparency"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 1
  MOVE R37 R2
  LOADK R38 K33 [".Role-Surface200"]
  DUPTABLE R39 K280 [{"BackgroundTransparency"}]
  LOADK R40 K25 ["BorderSizePixel"]
  SETTABLEKS R40 R39 K24 ["BackgroundTransparency"]
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R43 K285 [{"Color", "Rotation", "Transparency"}]
  LOADK R44 K34 ["$SemanticColorSurface200"]
  SETTABLEKS R44 R43 K283 ["Color"]
  LOADK R44 K35 [".Text-Label"]
  SETTABLEKS R44 R43 K284 ["Rotation"]
  LOADK R44 K36 ["TextColor3"]
  SETTABLEKS R44 R43 K155 ["Transparency"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K119 ["::UIListLayout"]
  DUPTABLE R35 K294 [{"FillDirection", "SortOrder", "VerticalFlex"}]
  GETIMPORT R36 K144 [Enum.FillDirection.Vertical]
  SETTABLEKS R36 R35 K120 ["FillDirection"]
  GETIMPORT R36 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K122 ["SortOrder"]
  GETIMPORT R36 K296 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R36 R35 K293 ["VerticalFlex"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K99 ["::UISizeConstraint"]
  DUPTABLE R36 K101 [{"MaxSize"}]
  GETIMPORT R37 K92 [Vector2.new]
  MOVE R38 R5
  LOADK R39 K102 [∞]
  CALL R37 2 1
  SETTABLEKS R37 R36 K100 ["MaxSize"]
  CALL R34 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  SETLIST R6 R7 16 [33]
  MOVE R7 R2
  LOADK R8 K41 ["$FontSize100"]
  DUPTABLE R9 K298 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R10 K92 [Vector2.new]
  LOADN R11 1
  LOADK R12 K43 ["$FontWeight700"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K88 ["AnchorPoint"]
  GETIMPORT R10 K86 [UDim2.new]
  LOADN R11 1
  LOADN R12 248
  LOADK R13 K43 ["$FontWeight700"]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K89 ["Position"]
  LOADN R10 3
  SETTABLEKS R10 R9 K82 ["ZIndex"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K44 [".Role-Menu"]
  DUPTABLE R10 K301 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K242 ["AutoButtonColor"]
  LOADK R11 K245 [""]
  SETTABLEKS R11 R10 K243 ["Text"]
  GETIMPORT R11 K86 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 28
  CALL R11 4 1
  SETTABLEKS R11 R10 K81 ["Size"]
  NEWTABLE R11 0 5
  MOVE R12 R2
  LOADK R13 K46 ["BorderMode"]
  DUPTABLE R14 K104 [{"Size"}]
  GETIMPORT R15 K86 [UDim2.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  LOADN R19 28
  CALL R15 4 1
  SETTABLEKS R15 R14 K81 ["Size"]
  NEWTABLE R15 0 6
  MOVE R16 R2
  LOADK R17 K119 ["::UIListLayout"]
  DUPTABLE R18 K303 [{"Padding"}]
  LOADK R19 K138 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K121 ["Padding"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K48 ["$SemanticColorPanelBorder"]
  DUPTABLE R19 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K115 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K53 ["PaddingLeft"]
  LOADK R20 K115 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K54 ["PaddingRight"]
  LOADK R20 K138 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K55 ["PaddingTop"]
  LOADK R20 K138 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K56 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K49 ["Inset"]
  DUPTABLE R20 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K230 ["$GlobalSpace250"]
  SETTABLEKS R21 R20 K53 ["PaddingLeft"]
  LOADK R21 K230 ["$GlobalSpace250"]
  SETTABLEKS R21 R20 K54 ["PaddingRight"]
  LOADK R21 K115 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K55 ["PaddingTop"]
  LOADK R21 K115 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K56 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K50 [Enum.BorderMode.Inset]
  DUPTABLE R21 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K128 ["$GlobalSpace200"]
  SETTABLEKS R22 R21 K53 ["PaddingLeft"]
  LOADK R22 K128 ["$GlobalSpace200"]
  SETTABLEKS R22 R21 K54 ["PaddingRight"]
  LOADK R22 K58 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K55 ["PaddingTop"]
  LOADK R22 K58 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K56 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K51 ["$BorderMedium"]
  DUPTABLE R22 K308 [{"LayoutOrder"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K129 ["LayoutOrder"]
  NEWTABLE R23 0 3
  MOVE R24 R2
  LOADK R25 K252 [".Icon-Large"]
  DUPTABLE R26 K104 [{"Size"}]
  LOADK R27 K253 ["$IconLarge"]
  SETTABLEKS R27 R26 K81 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K254 [".Icon-Small"]
  DUPTABLE R27 K104 [{"Size"}]
  LOADK R28 K255 ["$IconSmall"]
  SETTABLEKS R28 R27 K81 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K53 ["PaddingLeft"]
  DUPTABLE R28 K308 [{"LayoutOrder"}]
  LOADN R29 3
  SETTABLEKS R29 R28 K129 ["LayoutOrder"]
  CALL R26 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K54 ["PaddingRight"]
  DUPTABLE R23 K311 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R24 K43 ["$FontWeight700"]
  SETTABLEKS R24 R23 K18 ["Font"]
  LOADK R24 K56 ["PaddingBottom"]
  SETTABLEKS R24 R23 K37 ["TextSize"]
  LOADN R24 2
  SETTABLEKS R24 R23 K129 ["LayoutOrder"]
  LOADK R24 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R24 R23 K36 ["TextColor3"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K110 [".Small"]
  DUPTABLE R27 K313 [{"TextSize"}]
  LOADK R28 K172 ["$FontSize150"]
  SETTABLEKS R28 R27 K37 ["TextSize"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K112 [".Large"]
  DUPTABLE R28 K313 [{"TextSize"}]
  LOADK R29 K58 ["$GlobalSpace100"]
  SETTABLEKS R29 R28 K37 ["TextSize"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K59 [".Role-Tooltip"]
  DUPTABLE R15 K104 [{"Size"}]
  GETIMPORT R16 K86 [UDim2.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  LOADN R20 26
  CALL R16 4 1
  SETTABLEKS R16 R15 K81 ["Size"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K60 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R19 K319 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R20 K321 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R20 R19 K317 ["ApplyStrokeMode"]
  LOADK R20 K61 ["$SemanticColorDivider"]
  SETTABLEKS R20 R19 K283 ["Color"]
  LOADK R20 K51 ["$BorderMedium"]
  SETTABLEKS R20 R19 K318 ["Thickness"]
  LOADK R20 K107 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R20 R19 K155 ["Transparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K46 ["BorderMode"]
  DUPTABLE R20 K104 [{"Size"}]
  GETIMPORT R21 K86 [UDim2.new]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  LOADN R25 26
  CALL R21 4 1
  SETTABLEKS R21 R20 K81 ["Size"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K180 [".State-Disabled"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K66 ["> #Scroller"]
  DUPTABLE R20 K259 [{"ImageTransparency"}]
  LOADK R21 K4 [require]
  SETTABLEKS R21 R20 K258 ["ImageTransparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K67 ["AutomaticCanvasSize"]
  DUPTABLE R21 K63 [{"TextColor3"}]
  LOADK R22 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R22 R21 K36 ["TextColor3"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K5 ["Packages"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K68 ["ScrollingDirection"]
  DUPTABLE R21 K264 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R22 K185 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R22 R21 K24 ["BackgroundTransparency"]
  LOADK R22 K184 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R22 R21 K30 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K69 ["ScrollBarThickness"]
  DUPTABLE R22 K264 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R23 K10 ["Src"]
  SETTABLEKS R23 R22 K24 ["BackgroundTransparency"]
  LOADK R23 K11 ["SharedFlags"]
  SETTABLEKS R23 R22 K30 ["BackgroundColor3"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K70 ["HorizontalScrollBarInset"]
  DUPTABLE R18 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K71 [{"AutomaticCanvasSize", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  SETTABLEKS R19 R18 K30 ["BackgroundColor3"]
  LOADK R19 K25 ["BorderSizePixel"]
  SETTABLEKS R19 R18 K24 ["BackgroundTransparency"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K5 ["Packages"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K68 ["ScrollingDirection"]
  DUPTABLE R26 K264 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R27 K72 ["AutomaticSize"]
  SETTABLEKS R27 R26 K24 ["BackgroundTransparency"]
  LOADK R27 K73 ["XY"]
  SETTABLEKS R27 R26 K30 ["BackgroundColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K69 ["ScrollBarThickness"]
  DUPTABLE R27 K264 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R28 K74 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K24 ["BackgroundTransparency"]
  LOADK R28 K75 ["X"]
  SETTABLEKS R28 R27 K30 ["BackgroundColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K67 ["AutomaticCanvasSize"]
  DUPTABLE R23 K63 [{"TextColor3"}]
  LOADK R24 K64 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R24 R23 K36 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K76 [Enum.ScrollingDirection.X]
  DUPTABLE R11 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R12 K27 ["$BackgroundTransparent"]
  SETTABLEKS R12 R11 K24 ["BackgroundTransparency"]
  LOADK R12 K28 ["$BorderNone"]
  SETTABLEKS R12 R11 K25 ["BorderSizePixel"]
  NEWTABLE R12 0 9
  MOVE R13 R2
  LOADK R14 K77 ["ScrollBarInset"]
  DUPTABLE R15 K334 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K242 ["AutoButtonColor"]
  LOADK R16 K27 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K24 ["BackgroundTransparency"]
  LOADK R16 K28 ["$BorderNone"]
  SETTABLEKS R16 R15 K25 ["BorderSizePixel"]
  LOADN R16 1
  SETTABLEKS R16 R15 K129 ["LayoutOrder"]
  LOADK R16 K245 [""]
  SETTABLEKS R16 R15 K243 ["Text"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K79 [Enum.ScrollBarInset.None]
  DUPTABLE R16 K336 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R17 K27 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K24 ["BackgroundTransparency"]
  LOADK R17 K28 ["$BorderNone"]
  SETTABLEKS R17 R16 K25 ["BorderSizePixel"]
  LOADK R17 K39 ["$FontWeight400"]
  SETTABLEKS R17 R16 K18 ["Font"]
  LOADN R17 2
  SETTABLEKS R17 R16 K129 ["LayoutOrder"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K81 ["Size"]
  DUPTABLE R17 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R18 K27 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K24 ["BackgroundTransparency"]
  LOADK R18 K28 ["$BorderNone"]
  SETTABLEKS R18 R17 K25 ["BorderSizePixel"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K82 ["ZIndex"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K77 ["ScrollBarInset"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K119 ["::UIListLayout"]
  DUPTABLE R26 K339 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R27 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K120 ["FillDirection"]
  LOADK R27 K58 ["$GlobalSpace100"]
  SETTABLEKS R27 R26 K121 ["Padding"]
  GETIMPORT R27 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K122 ["SortOrder"]
  GETIMPORT R27 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R27 R26 K163 ["VerticalAlignment"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K81 ["Size"]
  DUPTABLE R23 K104 [{"Size"}]
  LOADK R24 K255 ["$IconSmall"]
  SETTABLEKS R24 R23 K81 ["Size"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K110 [".Small"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K79 [Enum.ScrollBarInset.None]
  DUPTABLE R23 K313 [{"TextSize"}]
  LOADK R24 K172 ["$FontSize150"]
  SETTABLEKS R24 R23 K37 ["TextSize"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K111 [".Medium"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K79 [Enum.ScrollBarInset.None]
  DUPTABLE R24 K313 [{"TextSize"}]
  LOADK R25 K56 ["PaddingBottom"]
  SETTABLEKS R25 R24 K37 ["TextSize"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K112 [".Large"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K77 ["ScrollBarInset"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K119 ["::UIListLayout"]
  DUPTABLE R29 K339 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R30 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K120 ["FillDirection"]
  LOADK R30 K115 ["$GlobalSpace150"]
  SETTABLEKS R30 R29 K121 ["Padding"]
  GETIMPORT R30 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K122 ["SortOrder"]
  GETIMPORT R30 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R30 R29 K163 ["VerticalAlignment"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K81 ["Size"]
  DUPTABLE R26 K104 [{"Size"}]
  LOADK R27 K253 ["$IconLarge"]
  SETTABLEKS R27 R26 K81 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K79 [Enum.ScrollBarInset.None]
  DUPTABLE R27 K313 [{"TextSize"}]
  LOADK R28 K58 ["$GlobalSpace100"]
  SETTABLEKS R28 R27 K37 ["TextSize"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K5 ["Packages"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 5
  MOVE R24 R2
  LOADK R25 K81 ["Size"]
  DUPTABLE R26 K340 [{"Image"}]
  LOADK R27 K85 ["new"]
  SETTABLEKS R27 R26 K273 ["Image"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K86 [UDim2.new]
  DUPTABLE R27 K340 [{"Image"}]
  LOADK R28 K87 ["> #RightGradient"]
  SETTABLEKS R28 R27 K273 ["Image"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K88 ["AnchorPoint"]
  DUPTABLE R28 K340 [{"Image"}]
  LOADK R29 K89 ["Position"]
  SETTABLEKS R29 R28 K273 ["Image"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K90 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  DUPTABLE R29 K340 [{"Image"}]
  LOADK R30 K91 ["Vector2"]
  SETTABLEKS R30 R29 K273 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K79 [Enum.ScrollBarInset.None]
  DUPTABLE R30 K63 [{"TextColor3"}]
  LOADK R31 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K36 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K180 [".State-Disabled"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 4
  MOVE R25 R2
  LOADK R26 K81 ["Size"]
  DUPTABLE R27 K340 [{"Image"}]
  LOADK R28 K92 [Vector2.new]
  SETTABLEKS R28 R27 K273 ["Image"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K88 ["AnchorPoint"]
  DUPTABLE R28 K340 [{"Image"}]
  LOADK R29 K93 [".TooltipTextBounds"]
  SETTABLEKS R29 R28 K273 ["Image"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K90 [{"AnchorPoint", "Size", "Position", "ZIndex"}]
  DUPTABLE R29 K340 [{"Image"}]
  LOADK R30 K94 ["TextWrapped"]
  SETTABLEKS R30 R29 K273 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K79 [Enum.ScrollBarInset.None]
  DUPTABLE R30 K63 [{"TextColor3"}]
  LOADK R31 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R31 R30 K36 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K95 ["TextXAlignment"]
  DUPTABLE R12 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R13 K27 ["$BackgroundTransparent"]
  SETTABLEKS R13 R12 K24 ["BackgroundTransparency"]
  LOADK R13 K28 ["$BorderNone"]
  SETTABLEKS R13 R12 K25 ["BorderSizePixel"]
  NEWTABLE R13 0 9
  MOVE R14 R2
  LOADK R15 K96 [{"TextWrapped", "TextXAlignment"}]
  DUPTABLE R16 K334 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K242 ["AutoButtonColor"]
  LOADK R17 K27 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K24 ["BackgroundTransparency"]
  LOADK R17 K28 ["$BorderNone"]
  SETTABLEKS R17 R16 K25 ["BorderSizePixel"]
  LOADN R17 1
  SETTABLEKS R17 R16 K129 ["LayoutOrder"]
  LOADK R17 K245 [""]
  SETTABLEKS R17 R16 K243 ["Text"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K97 ["Left"]
  DUPTABLE R17 K336 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R18 K27 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K24 ["BackgroundTransparency"]
  LOADK R18 K28 ["$BorderNone"]
  SETTABLEKS R18 R17 K25 ["BorderSizePixel"]
  LOADK R18 K39 ["$FontWeight400"]
  SETTABLEKS R18 R17 K18 ["Font"]
  LOADN R18 2
  SETTABLEKS R18 R17 K129 ["LayoutOrder"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K98 [Enum.TextXAlignment.Left]
  DUPTABLE R18 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R19 K27 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K24 ["BackgroundTransparency"]
  LOADK R19 K28 ["$BorderNone"]
  SETTABLEKS R19 R18 K25 ["BorderSizePixel"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K82 ["ZIndex"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K96 [{"TextWrapped", "TextXAlignment"}]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K119 ["::UIListLayout"]
  DUPTABLE R27 K339 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R28 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K120 ["FillDirection"]
  LOADK R28 K58 ["$GlobalSpace100"]
  SETTABLEKS R28 R27 K121 ["Padding"]
  GETIMPORT R28 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K122 ["SortOrder"]
  GETIMPORT R28 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K163 ["VerticalAlignment"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K98 [Enum.TextXAlignment.Left]
  DUPTABLE R24 K104 [{"Size"}]
  LOADK R25 K255 ["$IconSmall"]
  SETTABLEKS R25 R24 K81 ["Size"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K110 [".Small"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K97 ["Left"]
  DUPTABLE R24 K313 [{"TextSize"}]
  LOADK R25 K172 ["$FontSize150"]
  SETTABLEKS R25 R24 K37 ["TextSize"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K111 [".Medium"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K97 ["Left"]
  DUPTABLE R25 K313 [{"TextSize"}]
  LOADK R26 K56 ["PaddingBottom"]
  SETTABLEKS R26 R25 K37 ["TextSize"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K112 [".Large"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 3
  MOVE R24 R2
  LOADK R25 K96 [{"TextWrapped", "TextXAlignment"}]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K119 ["::UIListLayout"]
  DUPTABLE R30 K339 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R31 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K120 ["FillDirection"]
  LOADK R31 K115 ["$GlobalSpace150"]
  SETTABLEKS R31 R30 K121 ["Padding"]
  GETIMPORT R31 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K122 ["SortOrder"]
  GETIMPORT R31 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R31 R30 K163 ["VerticalAlignment"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K98 [Enum.TextXAlignment.Left]
  DUPTABLE R27 K104 [{"Size"}]
  LOADK R28 K253 ["$IconLarge"]
  SETTABLEKS R28 R27 K81 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K97 ["Left"]
  DUPTABLE R28 K313 [{"TextSize"}]
  LOADK R29 K58 ["$GlobalSpace100"]
  SETTABLEKS R29 R28 K37 ["TextSize"]
  CALL R26 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K5 ["Packages"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 4
  MOVE R25 R2
  LOADK R26 K98 [Enum.TextXAlignment.Left]
  DUPTABLE R27 K340 [{"Image"}]
  LOADK R28 K99 ["::UISizeConstraint"]
  SETTABLEKS R28 R27 K273 ["Image"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K100 ["MaxSize"]
  DUPTABLE R28 K340 [{"Image"}]
  LOADK R29 K101 [{"MaxSize"}]
  SETTABLEKS R29 R28 K273 ["Image"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K102 [∞]
  DUPTABLE R29 K340 [{"Image"}]
  LOADK R30 K103 [".Role-DividerH"]
  SETTABLEKS R30 R29 K273 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K97 ["Left"]
  DUPTABLE R30 K63 [{"TextColor3"}]
  LOADK R31 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K36 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K180 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 3
  MOVE R26 R2
  LOADK R27 K98 [Enum.TextXAlignment.Left]
  DUPTABLE R28 K340 [{"Image"}]
  LOADK R29 K104 [{"Size"}]
  SETTABLEKS R29 R28 K273 ["Image"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K102 [∞]
  DUPTABLE R29 K340 [{"Image"}]
  LOADK R30 K105 ["> Frame"]
  SETTABLEKS R30 R29 K273 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K97 ["Left"]
  DUPTABLE R30 K63 [{"TextColor3"}]
  LOADK R31 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R31 R30 K36 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K106 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R13 K363 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R14 0
  SETTABLEKS R14 R13 K242 ["AutoButtonColor"]
  LOADK R14 K28 ["$BorderNone"]
  SETTABLEKS R14 R13 K25 ["BorderSizePixel"]
  LOADK R14 K27 ["$BackgroundTransparent"]
  SETTABLEKS R14 R13 K24 ["BackgroundTransparency"]
  LOADK R14 K245 [""]
  SETTABLEKS R14 R13 K243 ["Text"]
  NEWTABLE R14 0 8
  MOVE R15 R2
  LOADK R16 K108 [".Role-DividerV"]
  DUPTABLE R17 K365 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R18 K28 ["$BorderNone"]
  SETTABLEKS R18 R17 K25 ["BorderSizePixel"]
  LOADK R18 K27 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K24 ["BackgroundTransparency"]
  LOADN R18 1
  SETTABLEKS R18 R17 K129 ["LayoutOrder"]
  LOADK R18 K253 ["$IconLarge"]
  SETTABLEKS R18 R17 K81 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K110 [".Small"]
  DUPTABLE R18 K367 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R19 K92 [Vector2.new]
  LOADN R20 1
  LOADK R21 K43 ["$FontWeight700"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K88 ["AnchorPoint"]
  GETIMPORT R19 K118 [UDim2.fromScale]
  LOADN R20 1
  LOADK R21 K43 ["$FontWeight700"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K89 ["Position"]
  LOADK R19 K28 ["$BorderNone"]
  SETTABLEKS R19 R18 K25 ["BorderSizePixel"]
  LOADN R19 1
  SETTABLEKS R19 R18 K24 ["BackgroundTransparency"]
  LOADK R19 K112 [".Large"]
  SETTABLEKS R19 R18 K273 ["Image"]
  LOADN R19 3
  SETTABLEKS R19 R18 K129 ["LayoutOrder"]
  LOADK R19 K255 ["$IconSmall"]
  SETTABLEKS R19 R18 K81 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K113 [".RibbonButton-Divider"]
  DUPTABLE R19 K269 [{"LayoutOrder", "Size"}]
  LOADN R20 3
  SETTABLEKS R20 R19 K129 ["LayoutOrder"]
  LOADK R20 K255 ["$IconSmall"]
  SETTABLEKS R20 R19 K81 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K62 [">> TextLabel"]
  DUPTABLE R20 K370 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K24 ["BackgroundTransparency"]
  LOADK R21 K39 ["$FontWeight400"]
  SETTABLEKS R21 R20 K18 ["Font"]
  LOADK R21 K172 ["$FontSize150"]
  SETTABLEKS R21 R20 K37 ["TextSize"]
  LOADN R21 2
  SETTABLEKS R21 R20 K129 ["LayoutOrder"]
  LOADK R21 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K36 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K110 [".Small"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K108 [".Role-DividerV"]
  DUPTABLE R25 K104 [{"Size"}]
  LOADK R26 K255 ["$IconSmall"]
  SETTABLEKS R26 R25 K81 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K62 [">> TextLabel"]
  DUPTABLE R26 K313 [{"TextSize"}]
  LOADK R27 K41 ["$FontSize100"]
  SETTABLEKS R27 R26 K37 ["TextSize"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K115 ["$GlobalSpace150"]
  DUPTABLE R22 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K116 [".X-RowSpaceBetween"]
  SETTABLEKS R23 R22 K30 ["BackgroundColor3"]
  LOADK R23 K117 ["fromScale"]
  SETTABLEKS R23 R22 K24 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K175 [".State-Selected"]
  DUPTABLE R23 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K177 ["$SemanticColorStatesSelected"]
  SETTABLEKS R24 R23 K30 ["BackgroundColor3"]
  LOADK R24 K178 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R24 R23 K24 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K180 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K108 [".Role-DividerV"]
  DUPTABLE R28 K259 [{"ImageTransparency"}]
  LOADK R29 K4 [require]
  SETTABLEKS R29 R28 K258 ["ImageTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K62 [">> TextLabel"]
  DUPTABLE R29 K63 [{"TextColor3"}]
  LOADK R30 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R30 R29 K36 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K118 [UDim2.fromScale]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K52 ["::UIPadding"]
  DUPTABLE R18 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R19 K138 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K53 ["PaddingLeft"]
  LOADK R19 K138 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K54 ["PaddingRight"]
  LOADK R19 K145 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K55 ["PaddingTop"]
  LOADK R19 K145 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K56 ["PaddingBottom"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K119 ["::UIListLayout"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 6
  MOVE R17 R2
  LOADK R18 K60 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R19 K376 [{"Thickness"}]
  LOADK R20 K28 ["$BorderNone"]
  SETTABLEKS R20 R19 K318 ["Thickness"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K121 ["Padding"]
  DUPTABLE R20 K378 [{"TextSize", "TextXAlignment"}]
  LOADK R21 K172 ["$FontSize150"]
  SETTABLEKS R21 R20 K37 ["TextSize"]
  GETIMPORT R21 K98 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K95 ["TextXAlignment"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K52 ["::UIPadding"]
  DUPTABLE R24 K114 [{"PaddingLeft", "PaddingRight"}]
  LOADK R25 K138 ["$GlobalSpace50"]
  SETTABLEKS R25 R24 K53 ["PaddingLeft"]
  LOADK R25 K145 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K54 ["PaddingRight"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K5 ["Packages"]
  DUPTABLE R21 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K123 ["HorizontalFlex"]
  SETTABLEKS R22 R21 K30 ["BackgroundColor3"]
  LOADK R22 K124 ["ItemLineAlignment"]
  SETTABLEKS R22 R21 K24 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K121 ["Padding"]
  DUPTABLE R25 K63 [{"TextColor3"}]
  LOADK R26 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R26 R25 K36 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K125 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K60 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R26 K382 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R27 K321 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R27 R26 K317 ["ApplyStrokeMode"]
  LOADK R27 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K283 ["Color"]
  LOADK R27 K51 ["$BorderMedium"]
  SETTABLEKS R27 R26 K318 ["Thickness"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K121 ["Padding"]
  DUPTABLE R27 K63 [{"TextColor3"}]
  LOADK R28 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K36 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K128 ["$GlobalSpace200"]
  DUPTABLE R23 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K129 ["LayoutOrder"]
  SETTABLEKS R24 R23 K30 ["BackgroundColor3"]
  LOADK R24 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K24 ["BackgroundTransparency"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K121 ["Padding"]
  DUPTABLE R27 K63 [{"TextColor3"}]
  LOADK R28 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K36 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K180 [".State-Disabled"]
  DUPTABLE R24 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K123 ["HorizontalFlex"]
  SETTABLEKS R25 R24 K30 ["BackgroundColor3"]
  LOADK R25 K124 ["ItemLineAlignment"]
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K121 ["Padding"]
  DUPTABLE R28 K63 [{"TextColor3"}]
  LOADK R29 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R29 R28 K36 ["TextColor3"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K131 ["UIFlexAlignment"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 3
  MOVE R18 R2
  LOADK R19 K14 [game]
  DUPTABLE R20 K104 [{"Size"}]
  GETIMPORT R21 K86 [UDim2.new]
  LOADN R22 0
  LOADN R23 16
  LOADN R24 0
  LOADN R25 8
  CALL R21 4 1
  SETTABLEKS R21 R20 K81 ["Size"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K132 ["SpaceBetween"]
  DUPTABLE R24 K104 [{"Size"}]
  GETIMPORT R25 K86 [UDim2.new]
  LOADN R26 0
  LOADN R27 16
  LOADN R28 0
  LOADN R29 8
  CALL R25 4 1
  SETTABLEKS R25 R24 K81 ["Size"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K5 ["Packages"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K133 [Enum.UIFlexAlignment.SpaceBetween]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 3
  MOVE R27 R2
  LOADK R28 K134 ["Center"]
  DUPTABLE R29 K340 [{"Image"}]
  LOADK R30 K135 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R30 R29 K273 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K136 [".X-RowSpace50"]
  DUPTABLE R30 K340 [{"Image"}]
  LOADK R31 K137 [{"FillDirection", "Padding", "SortOrder"}]
  SETTABLEKS R31 R30 K273 ["Image"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K138 ["$GlobalSpace50"]
  DUPTABLE R31 K340 [{"Image"}]
  LOADK R32 K139 [".X-RowSpace100"]
  SETTABLEKS R32 R31 K273 ["Image"]
  CALL R29 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K140 [".X-RowSpace150"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K134 ["Center"]
  DUPTABLE R30 K340 [{"Image"}]
  LOADK R31 K141 [".X-RowSpace200"]
  SETTABLEKS R31 R30 K273 ["Image"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K136 [".X-RowSpace50"]
  DUPTABLE R31 K340 [{"Image"}]
  LOADK R32 K142 [".X-ColumnSpace25"]
  SETTABLEKS R32 R31 K273 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K138 ["$GlobalSpace50"]
  DUPTABLE R32 K340 [{"Image"}]
  LOADK R33 K143 ["Vertical"]
  SETTABLEKS R33 R32 K273 ["Image"]
  CALL R30 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K180 [".State-Disabled"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K133 [Enum.UIFlexAlignment.SpaceBetween]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K144 [Enum.FillDirection.Vertical]
  DUPTABLE R30 K340 [{"Image"}]
  JUMPIFNOT R4 [+2]
  LOADK R31 K139 [".X-RowSpace100"]
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K273 ["Image"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K140 [".X-RowSpace150"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K144 [Enum.FillDirection.Vertical]
  DUPTABLE R31 K340 [{"Image"}]
  JUMPIFNOT R4 [+2]
  LOADK R32 K143 ["Vertical"]
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K273 ["Image"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K145 ["$GlobalSpace25"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K180 [".State-Disabled"]
  DUPTABLE R21 K259 [{"ImageTransparency"}]
  JUMPIFNOT R4 [+2]
  LOADK R22 K4 [require]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K258 ["ImageTransparency"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K146 [".X-ColumnSpace50"]
  DUPTABLE R18 K280 [{"BackgroundTransparency"}]
  LOADK R19 K27 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K24 ["BackgroundTransparency"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K147 [".X-ColumnSpace100"]
  DUPTABLE R22 K215 [{"CornerRadius"}]
  LOADK R23 K220 ["$GlobalRadiusMedium"]
  SETTABLEKS R23 R22 K214 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K148 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R23 K319 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R24 K321 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K317 ["ApplyStrokeMode"]
  LOADK R24 K61 ["$SemanticColorDivider"]
  SETTABLEKS R24 R23 K283 ["Color"]
  LOADK R24 K51 ["$BorderMedium"]
  SETTABLEKS R24 R23 K318 ["Thickness"]
  LOADK R24 K107 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R24 R23 K155 ["Transparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K149 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R24 K280 [{"BackgroundTransparency"}]
  LOADK R25 K27 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  NEWTABLE R25 0 3
  MOVE R26 R2
  LOADK R27 K147 [".X-ColumnSpace100"]
  DUPTABLE R28 K215 [{"CornerRadius"}]
  LOADK R29 K220 ["$GlobalRadiusMedium"]
  SETTABLEKS R29 R28 K214 ["CornerRadius"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K150 [{"PaddingLeft"}]
  DUPTABLE R29 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R30 K27 ["$BackgroundTransparent"]
  SETTABLEKS R30 R29 K24 ["BackgroundTransparency"]
  LOADK R30 K28 ["$BorderNone"]
  SETTABLEKS R30 R29 K25 ["BorderSizePixel"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K7 ["Styling"]
  DUPTABLE R33 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R34 K184 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R34 R33 K30 ["BackgroundColor3"]
  LOADK R34 K185 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R34 R33 K24 ["BackgroundTransparency"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K151 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R34 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R35 K11 ["SharedFlags"]
  SETTABLEKS R35 R34 K30 ["BackgroundColor3"]
  LOADK R35 K10 ["Src"]
  SETTABLEKS R35 R34 K24 ["BackgroundTransparency"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K152 [{"PaddingRight"}]
  DUPTABLE R30 K409 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R31 K172 ["$FontSize150"]
  SETTABLEKS R31 R30 K37 ["TextSize"]
  LOADB R31 0
  SETTABLEKS R31 R30 K242 ["AutoButtonColor"]
  LOADK R31 K28 ["$BorderNone"]
  SETTABLEKS R31 R30 K25 ["BorderSizePixel"]
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K52 ["::UIPadding"]
  DUPTABLE R34 K114 [{"PaddingLeft", "PaddingRight"}]
  LOADK R35 K115 ["$GlobalSpace150"]
  SETTABLEKS R35 R34 K53 ["PaddingLeft"]
  LOADK R35 K115 ["$GlobalSpace150"]
  SETTABLEKS R35 R34 K54 ["PaddingRight"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K5 ["Packages"]
  DUPTABLE R35 K410 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R36 K27 ["$BackgroundTransparent"]
  SETTABLEKS R36 R35 K24 ["BackgroundTransparency"]
  LOADK R36 K43 ["$FontWeight700"]
  SETTABLEKS R36 R35 K18 ["Font"]
  LOADK R36 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R36 R35 K36 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K175 [".State-Selected"]
  DUPTABLE R36 K176 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R37 K177 ["$SemanticColorStatesSelected"]
  SETTABLEKS R37 R36 K30 ["BackgroundColor3"]
  LOADK R37 K178 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R37 R36 K24 ["BackgroundTransparency"]
  LOADK R37 K43 ["$FontWeight700"]
  SETTABLEKS R37 R36 K18 ["Font"]
  LOADK R37 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K36 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K155 ["Transparency"]
  DUPTABLE R19 K412 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R20 K415 [Color3.fromHex]
  LOADK R21 K160 [NumberSequenceKeypoint.new]
  CALL R20 1 1
  SETTABLEKS R20 R19 K30 ["BackgroundColor3"]
  LOADK R20 K25 ["BorderSizePixel"]
  SETTABLEKS R20 R19 K24 ["BackgroundTransparency"]
  GETIMPORT R20 K86 [UDim2.new]
  LOADN R21 0
  LOADN R22 40
  LOADN R23 0
  LOADN R24 24
  CALL R20 4 1
  SETTABLEKS R20 R19 K81 ["Size"]
  NEWTABLE R20 0 6
  MOVE R21 R2
  LOADK R22 K161 [".X-FadeRight ::UIGradient"]
  DUPTABLE R23 K215 [{"CornerRadius"}]
  LOADK R24 K162 [".Role-Mezzanine ::UIListLayout"]
  SETTABLEKS R24 R23 K214 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K52 ["::UIPadding"]
  DUPTABLE R24 K419 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R25 K145 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K56 ["PaddingBottom"]
  LOADK R25 K145 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K53 ["PaddingLeft"]
  LOADK R25 K145 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K54 ["PaddingRight"]
  LOADK R25 K145 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K55 ["PaddingTop"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K119 ["::UIListLayout"]
  DUPTABLE R25 K421 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R26 K144 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K120 ["FillDirection"]
  GETIMPORT R26 K422 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R26 R25 K420 ["HorizontalAlignment"]
  GETIMPORT R26 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K122 ["SortOrder"]
  GETIMPORT R26 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R26 R25 K163 ["VerticalAlignment"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K105 ["> Frame"]
  DUPTABLE R26 K423 [{"BackgroundColor3", "Size"}]
  LOADK R27 K168 ["$GlobalSpace75"]
  SETTABLEKS R27 R26 K30 ["BackgroundColor3"]
  GETIMPORT R27 K86 [UDim2.new]
  LOADN R28 0
  LOADN R29 20
  LOADN R30 0
  LOADN R31 20
  CALL R27 4 1
  SETTABLEKS R27 R26 K81 ["Size"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K161 [".X-FadeRight ::UIGradient"]
  DUPTABLE R30 K215 [{"CornerRadius"}]
  LOADK R31 K162 [".Role-Mezzanine ::UIListLayout"]
  SETTABLEKS R31 R30 K214 ["CornerRadius"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K175 [".State-Selected"]
  DUPTABLE R27 K425 [{"BackgroundColor3"}]
  GETIMPORT R28 K415 [Color3.fromHex]
  LOADK R29 K170 ["TextTruncate"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K30 ["BackgroundColor3"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K119 ["::UIListLayout"]
  DUPTABLE R31 K427 [{"HorizontalAlignment"}]
  GETIMPORT R32 K429 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R32 R31 K420 ["HorizontalAlignment"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K180 [".State-Disabled"]
  DUPTABLE R28 K280 [{"BackgroundTransparency"}]
  LOADK R29 K174 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R29 R28 K24 ["BackgroundTransparency"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K105 ["> Frame"]
  DUPTABLE R32 K280 [{"BackgroundTransparency"}]
  LOADK R33 K174 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R33 R32 K24 ["BackgroundTransparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K175 [".State-Selected"]
  DUPTABLE R20 K433 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R21 1
  SETTABLEKS R21 R20 K432 ["Active"]
  LOADB R21 0
  SETTABLEKS R21 R20 K242 ["AutoButtonColor"]
  GETIMPORT R21 K92 [Vector2.new]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K88 ["AnchorPoint"]
  GETIMPORT R21 K118 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K89 ["Position"]
  LOADK R21 K245 [""]
  SETTABLEKS R21 R20 K243 ["Text"]
  LOADN R21 2
  SETTABLEKS R21 R20 K82 ["ZIndex"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K178 ["$SemanticColorStatesSelectedTransparency"]
  DUPTABLE R21 K435 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R22 K92 [Vector2.new]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K88 ["AnchorPoint"]
  GETIMPORT R22 K86 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 1
  CALL R22 4 1
  SETTABLEKS R22 R21 K89 ["Position"]
  GETIMPORT R22 K86 [UDim2.new]
  LOADN R23 0
  LOADN R24 22
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K81 ["Size"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K26 [{"BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R25 K285 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R26 K437 [ColorSequence.new]
  GETIMPORT R27 K415 [Color3.fromHex]
  LOADK R28 K182 [".State-Default :hover, .State-Disabled :hover"]
  CALL R27 1 -1
  CALL R26 -1 1
  SETTABLEKS R26 R25 K283 ["Color"]
  LOADN R26 180
  SETTABLEKS R26 R25 K284 ["Rotation"]
  GETIMPORT R26 K158 [NumberSequence.new]
  NEWTABLE R27 0 3
  GETIMPORT R28 K160 [NumberSequenceKeypoint.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  GETIMPORT R29 K160 [NumberSequenceKeypoint.new]
  LOADK R30 K43 ["$FontWeight700"]
  LOADN R31 0
  CALL R29 2 1
  GETIMPORT R30 K160 [NumberSequenceKeypoint.new]
  LOADN R31 1
  LOADN R32 1
  CALL R30 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R26 1 1
  SETTABLEKS R26 R25 K155 ["Transparency"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R22 K104 [{"Size"}]
  GETIMPORT R23 K86 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 84
  CALL R23 4 1
  SETTABLEKS R23 R22 K81 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K184 ["$SemanticColorStateLayerHover"]
  DUPTABLE R23 K104 [{"Size"}]
  GETIMPORT R24 K86 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 70
  CALL R24 4 1
  SETTABLEKS R24 R23 K81 ["Size"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K185 ["$SemanticColorStateLayerHoverTransparency"]
  DUPTABLE R24 K104 [{"Size"}]
  GETIMPORT R25 K86 [UDim2.new]
  LOADN R26 1
  LOADN R27 224
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K81 ["Size"]
  CALL R22 2 1
  SETLIST R6 R7 16 [49]
  MOVE R7 R2
  LOADK R8 K186 [".State-Editing"]
  DUPTABLE R9 K443 [{"AnchorPoint", "Position"}]
  GETIMPORT R10 K92 [Vector2.new]
  LOADN R11 0
  LOADK R12 K43 ["$FontWeight700"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K88 ["AnchorPoint"]
  GETIMPORT R10 K86 [UDim2.new]
  LOADN R11 0
  LOADN R12 165
  LOADK R13 K43 ["$FontWeight700"]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K89 ["Position"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K188 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Font", "TextColor3", "TextTruncate"}]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K119 ["::UIListLayout"]
  DUPTABLE R14 K445 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R15 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K120 ["FillDirection"]
  GETIMPORT R15 K422 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K420 ["HorizontalAlignment"]
  GETIMPORT R15 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K122 ["SortOrder"]
  GETIMPORT R15 K165 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K163 ["VerticalAlignment"]
  LOADK R15 K58 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K121 ["Padding"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K246 ["> TextLabel"]
  DUPTABLE R15 K370 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R16 K27 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K24 ["BackgroundTransparency"]
  LOADK R16 K39 ["$FontWeight400"]
  SETTABLEKS R16 R15 K18 ["Font"]
  LOADK R16 K172 ["$FontSize150"]
  SETTABLEKS R16 R15 K37 ["TextSize"]
  LOADN R16 0
  SETTABLEKS R16 R15 K129 ["LayoutOrder"]
  LOADK R16 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R16 R15 K36 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K180 [".State-Disabled"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K246 ["> TextLabel"]
  DUPTABLE R20 K63 [{"TextColor3"}]
  JUMPIFNOT R4 [+2]
  LOADNIL R21
  JUMP [+1]
  LOADK R21 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R21 R20 K36 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K190 ["MinSize"]
  DUPTABLE R11 K301 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R12 0
  SETTABLEKS R12 R11 K242 ["AutoButtonColor"]
  LOADK R12 K245 [""]
  SETTABLEKS R12 R11 K243 ["Text"]
  GETIMPORT R12 K86 [UDim2.new]
  LOADN R13 0
  LOADN R14 85
  LOADN R15 0
  LOADN R16 28
  CALL R12 4 1
  SETTABLEKS R12 R11 K81 ["Size"]
  NEWTABLE R12 0 12
  MOVE R13 R2
  LOADK R14 K191 [{"MinSize", "MaxSize"}]
  DUPTABLE R15 K104 [{"Size"}]
  GETIMPORT R16 K86 [UDim2.new]
  LOADN R17 0
  LOADN R18 120
  LOADN R19 0
  LOADN R20 28
  CALL R16 4 1
  SETTABLEKS R16 R15 K81 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K119 ["::UIListLayout"]
  DUPTABLE R16 K448 [{"HorizontalFlex"}]
  GETIMPORT R17 K296 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R17 R16 K123 ["HorizontalFlex"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K52 ["::UIPadding"]
  DUPTABLE R17 K57 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R18 K58 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K53 ["PaddingLeft"]
  LOADK R18 K138 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K54 ["PaddingRight"]
  LOADK R18 K138 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K55 ["PaddingTop"]
  LOADK R18 K138 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K56 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K193 [":: UIFlexItem"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K119 ["::UIListLayout"]
  DUPTABLE R22 K448 [{"HorizontalFlex"}]
  GETIMPORT R23 K296 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R23 R22 K123 ["HorizontalFlex"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K144 [Enum.FillDirection.Vertical]
  DUPTABLE R19 K104 [{"Size"}]
  LOADK R20 K255 ["$IconSmall"]
  SETTABLEKS R20 R19 K81 ["Size"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K194 ["FlexMode"]
  DUPTABLE R23 K452 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R24 K200 [Enum.UIFlexMode.Custom]
  SETTABLEKS R24 R23 K194 ["FlexMode"]
  LOADN R24 0
  SETTABLEKS R24 R23 K451 ["ShrinkRation"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K197 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  DUPTABLE R20 K308 [{"LayoutOrder"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K129 ["LayoutOrder"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K53 ["PaddingLeft"]
  DUPTABLE R24 K308 [{"LayoutOrder"}]
  LOADN R25 3
  SETTABLEKS R25 R24 K129 ["LayoutOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K198 ["UIFlexMode"]
  DUPTABLE R21 K455 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R22 K28 ["$BorderNone"]
  SETTABLEKS R22 R21 K25 ["BorderSizePixel"]
  LOADN R22 1
  SETTABLEKS R22 R21 K24 ["BackgroundTransparency"]
  LOADK R22 K200 [Enum.UIFlexMode.Custom]
  SETTABLEKS R22 R21 K273 ["Image"]
  LOADN R22 4
  SETTABLEKS R22 R21 K129 ["LayoutOrder"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K201 [10000000000]
  DUPTABLE R25 K340 [{"Image"}]
  LOADK R26 K202 [1E-10]
  SETTABLEKS R26 R25 K273 ["Image"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K203 ["> #CollapsibleScroller"]
  DUPTABLE R22 K460 [{"Font", "TextSize", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R23 K39 ["$FontWeight400"]
  SETTABLEKS R23 R22 K18 ["Font"]
  LOADK R23 K172 ["$FontSize150"]
  SETTABLEKS R23 R22 K37 ["TextSize"]
  GETIMPORT R23 K249 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R23 R22 K170 ["TextTruncate"]
  GETIMPORT R23 K98 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K95 ["TextXAlignment"]
  LOADN R23 2
  SETTABLEKS R23 R22 K129 ["LayoutOrder"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K5 ["Packages"]
  DUPTABLE R23 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K123 ["HorizontalFlex"]
  SETTABLEKS R24 R23 K30 ["BackgroundColor3"]
  LOADK R24 K124 ["ItemLineAlignment"]
  SETTABLEKS R24 R23 K24 ["BackgroundTransparency"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K203 ["> #CollapsibleScroller"]
  DUPTABLE R27 K63 [{"TextColor3"}]
  LOADK R28 K40 ["$SemanticColorContentMuted"]
  SETTABLEKS R28 R27 K36 ["TextColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K197 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  DUPTABLE R28 K259 [{"ImageTransparency"}]
  LOADK R29 K205 ["> #More"]
  SETTABLEKS R29 R28 K258 ["ImageTransparency"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K206 ["Visible"]
  DUPTABLE R24 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K129 ["LayoutOrder"]
  SETTABLEKS R25 R24 K30 ["BackgroundColor3"]
  LOADK R25 K130 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K203 ["> #CollapsibleScroller"]
  DUPTABLE R28 K63 [{"TextColor3"}]
  LOADK R29 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K36 ["TextColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K197 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  DUPTABLE R29 K259 [{"ImageTransparency"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K258 ["ImageTransparency"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K125 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 3
  MOVE R27 R2
  LOADK R28 K60 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R29 K382 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R30 K321 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R30 R29 K317 ["ApplyStrokeMode"]
  LOADK R30 K127 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K283 ["Color"]
  LOADK R30 K51 ["$BorderMedium"]
  SETTABLEKS R30 R29 K318 ["Thickness"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K203 ["> #CollapsibleScroller"]
  DUPTABLE R30 K63 [{"TextColor3"}]
  LOADK R31 K179 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K36 ["TextColor3"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K197 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  DUPTABLE R31 K259 [{"ImageTransparency"}]
  LOADN R32 0
  SETTABLEKS R32 R31 K258 ["ImageTransparency"]
  CALL R29 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K180 [".State-Disabled"]
  DUPTABLE R26 K183 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K123 ["HorizontalFlex"]
  SETTABLEKS R27 R26 K30 ["BackgroundColor3"]
  LOADK R27 K124 ["ItemLineAlignment"]
  SETTABLEKS R27 R26 K24 ["BackgroundTransparency"]
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K203 ["> #CollapsibleScroller"]
  DUPTABLE R30 K63 [{"TextColor3"}]
  LOADK R31 K181 ["$SemanticColorContentDisabled"]
  SETTABLEKS R31 R30 K36 ["TextColor3"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K197 [{"FlexMode", "GrowRatio", "ShrinkRatio"}]
  DUPTABLE R31 K259 [{"ImageTransparency"}]
  LOADK R32 K4 [require]
  SETTABLEKS R32 R31 K258 ["ImageTransparency"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K207 [{"Visible"}]
  DUPTABLE R32 K259 [{"ImageTransparency"}]
  JUMPIFNOT R4 [+2]
  LOADK R33 K4 [require]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K258 ["ImageTransparency"]
  CALL R30 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K208 [".Compact > #More"]
  DUPTABLE R12 K419 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R13 K145 ["$GlobalSpace25"]
  SETTABLEKS R13 R12 K56 ["PaddingBottom"]
  LOADK R13 K145 ["$GlobalSpace25"]
  SETTABLEKS R13 R12 K53 ["PaddingLeft"]
  LOADK R13 K145 ["$GlobalSpace25"]
  SETTABLEKS R13 R12 K54 ["PaddingRight"]
  LOADK R13 K145 ["$GlobalSpace25"]
  SETTABLEKS R13 R12 K55 ["PaddingTop"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K209 [".X-Shrink ::UIFlexItem"]
  DUPTABLE R13 K467 [{"Wraps"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K466 ["Wraps"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K212 [Enum.UIFlexMode.Shrink]
  DUPTABLE R14 K419 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R15 K115 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K56 ["PaddingBottom"]
  LOADK R15 K115 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K53 ["PaddingLeft"]
  LOADK R15 K115 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K54 ["PaddingRight"]
  LOADK R15 K115 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K55 ["PaddingTop"]
  CALL R12 2 -1
  SETLIST R6 R7 -1 [65]
  MOVE R7 R3
  LOADK R8 K213 [".X-CornerXS ::UICorner"]
  MOVE R9 R6
  DUPTABLE R10 K474 [{"SpinboxSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R11 K86 [UDim2.new]
  LOADN R12 0
  LOADN R13 90
  LOADN R14 0
  LOADN R15 28
  CALL R11 4 1
  SETTABLEKS R11 R10 K470 ["SpinboxSize"]
  GETIMPORT R11 K86 [UDim2.new]
  LOADN R12 0
  LOADN R13 61
  LOADN R14 0
  LOADN R15 28
  CALL R11 4 1
  SETTABLEKS R11 R10 K471 ["SpinboxShortSize"]
  GETIMPORT R11 K86 [UDim2.new]
  LOADN R12 0
  LOADN R13 90
  LOADN R14 0
  LOADN R15 24
  CALL R11 4 1
  SETTABLEKS R11 R10 K81 ["Size"]
  GETIMPORT R11 K86 [UDim2.new]
  LOADN R12 0
  LOADN R13 90
  LOADN R14 0
  LOADN R15 20
  CALL R11 4 1
  SETTABLEKS R11 R10 K472 ["SizeDense"]
  GETIMPORT R11 K86 [UDim2.new]
  LOADN R12 0
  LOADN R13 180
  LOADN R14 0
  LOADN R15 24
  CALL R11 4 1
  SETTABLEKS R11 R10 K473 ["SliderSize"]
  CALL R7 3 -1
  RETURN R7 -1
