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
  GETTABLEKS R5 R6 K12 ["getFFlagLuaRibbonContextMenu"]
  CALL R4 1 1
  CALL R4 0 1
  NEWTABLE R5 0 58
  MOVE R6 R2
  LOADK R7 K13 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K15 [{"FontFace"}]
  GETIMPORT R9 K19 [Enum.Font.SourceSans]
  SETTABLEKS R9 R8 K14 ["FontFace"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 [".Role-Surface"]
  DUPTABLE R9 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R10 K24 ["$BackgroundTransparent"]
  SETTABLEKS R10 R9 K21 ["BackgroundTransparency"]
  LOADK R10 K25 ["$BorderNone"]
  SETTABLEKS R10 R9 K22 ["BorderSizePixel"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K26 [".Role-Surface100"]
  DUPTABLE R10 K28 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R11 K29 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R11 R10 K27 ["BackgroundColor3"]
  LOADK R11 K25 ["$BorderNone"]
  SETTABLEKS R11 R10 K22 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 [".Text-Label"]
  DUPTABLE R11 K33 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R12 K34 ["$FontWeight400"]
  SETTABLEKS R12 R11 K17 ["Font"]
  LOADK R12 K35 ["$SemanticColorContentMuted"]
  SETTABLEKS R12 R11 K31 ["TextColor3"]
  LOADK R12 K36 ["$FontSize100"]
  SETTABLEKS R12 R11 K32 ["TextSize"]
  LOADK R12 K25 ["$BorderNone"]
  SETTABLEKS R12 R11 K22 ["BorderSizePixel"]
  LOADK R12 K24 ["$BackgroundTransparent"]
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K37 [".Text-Title"]
  DUPTABLE R12 K33 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R13 K38 ["$FontWeight700"]
  SETTABLEKS R13 R12 K17 ["Font"]
  LOADK R13 K35 ["$SemanticColorContentMuted"]
  SETTABLEKS R13 R12 K31 ["TextColor3"]
  LOADK R13 K36 ["$FontSize100"]
  SETTABLEKS R13 R12 K32 ["TextSize"]
  LOADK R13 K25 ["$BorderNone"]
  SETTABLEKS R13 R12 K22 ["BorderSizePixel"]
  LOADK R13 K24 ["$BackgroundTransparent"]
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K39 [".TooltipBackground"]
  DUPTABLE R13 K28 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R14 K40 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R14 R13 K27 ["BackgroundColor3"]
  LOADK R14 K25 ["$BorderNone"]
  SETTABLEKS R14 R13 K22 ["BorderSizePixel"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K41 [">> TextLabel"]
  DUPTABLE R17 K42 [{"TextColor3"}]
  LOADK R18 K43 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R18 R17 K31 ["TextColor3"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K44 [".Role-DividerH"]
  DUPTABLE R14 K46 [{"Size"}]
  GETIMPORT R15 K49 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K45 ["Size"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K50 ["> Frame"]
  DUPTABLE R18 K51 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R19 K52 ["$SemanticColorDivider"]
  SETTABLEKS R19 R18 K27 ["BackgroundColor3"]
  LOADK R19 K53 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R19 R18 K21 ["BackgroundTransparency"]
  LOADK R19 K25 ["$BorderNone"]
  SETTABLEKS R19 R18 K22 ["BorderSizePixel"]
  GETIMPORT R19 K49 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  CALL R19 4 1
  SETTABLEKS R19 R18 K45 ["Size"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K54 [".Role-DividerV"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 5
  MOVE R17 R2
  LOADK R18 K50 ["> Frame"]
  DUPTABLE R19 K55 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K52 ["$SemanticColorDivider"]
  SETTABLEKS R20 R19 K27 ["BackgroundColor3"]
  LOADK R20 K53 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R20 R19 K21 ["BackgroundTransparency"]
  LOADK R20 K25 ["$BorderNone"]
  SETTABLEKS R20 R19 K22 ["BorderSizePixel"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K56 [".Small"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K50 ["> Frame"]
  DUPTABLE R24 K46 [{"Size"}]
  GETIMPORT R25 K49 [UDim2.new]
  LOADN R26 0
  LOADN R27 1
  LOADN R28 0
  LOADN R29 28
  CALL R25 4 1
  SETTABLEKS R25 R24 K45 ["Size"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K57 [".Medium"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K50 ["> Frame"]
  DUPTABLE R25 K46 [{"Size"}]
  GETIMPORT R26 K49 [UDim2.new]
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  LOADN R30 48
  CALL R26 4 1
  SETTABLEKS R26 R25 K45 ["Size"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K58 [".Large"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K50 ["> Frame"]
  DUPTABLE R26 K46 [{"Size"}]
  GETIMPORT R27 K49 [UDim2.new]
  LOADN R28 0
  LOADN R29 1
  LOADN R30 0
  LOADN R31 64
  CALL R27 4 1
  SETTABLEKS R27 R26 K45 ["Size"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K59 [".RibbonButton-Divider"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K60 ["::UIPadding"]
  DUPTABLE R27 K63 [{"PaddingLeft", "PaddingRight"}]
  LOADK R28 K64 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K61 ["PaddingLeft"]
  LOADK R28 K64 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K62 ["PaddingRight"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K65 [".X-RowSpace50"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K66 ["::UIListLayout"]
  DUPTABLE R20 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K67 ["FillDirection"]
  LOADK R21 K73 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K68 ["Padding"]
  GETIMPORT R21 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K69 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K76 [".X-RowSpace100"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K66 ["::UIListLayout"]
  DUPTABLE R21 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K67 ["FillDirection"]
  LOADK R22 K77 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K68 ["Padding"]
  GETIMPORT R22 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K69 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K78 [".X-RowSpace150"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K66 ["::UIListLayout"]
  DUPTABLE R22 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K67 ["FillDirection"]
  LOADK R23 K64 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K68 ["Padding"]
  GETIMPORT R23 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K69 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K79 [".X-RowSpace200"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K66 ["::UIListLayout"]
  DUPTABLE R23 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K67 ["FillDirection"]
  LOADK R24 K80 ["$GlobalSpace200"]
  SETTABLEKS R24 R23 K68 ["Padding"]
  GETIMPORT R24 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K69 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K81 [".X-ColumnSpace25"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K66 ["::UIListLayout"]
  DUPTABLE R24 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K83 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K67 ["FillDirection"]
  LOADK R25 K84 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K68 ["Padding"]
  GETIMPORT R25 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K69 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K85 [".X-ColumnSpace50"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K66 ["::UIListLayout"]
  DUPTABLE R25 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K83 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K67 ["FillDirection"]
  LOADK R26 K73 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K68 ["Padding"]
  GETIMPORT R26 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K69 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K86 [".X-ColumnSpace100"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K66 ["::UIListLayout"]
  DUPTABLE R26 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K83 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K67 ["FillDirection"]
  LOADK R27 K77 ["$GlobalSpace100"]
  SETTABLEKS R27 R26 K68 ["Padding"]
  GETIMPORT R27 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K69 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K87 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R23 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K61 ["PaddingLeft"]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K62 ["PaddingRight"]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K88 ["PaddingTop"]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K89 ["PaddingBottom"]
  CALL R21 2 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K91 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R8 K92 [{"PaddingLeft"}]
  LOADK R9 K77 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K61 ["PaddingLeft"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K93 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R9 K94 [{"PaddingRight"}]
  LOADK R10 K77 ["$GlobalSpace100"]
  SETTABLEKS R10 R9 K62 ["PaddingRight"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K95 [".X-RowXS"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K66 ["::UIListLayout"]
  DUPTABLE R14 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K67 ["FillDirection"]
  LOADK R15 K84 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K68 ["Padding"]
  GETIMPORT R15 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K69 ["SortOrder"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K96 [".Component-RibbonTab"]
  DUPTABLE R11 K97 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  LOADK R12 K24 ["$BackgroundTransparent"]
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  LOADK R12 K34 ["$FontWeight400"]
  SETTABLEKS R12 R11 K17 ["Font"]
  GETIMPORT R12 K49 [UDim2.new]
  LOADN R13 0
  LOADN R14 80
  LOADN R15 0
  LOADN R16 28
  CALL R12 4 1
  SETTABLEKS R12 R11 K45 ["Size"]
  LOADK R12 K35 ["$SemanticColorContentMuted"]
  SETTABLEKS R12 R11 K31 ["TextColor3"]
  LOADK R12 K98 ["$FontSize150"]
  SETTABLEKS R12 R11 K32 ["TextSize"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K99 [".State-Selected"]
  DUPTABLE R15 K100 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R16 K101 ["$SemanticColorStatesSelected"]
  SETTABLEKS R16 R15 K27 ["BackgroundColor3"]
  LOADK R16 K102 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R16 R15 K21 ["BackgroundTransparency"]
  LOADK R16 K38 ["$FontWeight700"]
  SETTABLEKS R16 R15 K17 ["Font"]
  LOADK R16 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R16 R15 K31 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K104 [".State-Disabled"]
  DUPTABLE R16 K42 [{"TextColor3"}]
  LOADK R17 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R17 R16 K31 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K106 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R17 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K108 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R18 R17 K27 ["BackgroundColor3"]
  LOADK R18 K109 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R18 R17 K21 ["BackgroundTransparency"]
  CALL R15 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K110 [".Component-RibbonTabs"]
  DUPTABLE R12 K118 [{"AnchorPoint", "AutomaticCanvasSize", "AutomaticSize", "Position", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R13 K120 [Vector2.new]
  LOADK R14 K121 [0.5]
  LOADK R15 K121 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K111 ["AnchorPoint"]
  GETIMPORT R13 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K112 ["AutomaticCanvasSize"]
  GETIMPORT R13 K123 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K113 ["AutomaticSize"]
  GETIMPORT R13 K125 [UDim2.fromScale]
  LOADK R14 K121 [0.5]
  LOADK R15 K121 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K114 ["Position"]
  GETIMPORT R13 K127 [Enum.ScrollingDirection.X]
  SETTABLEKS R13 R12 K115 ["ScrollingDirection"]
  LOADN R13 0
  SETTABLEKS R13 R12 K116 ["ScrollBarThickness"]
  GETIMPORT R13 K130 [Enum.ScrollBarInset.None]
  SETTABLEKS R13 R12 K117 ["HorizontalScrollBarInset"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K57 [".Medium"]
  DUPTABLE R16 K131 [{"AnchorPoint", "Position"}]
  GETIMPORT R17 K120 [Vector2.new]
  LOADN R18 1
  LOADK R19 K121 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K111 ["AnchorPoint"]
  GETIMPORT R17 K49 [UDim2.new]
  LOADN R18 1
  JUMPIFNOT R4 [+2]
  LOADN R19 122
  JUMP [+1]
  LOADN R19 242
  LOADK R20 K121 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K114 ["Position"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K56 [".Small"]
  DUPTABLE R17 K132 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R18 K120 [Vector2.new]
  LOADN R19 0
  LOADK R20 K121 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K111 ["AnchorPoint"]
  GETIMPORT R18 K133 [Enum.AutomaticSize.None]
  SETTABLEKS R18 R17 K113 ["AutomaticSize"]
  GETIMPORT R18 K49 [UDim2.new]
  LOADN R19 0
  LOADN R20 160
  LOADK R21 K121 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K114 ["Position"]
  GETIMPORT R18 K49 [UDim2.new]
  LOADN R19 1
  JUMPIFNOT R4 [+2]
  LOADN R20 218
  JUMP [+1]
  LOADN R20 82
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K45 ["Size"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K134 [".X-CornerXS ::UICorner"]
  DUPTABLE R13 K136 [{"CornerRadius"}]
  LOADK R14 K137 ["$GlobalRadiusXSmall"]
  SETTABLEKS R14 R13 K135 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K138 [".X-CornerS ::UICorner"]
  DUPTABLE R14 K136 [{"CornerRadius"}]
  LOADK R15 K139 ["$GlobalRadiusSmall"]
  SETTABLEKS R15 R14 K135 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K140 [".X-CornerM ::UICorner"]
  DUPTABLE R15 K136 [{"CornerRadius"}]
  LOADK R16 K141 ["$GlobalRadiusMedium"]
  SETTABLEKS R16 R15 K135 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K142 [".X-PadMezz :: UIPadding"]
  DUPTABLE R16 K92 [{"PaddingLeft"}]
  GETIMPORT R17 K144 [UDim.new]
  LOADN R18 0
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K61 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K145 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R17 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K144 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["PaddingLeft"]
  GETIMPORT R18 K144 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K62 ["PaddingRight"]
  LOADK R18 K77 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K88 ["PaddingTop"]
  LOADK R18 K77 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K89 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K146 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R18 K92 [{"PaddingLeft"}]
  LOADK R19 K77 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K61 ["PaddingLeft"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K147 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R19 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K84 ["$GlobalSpace25"]
  SETTABLEKS R20 R19 K61 ["PaddingLeft"]
  LOADK R20 K148 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K62 ["PaddingRight"]
  LOADK R20 K149 ["$GlobalSpace350"]
  SETTABLEKS R20 R19 K88 ["PaddingTop"]
  LOADK R20 K148 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K89 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K150 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R20 K151 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K84 ["$GlobalSpace25"]
  SETTABLEKS R21 R20 K62 ["PaddingRight"]
  LOADK R21 K152 ["$GlobalSpace250"]
  SETTABLEKS R21 R20 K88 ["PaddingTop"]
  LOADK R21 K73 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K89 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K153 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R21 K92 [{"PaddingLeft"}]
  LOADK R22 K148 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K61 ["PaddingLeft"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K154 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R22 K155 [{"PaddingTop", "PaddingBottom"}]
  LOADK R23 K73 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K88 ["PaddingTop"]
  LOADK R23 K73 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K89 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K156 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R23 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K61 ["PaddingLeft"]
  LOADK R24 K77 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K62 ["PaddingRight"]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K88 ["PaddingTop"]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K89 ["PaddingBottom"]
  CALL R21 2 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K157 [".X-PadTabMenu ::UIPadding"]
  DUPTABLE R8 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R9 K77 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K61 ["PaddingLeft"]
  LOADK R9 K77 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K62 ["PaddingRight"]
  LOADK R9 K77 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K88 ["PaddingTop"]
  LOADK R9 K77 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K89 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K158 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R9 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R10 K148 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K61 ["PaddingLeft"]
  LOADK R10 K148 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K62 ["PaddingRight"]
  LOADK R10 K148 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K88 ["PaddingTop"]
  LOADK R10 K148 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K89 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K159 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R10 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R11 K77 ["$GlobalSpace100"]
  SETTABLEKS R11 R10 K61 ["PaddingLeft"]
  LOADK R11 K77 ["$GlobalSpace100"]
  SETTABLEKS R11 R10 K62 ["PaddingRight"]
  LOADK R11 K73 ["$GlobalSpace50"]
  SETTABLEKS R11 R10 K88 ["PaddingTop"]
  LOADK R11 K73 ["$GlobalSpace50"]
  SETTABLEKS R11 R10 K89 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K160 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R11 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R12 K148 ["$GlobalSpace75"]
  SETTABLEKS R12 R11 K61 ["PaddingLeft"]
  LOADK R12 K148 ["$GlobalSpace75"]
  SETTABLEKS R12 R11 K62 ["PaddingRight"]
  LOADK R12 K73 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K88 ["PaddingTop"]
  LOADK R12 K73 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K89 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K161 [".X-RowSplitButton"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K66 ["::UIListLayout"]
  DUPTABLE R16 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K67 ["FillDirection"]
  LOADK R17 K84 ["$GlobalSpace25"]
  SETTABLEKS R17 R16 K68 ["Padding"]
  GETIMPORT R17 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K69 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K162 [".X-RowSplitButtonSmall"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K66 ["::UIListLayout"]
  DUPTABLE R17 K163 [{"FillDirection", "SortOrder"}]
  GETIMPORT R18 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K67 ["FillDirection"]
  GETIMPORT R18 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K69 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K164 [".X-RowSpinbox"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K66 ["::UIListLayout"]
  DUPTABLE R18 K70 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K67 ["FillDirection"]
  LOADK R19 K73 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K68 ["Padding"]
  GETIMPORT R19 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K69 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K165 [".X-PadSpinBox ::UIPadding"]
  DUPTABLE R15 K92 [{"PaddingLeft"}]
  LOADK R16 K77 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K61 ["PaddingLeft"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K166 [".Component-RibbonButton"]
  DUPTABLE R16 K169 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K167 ["AutoButtonColor"]
  LOADK R17 K24 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K21 ["BackgroundTransparency"]
  LOADK R17 K25 ["$BorderNone"]
  SETTABLEKS R17 R16 K22 ["BorderSizePixel"]
  LOADK R17 K170 [""]
  SETTABLEKS R17 R16 K168 ["Text"]
  NEWTABLE R17 0 7
  MOVE R18 R2
  LOADK R19 K171 ["> TextLabel"]
  DUPTABLE R20 K172 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize"}]
  LOADK R21 K24 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  LOADK R21 K34 ["$FontWeight400"]
  SETTABLEKS R21 R20 K17 ["Font"]
  LOADN R21 2
  SETTABLEKS R21 R20 K74 ["LayoutOrder"]
  LOADK R21 K35 ["$SemanticColorContentMuted"]
  SETTABLEKS R21 R20 K31 ["TextColor3"]
  LOADK R21 K36 ["$FontSize100"]
  SETTABLEKS R21 R20 K32 ["TextSize"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K173 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R21 K174 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R22 K24 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K21 ["BackgroundTransparency"]
  LOADK R22 K25 ["$BorderNone"]
  SETTABLEKS R22 R21 K22 ["BorderSizePixel"]
  LOADN R22 0
  SETTABLEKS R22 R21 K74 ["LayoutOrder"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K175 [".Icon-Large"]
  DUPTABLE R25 K46 [{"Size"}]
  LOADK R26 K176 ["$IconLarge"]
  SETTABLEKS R26 R25 K45 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K177 [".Icon-Small"]
  DUPTABLE R26 K46 [{"Size"}]
  LOADK R27 K178 ["$IconSmall"]
  SETTABLEKS R27 R26 K45 ["Size"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K104 [".State-Disabled"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K179 [">> #RibbonTool"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K180 ["> #RibbonToolButtonIcon"]
  DUPTABLE R30 K182 [{"ImageTransparency"}]
  LOADK R31 K183 ["$IconDisabled"]
  SETTABLEKS R31 R30 K181 ["ImageTransparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K171 ["> TextLabel"]
  DUPTABLE R27 K42 [{"TextColor3"}]
  LOADK R28 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R28 R27 K31 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K184 [".State-Default"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K185 [">> #RibbonTool, >> #StateLayer"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K186 [":hover"]
  DUPTABLE R31 K187 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R32 K109 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  LOADK R32 K108 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R32 R31 K27 ["BackgroundColor3"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K188 [":pressed"]
  DUPTABLE R32 K187 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R33 K189 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R33 R32 K21 ["BackgroundTransparency"]
  LOADK R33 K190 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R33 R32 K27 ["BackgroundColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K99 [".State-Selected"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K179 [">> #RibbonTool"]
  DUPTABLE R28 K187 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K102 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R29 R28 K21 ["BackgroundTransparency"]
  LOADK R29 K101 ["$SemanticColorStatesSelected"]
  SETTABLEKS R29 R28 K27 ["BackgroundColor3"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K191 [">> Frame .Component-SplitButtonDropdown"]
  DUPTABLE R25 K192 [{"LayoutOrder", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K74 ["LayoutOrder"]
  GETIMPORT R26 K49 [UDim2.new]
  LOADN R27 0
  LOADN R28 12
  LOADN R29 0
  LOADN R30 40
  CALL R26 4 1
  SETTABLEKS R26 R25 K45 ["Size"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K56 [".Small"]
  DUPTABLE R29 K46 [{"Size"}]
  GETIMPORT R30 K49 [UDim2.new]
  LOADN R31 0
  LOADN R32 6
  LOADN R33 0
  LOADN R34 28
  CALL R30 4 1
  SETTABLEKS R30 R29 K45 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K193 ["> TextButton"]
  DUPTABLE R30 K194 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R31 K144 [UDim.new]
  LOADN R32 1
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K111 ["AnchorPoint"]
  LOADB R31 0
  SETTABLEKS R31 R30 K167 ["AutoButtonColor"]
  GETIMPORT R31 K49 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K114 ["Position"]
  LOADK R31 K170 [""]
  SETTABLEKS R31 R30 K168 ["Text"]
  LOADN R31 1
  SETTABLEKS R31 R30 K32 ["TextSize"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K195 ["> ImageLabel"]
  DUPTABLE R34 K197 [{"Image", "Size"}]
  LOADK R35 K198 ["$ArrowDownAngleSmall"]
  SETTABLEKS R35 R34 K196 ["Image"]
  GETIMPORT R35 K200 [UDim2.fromOffset]
  LOADN R36 6
  LOADN R37 6
  CALL R35 2 1
  SETTABLEKS R35 R34 K45 ["Size"]
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K56 [".Small"]
  DUPTABLE R38 K46 [{"Size"}]
  GETIMPORT R39 K200 [UDim2.fromOffset]
  LOADN R40 4
  LOADN R41 4
  CALL R39 2 1
  SETTABLEKS R39 R38 K45 ["Size"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K201 ["> Frame #StateLayer"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K202 [".State-Gradient-Hover"]
  DUPTABLE R30 K203 [{"BackgroundTransparency"}]
  LOADK R31 K204 ["$BackgroundNonTransparent"]
  SETTABLEKS R31 R30 K21 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K205 ["::UIGradient"]
  DUPTABLE R34 K209 [{"Color", "Rotation", "Transparency"}]
  LOADK R35 K210 ["$SemanticColorStateLayerHoverGradient"]
  SETTABLEKS R35 R34 K206 ["Color"]
  LOADK R35 K211 ["$SemanticColorStateLayerHoverGradientRotation"]
  SETTABLEKS R35 R34 K207 ["Rotation"]
  LOADK R35 K212 ["$SemanticColorStateLayerHoverGradientTransparency"]
  SETTABLEKS R35 R34 K208 ["Transparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K213 [".State-Gradient-Pressed"]
  DUPTABLE R31 K203 [{"BackgroundTransparency"}]
  LOADK R32 K204 ["$BackgroundNonTransparent"]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K205 ["::UIGradient"]
  DUPTABLE R35 K209 [{"Color", "Rotation", "Transparency"}]
  LOADK R36 K214 ["$SemanticColorStateLayerPressGradient"]
  SETTABLEKS R36 R35 K206 ["Color"]
  LOADK R36 K215 ["$SemanticColorStateLayerPressGradientRotation"]
  SETTABLEKS R36 R35 K207 ["Rotation"]
  LOADK R36 K216 ["$SemanticColorStateLayerPressGradientTransparency"]
  SETTABLEKS R36 R35 K208 ["Transparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K217 [".Ribbon-More"]
  DUPTABLE R17 K219 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R18 K120 [Vector2.new]
  LOADN R19 1
  LOADK R20 K121 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K111 ["AnchorPoint"]
  GETIMPORT R18 K49 [UDim2.new]
  LOADN R19 1
  LOADN R20 248
  LOADK R21 K121 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K114 ["Position"]
  LOADN R18 3
  SETTABLEKS R18 R17 K218 ["ZIndex"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K220 [".Component-Button"]
  DUPTABLE R18 K221 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K167 ["AutoButtonColor"]
  LOADK R19 K170 [""]
  SETTABLEKS R19 R18 K168 ["Text"]
  GETIMPORT R19 K49 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  LOADN R23 28
  CALL R19 4 1
  SETTABLEKS R19 R18 K45 ["Size"]
  NEWTABLE R19 0 5
  MOVE R20 R2
  LOADK R21 K222 ["> #StateLayer"]
  DUPTABLE R22 K46 [{"Size"}]
  GETIMPORT R23 K49 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  LOADN R27 28
  CALL R23 4 1
  SETTABLEKS R23 R22 K45 ["Size"]
  NEWTABLE R23 0 6
  MOVE R24 R2
  LOADK R25 K66 ["::UIListLayout"]
  DUPTABLE R26 K223 [{"Padding"}]
  LOADK R27 K73 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K68 ["Padding"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K224 [".X-PadButtonSmall ::UIPadding"]
  DUPTABLE R27 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R28 K64 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K61 ["PaddingLeft"]
  LOADK R28 K64 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K62 ["PaddingRight"]
  LOADK R28 K73 ["$GlobalSpace50"]
  SETTABLEKS R28 R27 K88 ["PaddingTop"]
  LOADK R28 K73 ["$GlobalSpace50"]
  SETTABLEKS R28 R27 K89 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K225 [".X-PadButtonLarge ::UIPadding"]
  DUPTABLE R28 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R29 K152 ["$GlobalSpace250"]
  SETTABLEKS R29 R28 K61 ["PaddingLeft"]
  LOADK R29 K152 ["$GlobalSpace250"]
  SETTABLEKS R29 R28 K62 ["PaddingRight"]
  LOADK R29 K64 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K88 ["PaddingTop"]
  LOADK R29 K64 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K89 ["PaddingBottom"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K226 [".X-PadButtonMedium ::UIPadding"]
  DUPTABLE R29 K90 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R30 K80 ["$GlobalSpace200"]
  SETTABLEKS R30 R29 K61 ["PaddingLeft"]
  LOADK R30 K80 ["$GlobalSpace200"]
  SETTABLEKS R30 R29 K62 ["PaddingRight"]
  LOADK R30 K77 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K88 ["PaddingTop"]
  LOADK R30 K77 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K89 ["PaddingBottom"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K227 ["> #ButtonIcon"]
  DUPTABLE R30 K228 [{"LayoutOrder"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K74 ["LayoutOrder"]
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K175 [".Icon-Large"]
  DUPTABLE R34 K46 [{"Size"}]
  LOADK R35 K176 ["$IconLarge"]
  SETTABLEKS R35 R34 K45 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K177 [".Icon-Small"]
  DUPTABLE R35 K46 [{"Size"}]
  LOADK R36 K178 ["$IconSmall"]
  SETTABLEKS R36 R35 K45 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K229 [".Right"]
  DUPTABLE R36 K228 [{"LayoutOrder"}]
  LOADN R37 3
  SETTABLEKS R37 R36 K74 ["LayoutOrder"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K230 ["> #ButtonText"]
  DUPTABLE R31 K231 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R32 K38 ["$FontWeight700"]
  SETTABLEKS R32 R31 K17 ["Font"]
  LOADK R32 K232 ["$FontSize200"]
  SETTABLEKS R32 R31 K32 ["TextSize"]
  LOADN R32 2
  SETTABLEKS R32 R31 K74 ["LayoutOrder"]
  LOADK R32 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R32 R31 K31 ["TextColor3"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K56 [".Small"]
  DUPTABLE R35 K233 [{"TextSize"}]
  LOADK R36 K98 ["$FontSize150"]
  SETTABLEKS R36 R35 K32 ["TextSize"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K58 [".Large"]
  DUPTABLE R36 K233 [{"TextSize"}]
  LOADK R37 K234 ["$FontSize300"]
  SETTABLEKS R37 R36 K32 ["TextSize"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K235 [".Outline"]
  DUPTABLE R23 K46 [{"Size"}]
  GETIMPORT R24 K49 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  LOADN R28 26
  CALL R24 4 1
  SETTABLEKS R24 R23 K45 ["Size"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K236 ["::UIStroke"]
  DUPTABLE R27 K239 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R28 K241 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R28 R27 K237 ["ApplyStrokeMode"]
  LOADK R28 K52 ["$SemanticColorDivider"]
  SETTABLEKS R28 R27 K206 ["Color"]
  LOADK R28 K242 ["$BorderMedium"]
  SETTABLEKS R28 R27 K238 ["Thickness"]
  LOADK R28 K53 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R28 R27 K208 ["Transparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K222 ["> #StateLayer"]
  DUPTABLE R28 K46 [{"Size"}]
  GETIMPORT R29 K49 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  LOADN R33 26
  CALL R29 4 1
  SETTABLEKS R29 R28 K45 ["Size"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K104 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K243 [">> #ButtonIcon"]
  DUPTABLE R28 K182 [{"ImageTransparency"}]
  LOADK R29 K183 ["$IconDisabled"]
  SETTABLEKS R29 R28 K181 ["ImageTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K244 [">> #ButtonText"]
  DUPTABLE R29 K42 [{"TextColor3"}]
  LOADK R30 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R30 R29 K31 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K184 [".State-Default"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K245 [":hover > #StateLayer"]
  DUPTABLE R29 K187 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K109 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R30 R29 K21 ["BackgroundTransparency"]
  LOADK R30 K108 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R30 R29 K27 ["BackgroundColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K246 [":pressed > #StateLayer"]
  DUPTABLE R30 K187 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K189 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R31 R30 K21 ["BackgroundTransparency"]
  LOADK R31 K190 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R31 R30 K27 ["BackgroundColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K247 [".Primary"]
  DUPTABLE R26 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K248 ["$SemanticColorActionPrimaryFill"]
  SETTABLEKS R27 R26 K27 ["BackgroundColor3"]
  LOADK R27 K204 ["$BackgroundNonTransparent"]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K184 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K245 [":hover > #StateLayer"]
  DUPTABLE R34 K187 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K249 ["$SemanticColorStateLayerHoverTransparencyInverse"]
  SETTABLEKS R35 R34 K21 ["BackgroundTransparency"]
  LOADK R35 K250 ["$SemanticColorStateLayerHoverInverse"]
  SETTABLEKS R35 R34 K27 ["BackgroundColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K246 [":pressed > #StateLayer"]
  DUPTABLE R35 K187 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K251 ["$SemanticColorStateLayerPressTransparencyInverse"]
  SETTABLEKS R36 R35 K21 ["BackgroundTransparency"]
  LOADK R36 K252 ["$SemanticColorStateLayerPressInverse"]
  SETTABLEKS R36 R35 K27 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K244 [">> #ButtonText"]
  DUPTABLE R31 K42 [{"TextColor3"}]
  LOADK R32 K43 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R32 R31 K31 ["TextColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K253 [".Component-RibbonCheckbox"]
  DUPTABLE R19 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K24 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K21 ["BackgroundTransparency"]
  LOADK R20 K25 ["$BorderNone"]
  SETTABLEKS R20 R19 K22 ["BorderSizePixel"]
  NEWTABLE R20 0 9
  MOVE R21 R2
  LOADK R22 K254 [">> #CheckboxButton"]
  DUPTABLE R23 K255 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K167 ["AutoButtonColor"]
  LOADK R24 K24 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K21 ["BackgroundTransparency"]
  LOADK R24 K25 ["$BorderNone"]
  SETTABLEKS R24 R23 K22 ["BorderSizePixel"]
  LOADN R24 1
  SETTABLEKS R24 R23 K74 ["LayoutOrder"]
  LOADK R24 K170 [""]
  SETTABLEKS R24 R23 K168 ["Text"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K0 ["script"]
  DUPTABLE R24 K257 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R25 K24 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K21 ["BackgroundTransparency"]
  LOADK R25 K25 ["$BorderNone"]
  SETTABLEKS R25 R24 K22 ["BorderSizePixel"]
  LOADK R25 K34 ["$FontWeight400"]
  SETTABLEKS R25 R24 K17 ["Font"]
  LOADN R25 2
  SETTABLEKS R25 R24 K74 ["LayoutOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K2 ["Parent"]
  DUPTABLE R25 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R26 K24 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  LOADK R26 K25 ["$BorderNone"]
  SETTABLEKS R26 R25 K22 ["BorderSizePixel"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K3 ["require"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K254 [">> #CheckboxButton"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K66 ["::UIListLayout"]
  DUPTABLE R34 K261 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R35 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K67 ["FillDirection"]
  LOADK R35 K77 ["$GlobalSpace100"]
  SETTABLEKS R35 R34 K68 ["Padding"]
  GETIMPORT R35 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K69 ["SortOrder"]
  GETIMPORT R35 K263 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K260 ["VerticalAlignment"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K2 ["Parent"]
  DUPTABLE R31 K46 [{"Size"}]
  LOADK R32 K178 ["$IconSmall"]
  SETTABLEKS R32 R31 K45 ["Size"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K56 [".Small"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K0 ["script"]
  DUPTABLE R31 K233 [{"TextSize"}]
  LOADK R32 K98 ["$FontSize150"]
  SETTABLEKS R32 R31 K32 ["TextSize"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K57 [".Medium"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K0 ["script"]
  DUPTABLE R32 K233 [{"TextSize"}]
  LOADK R33 K232 ["$FontSize200"]
  SETTABLEKS R33 R32 K32 ["TextSize"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K58 [".Large"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K254 [">> #CheckboxButton"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K66 ["::UIListLayout"]
  DUPTABLE R37 K261 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R38 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K67 ["FillDirection"]
  LOADK R38 K64 ["$GlobalSpace150"]
  SETTABLEKS R38 R37 K68 ["Padding"]
  GETIMPORT R38 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K69 ["SortOrder"]
  GETIMPORT R38 K263 [Enum.VerticalAlignment.Center]
  SETTABLEKS R38 R37 K260 ["VerticalAlignment"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K2 ["Parent"]
  DUPTABLE R34 K46 [{"Size"}]
  LOADK R35 K176 ["$IconLarge"]
  SETTABLEKS R35 R34 K45 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K0 ["script"]
  DUPTABLE R35 K233 [{"TextSize"}]
  LOADK R36 K234 ["$FontSize300"]
  SETTABLEKS R36 R35 K32 ["TextSize"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K184 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 5
  MOVE R32 R2
  LOADK R33 K2 ["Parent"]
  DUPTABLE R34 K264 [{"Image"}]
  LOADK R35 K9 ["createStyleSheet"]
  SETTABLEKS R35 R34 K196 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K10 ["Src"]
  DUPTABLE R35 K264 [{"Image"}]
  LOADK R36 K11 ["SharedFlags"]
  SETTABLEKS R36 R35 K196 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K12 ["getFFlagLuaRibbonContextMenu"]
  DUPTABLE R36 K264 [{"Image"}]
  LOADK R37 K13 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R37 R36 K196 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K14 ["FontFace"]
  DUPTABLE R37 K264 [{"Image"}]
  LOADK R38 K15 [{"FontFace"}]
  SETTABLEKS R38 R37 K196 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K0 ["script"]
  DUPTABLE R38 K42 [{"TextColor3"}]
  LOADK R39 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R39 R38 K31 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K104 [".State-Disabled"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 4
  MOVE R33 R2
  LOADK R34 K2 ["Parent"]
  DUPTABLE R35 K264 [{"Image"}]
  LOADK R36 K16 ["Enum"]
  SETTABLEKS R36 R35 K196 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K12 ["getFFlagLuaRibbonContextMenu"]
  DUPTABLE R36 K264 [{"Image"}]
  LOADK R37 K17 ["Font"]
  SETTABLEKS R37 R36 K196 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K14 ["FontFace"]
  DUPTABLE R37 K264 [{"Image"}]
  LOADK R38 K18 ["SourceSans"]
  SETTABLEKS R38 R37 K196 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K0 ["script"]
  DUPTABLE R38 K42 [{"TextColor3"}]
  LOADK R39 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K31 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K19 [Enum.Font.SourceSans]
  DUPTABLE R20 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K24 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  LOADK R21 K25 ["$BorderNone"]
  SETTABLEKS R21 R20 K22 ["BorderSizePixel"]
  NEWTABLE R21 0 9
  MOVE R22 R2
  LOADK R23 K20 [".Role-Surface"]
  DUPTABLE R24 K255 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K167 ["AutoButtonColor"]
  LOADK R25 K24 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K21 ["BackgroundTransparency"]
  LOADK R25 K25 ["$BorderNone"]
  SETTABLEKS R25 R24 K22 ["BorderSizePixel"]
  LOADN R25 1
  SETTABLEKS R25 R24 K74 ["LayoutOrder"]
  LOADK R25 K170 [""]
  SETTABLEKS R25 R24 K168 ["Text"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K21 ["BackgroundTransparency"]
  DUPTABLE R25 K257 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R26 K24 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  LOADK R26 K25 ["$BorderNone"]
  SETTABLEKS R26 R25 K22 ["BorderSizePixel"]
  LOADK R26 K34 ["$FontWeight400"]
  SETTABLEKS R26 R25 K17 ["Font"]
  LOADN R26 2
  SETTABLEKS R26 R25 K74 ["LayoutOrder"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K22 ["BorderSizePixel"]
  DUPTABLE R26 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R27 K24 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  LOADK R27 K25 ["$BorderNone"]
  SETTABLEKS R27 R26 K22 ["BorderSizePixel"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K3 ["require"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K20 [".Role-Surface"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K66 ["::UIListLayout"]
  DUPTABLE R35 K261 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R36 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K67 ["FillDirection"]
  LOADK R36 K77 ["$GlobalSpace100"]
  SETTABLEKS R36 R35 K68 ["Padding"]
  GETIMPORT R36 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K69 ["SortOrder"]
  GETIMPORT R36 K263 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K260 ["VerticalAlignment"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K22 ["BorderSizePixel"]
  DUPTABLE R32 K46 [{"Size"}]
  LOADK R33 K178 ["$IconSmall"]
  SETTABLEKS R33 R32 K45 ["Size"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K56 [".Small"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K21 ["BackgroundTransparency"]
  DUPTABLE R32 K233 [{"TextSize"}]
  LOADK R33 K98 ["$FontSize150"]
  SETTABLEKS R33 R32 K32 ["TextSize"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K57 [".Medium"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K21 ["BackgroundTransparency"]
  DUPTABLE R33 K233 [{"TextSize"}]
  LOADK R34 K232 ["$FontSize200"]
  SETTABLEKS R34 R33 K32 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K58 [".Large"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K20 [".Role-Surface"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K66 ["::UIListLayout"]
  DUPTABLE R38 K261 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K67 ["FillDirection"]
  LOADK R39 K64 ["$GlobalSpace150"]
  SETTABLEKS R39 R38 K68 ["Padding"]
  GETIMPORT R39 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K69 ["SortOrder"]
  GETIMPORT R39 K263 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K260 ["VerticalAlignment"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K22 ["BorderSizePixel"]
  DUPTABLE R35 K46 [{"Size"}]
  LOADK R36 K176 ["$IconLarge"]
  SETTABLEKS R36 R35 K45 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K21 ["BackgroundTransparency"]
  DUPTABLE R36 K233 [{"TextSize"}]
  LOADK R37 K234 ["$FontSize300"]
  SETTABLEKS R37 R36 K32 ["TextSize"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K184 [".State-Default"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 4
  MOVE R33 R2
  LOADK R34 K22 ["BorderSizePixel"]
  DUPTABLE R35 K264 [{"Image"}]
  LOADK R36 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R36 R35 K196 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K24 ["$BackgroundTransparent"]
  DUPTABLE R36 K264 [{"Image"}]
  LOADK R37 K25 ["$BorderNone"]
  SETTABLEKS R37 R36 K196 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K26 [".Role-Surface100"]
  DUPTABLE R37 K264 [{"Image"}]
  LOADK R38 K27 ["BackgroundColor3"]
  SETTABLEKS R38 R37 K196 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K21 ["BackgroundTransparency"]
  DUPTABLE R38 K42 [{"TextColor3"}]
  LOADK R39 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R39 R38 K31 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K104 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K22 ["BorderSizePixel"]
  DUPTABLE R36 K264 [{"Image"}]
  LOADK R37 K28 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R37 R36 K196 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K26 [".Role-Surface100"]
  DUPTABLE R37 K264 [{"Image"}]
  LOADK R38 K29 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R38 R37 K196 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K21 ["BackgroundTransparency"]
  DUPTABLE R38 K42 [{"TextColor3"}]
  LOADK R39 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K31 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K30 [".Text-Label"]
  DUPTABLE R21 K287 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K167 ["AutoButtonColor"]
  LOADK R22 K25 ["$BorderNone"]
  SETTABLEKS R22 R21 K22 ["BorderSizePixel"]
  LOADK R22 K24 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K21 ["BackgroundTransparency"]
  LOADK R22 K170 [""]
  SETTABLEKS R22 R21 K168 ["Text"]
  NEWTABLE R22 0 8
  MOVE R23 R2
  LOADK R24 K32 ["TextSize"]
  DUPTABLE R25 K289 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R26 K25 ["$BorderNone"]
  SETTABLEKS R26 R25 K22 ["BorderSizePixel"]
  LOADK R26 K24 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  LOADN R26 1
  SETTABLEKS R26 R25 K74 ["LayoutOrder"]
  LOADK R26 K176 ["$IconLarge"]
  SETTABLEKS R26 R25 K45 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K34 ["$FontWeight400"]
  DUPTABLE R26 K291 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R27 K120 [Vector2.new]
  LOADN R28 1
  LOADK R29 K121 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K111 ["AnchorPoint"]
  GETIMPORT R27 K125 [UDim2.fromScale]
  LOADN R28 1
  LOADK R29 K121 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K114 ["Position"]
  LOADK R27 K25 ["$BorderNone"]
  SETTABLEKS R27 R26 K22 ["BorderSizePixel"]
  LOADN R27 1
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  LOADK R27 K36 ["$FontSize100"]
  SETTABLEKS R27 R26 K196 ["Image"]
  LOADN R27 3
  SETTABLEKS R27 R26 K74 ["LayoutOrder"]
  LOADK R27 K178 ["$IconSmall"]
  SETTABLEKS R27 R26 K45 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K37 [".Text-Title"]
  DUPTABLE R27 K192 [{"LayoutOrder", "Size"}]
  LOADN R28 3
  SETTABLEKS R28 R27 K74 ["LayoutOrder"]
  LOADK R28 K178 ["$IconSmall"]
  SETTABLEKS R28 R27 K45 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K41 [">> TextLabel"]
  DUPTABLE R28 K294 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K21 ["BackgroundTransparency"]
  LOADK R29 K34 ["$FontWeight400"]
  SETTABLEKS R29 R28 K17 ["Font"]
  LOADK R29 K98 ["$FontSize150"]
  SETTABLEKS R29 R28 K32 ["TextSize"]
  LOADN R29 2
  SETTABLEKS R29 R28 K74 ["LayoutOrder"]
  LOADK R29 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K31 ["TextColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K56 [".Small"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K32 ["TextSize"]
  DUPTABLE R33 K46 [{"Size"}]
  LOADK R34 K178 ["$IconSmall"]
  SETTABLEKS R34 R33 K45 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K41 [">> TextLabel"]
  DUPTABLE R34 K233 [{"TextSize"}]
  LOADK R35 K36 ["$FontSize100"]
  SETTABLEKS R35 R34 K32 ["TextSize"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K39 [".TooltipBackground"]
  DUPTABLE R30 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K40 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R31 R30 K27 ["BackgroundColor3"]
  LOADK R31 K41 [">> TextLabel"]
  SETTABLEKS R31 R30 K21 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K99 [".State-Selected"]
  DUPTABLE R31 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K101 ["$SemanticColorStatesSelected"]
  SETTABLEKS R32 R31 K27 ["BackgroundColor3"]
  LOADK R32 K102 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K104 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K32 ["TextSize"]
  DUPTABLE R36 K182 [{"ImageTransparency"}]
  LOADK R37 K183 ["$IconDisabled"]
  SETTABLEKS R37 R36 K181 ["ImageTransparency"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K41 [">> TextLabel"]
  DUPTABLE R37 K42 [{"TextColor3"}]
  LOADK R38 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K31 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K42 [{"TextColor3"}]
  DUPTABLE R22 K46 [{"Size"}]
  GETIMPORT R23 K49 [UDim2.new]
  LOADN R24 0
  LOADN R25 90
  LOADN R26 0
  LOADN R27 20
  CALL R23 4 1
  SETTABLEKS R23 R22 K45 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K43 ["$SemanticColorContentStandardInverse"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 6
  MOVE R25 R2
  LOADK R26 K236 ["::UIStroke"]
  DUPTABLE R27 K300 [{"Thickness"}]
  LOADK R28 K25 ["$BorderNone"]
  SETTABLEKS R28 R27 K238 ["Thickness"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K45 ["Size"]
  DUPTABLE R28 K233 [{"TextSize"}]
  LOADK R29 K98 ["$FontSize150"]
  SETTABLEKS R29 R28 K32 ["TextSize"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K184 [".State-Default"]
  DUPTABLE R29 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K46 [{"Size"}]
  SETTABLEKS R30 R29 K27 ["BackgroundColor3"]
  LOADK R30 K47 ["UDim2"]
  SETTABLEKS R30 R29 K21 ["BackgroundTransparency"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K45 ["Size"]
  DUPTABLE R33 K42 [{"TextColor3"}]
  LOADK R34 K35 ["$SemanticColorContentMuted"]
  SETTABLEKS R34 R33 K31 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K48 ["new"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K236 ["::UIStroke"]
  DUPTABLE R34 K305 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R35 K241 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R35 R34 K237 ["ApplyStrokeMode"]
  LOADK R35 K50 ["> Frame"]
  SETTABLEKS R35 R34 K206 ["Color"]
  LOADK R35 K242 ["$BorderMedium"]
  SETTABLEKS R35 R34 K238 ["Thickness"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K45 ["Size"]
  DUPTABLE R35 K42 [{"TextColor3"}]
  LOADK R36 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K31 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K51 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R31 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K52 ["$SemanticColorDivider"]
  SETTABLEKS R32 R31 K27 ["BackgroundColor3"]
  LOADK R32 K53 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R32 R31 K21 ["BackgroundTransparency"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K45 ["Size"]
  DUPTABLE R35 K42 [{"TextColor3"}]
  LOADK R36 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K31 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K54 [".Role-DividerV"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K236 ["::UIStroke"]
  DUPTABLE R40 K311 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R41 K241 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R41 R40 K237 ["ApplyStrokeMode"]
  LOADK R41 K108 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R41 R40 K206 ["Color"]
  LOADK R41 K109 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R41 R40 K208 ["Transparency"]
  LOADK R41 K242 ["$BorderMedium"]
  SETTABLEKS R41 R40 K238 ["Thickness"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K104 [".State-Disabled"]
  DUPTABLE R32 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K46 [{"Size"}]
  SETTABLEKS R33 R32 K27 ["BackgroundColor3"]
  LOADK R33 K47 ["UDim2"]
  SETTABLEKS R33 R32 K21 ["BackgroundTransparency"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K45 ["Size"]
  DUPTABLE R36 K42 [{"TextColor3"}]
  LOADK R37 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K31 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [33]
  MOVE R6 R2
  LOADK R7 K56 [".Small"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K193 ["> TextButton"]
  DUPTABLE R12 K46 [{"Size"}]
  GETIMPORT R13 K49 [UDim2.new]
  LOADN R14 0
  LOADN R15 16
  LOADN R16 0
  LOADN R17 8
  CALL R13 4 1
  SETTABLEKS R13 R12 K45 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K57 [".Medium"]
  DUPTABLE R16 K46 [{"Size"}]
  GETIMPORT R17 K49 [UDim2.new]
  LOADN R18 0
  LOADN R19 16
  LOADN R20 0
  LOADN R21 8
  CALL R17 4 1
  SETTABLEKS R17 R16 K45 ["Size"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K184 [".State-Default"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K58 [".Large"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K59 [".RibbonButton-Divider"]
  DUPTABLE R21 K264 [{"Image"}]
  LOADK R22 K60 ["::UIPadding"]
  SETTABLEKS R22 R21 K196 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K61 ["PaddingLeft"]
  DUPTABLE R22 K264 [{"Image"}]
  LOADK R23 K62 ["PaddingRight"]
  SETTABLEKS R23 R22 K196 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K63 [{"PaddingLeft", "PaddingRight"}]
  DUPTABLE R23 K264 [{"Image"}]
  LOADK R24 K64 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K196 ["Image"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K65 [".X-RowSpace50"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K59 [".RibbonButton-Divider"]
  DUPTABLE R22 K264 [{"Image"}]
  LOADK R23 K66 ["::UIListLayout"]
  SETTABLEKS R23 R22 K196 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K61 ["PaddingLeft"]
  DUPTABLE R23 K264 [{"Image"}]
  LOADK R24 K67 ["FillDirection"]
  SETTABLEKS R24 R23 K196 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K63 [{"PaddingLeft", "PaddingRight"}]
  DUPTABLE R24 K264 [{"Image"}]
  LOADK R25 K68 ["Padding"]
  SETTABLEKS R25 R24 K196 ["Image"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K69 ["SortOrder"]
  DUPTABLE R9 K203 [{"BackgroundTransparency"}]
  LOADK R10 K24 ["$BackgroundTransparent"]
  SETTABLEKS R10 R9 K21 ["BackgroundTransparency"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K70 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R13 K136 [{"CornerRadius"}]
  LOADK R14 K141 ["$GlobalRadiusMedium"]
  SETTABLEKS R14 R13 K135 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K71 ["Horizontal"]
  DUPTABLE R14 K239 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R15 K241 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K237 ["ApplyStrokeMode"]
  LOADK R15 K52 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K206 ["Color"]
  LOADK R15 K242 ["$BorderMedium"]
  SETTABLEKS R15 R14 K238 ["Thickness"]
  LOADK R15 K53 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K208 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K72 [Enum.FillDirection.Horizontal]
  DUPTABLE R15 K203 [{"BackgroundTransparency"}]
  LOADK R16 K24 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K21 ["BackgroundTransparency"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K70 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R19 K136 [{"CornerRadius"}]
  LOADK R20 K141 ["$GlobalRadiusMedium"]
  SETTABLEKS R20 R19 K135 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K73 ["$GlobalSpace50"]
  DUPTABLE R20 K23 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K24 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  LOADK R21 K25 ["$BorderNone"]
  SETTABLEKS R21 R20 K22 ["BorderSizePixel"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K186 [":hover"]
  DUPTABLE R24 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K108 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R25 R24 K27 ["BackgroundColor3"]
  LOADK R25 K109 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R25 R24 K21 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K74 ["LayoutOrder"]
  DUPTABLE R25 K107 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K190 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R26 R25 K27 ["BackgroundColor3"]
  LOADK R26 K189 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R26 R25 K21 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K75 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R21 K332 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R22 K98 ["$FontSize150"]
  SETTABLEKS R22 R21 K32 ["TextSize"]
  LOADB R22 0
  SETTABLEKS R22 R21 K167 ["AutoButtonColor"]
  LOADK R22 K25 ["$BorderNone"]
  SETTABLEKS R22 R21 K22 ["BorderSizePixel"]
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K60 ["::UIPadding"]
  DUPTABLE R25 K63 [{"PaddingLeft", "PaddingRight"}]
  LOADK R26 K64 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K61 ["PaddingLeft"]
  LOADK R26 K64 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K62 ["PaddingRight"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K184 [".State-Default"]
  DUPTABLE R26 K333 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R27 K24 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K21 ["BackgroundTransparency"]
  LOADK R27 K38 ["$FontWeight700"]
  SETTABLEKS R27 R26 K17 ["Font"]
  LOADK R27 K35 ["$SemanticColorContentMuted"]
  SETTABLEKS R27 R26 K31 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K99 [".State-Selected"]
  DUPTABLE R27 K100 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R28 K101 ["$SemanticColorStatesSelected"]
  SETTABLEKS R28 R27 K27 ["BackgroundColor3"]
  LOADK R28 K102 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R28 R27 K21 ["BackgroundTransparency"]
  LOADK R28 K38 ["$FontWeight700"]
  SETTABLEKS R28 R27 K17 ["Font"]
  LOADK R28 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K31 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K78 [".X-RowSpace150"]
  DUPTABLE R10 K335 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R11 K338 [Color3.fromHex]
  LOADK R12 K83 [Enum.FillDirection.Vertical]
  CALL R11 1 1
  SETTABLEKS R11 R10 K27 ["BackgroundColor3"]
  LOADK R11 K204 ["$BackgroundNonTransparent"]
  SETTABLEKS R11 R10 K21 ["BackgroundTransparency"]
  GETIMPORT R11 K49 [UDim2.new]
  LOADN R12 0
  LOADN R13 40
  LOADN R14 0
  LOADN R15 24
  CALL R11 4 1
  SETTABLEKS R11 R10 K45 ["Size"]
  NEWTABLE R11 0 6
  MOVE R12 R2
  LOADK R13 K84 ["$GlobalSpace25"]
  DUPTABLE R14 K136 [{"CornerRadius"}]
  LOADK R15 K85 [".X-ColumnSpace50"]
  SETTABLEKS R15 R14 K135 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K60 ["::UIPadding"]
  DUPTABLE R15 K342 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R16 K84 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K89 ["PaddingBottom"]
  LOADK R16 K84 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K61 ["PaddingLeft"]
  LOADK R16 K84 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K62 ["PaddingRight"]
  LOADK R16 K84 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K88 ["PaddingTop"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K66 ["::UIListLayout"]
  DUPTABLE R16 K344 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R17 K83 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K67 ["FillDirection"]
  GETIMPORT R17 K346 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K343 ["HorizontalAlignment"]
  GETIMPORT R17 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K69 ["SortOrder"]
  GETIMPORT R17 K263 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K260 ["VerticalAlignment"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K50 ["> Frame"]
  DUPTABLE R17 K347 [{"BackgroundColor3", "Size"}]
  LOADK R18 K92 [{"PaddingLeft"}]
  SETTABLEKS R18 R17 K27 ["BackgroundColor3"]
  GETIMPORT R18 K49 [UDim2.new]
  LOADN R19 0
  LOADN R20 20
  LOADN R21 0
  LOADN R22 20
  CALL R18 4 1
  SETTABLEKS R18 R17 K45 ["Size"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K84 ["$GlobalSpace25"]
  DUPTABLE R21 K136 [{"CornerRadius"}]
  LOADK R22 K85 [".X-ColumnSpace50"]
  SETTABLEKS R22 R21 K135 ["CornerRadius"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K99 [".State-Selected"]
  DUPTABLE R18 K349 [{"BackgroundColor3"}]
  GETIMPORT R19 K338 [Color3.fromHex]
  LOADK R20 K94 [{"PaddingRight"}]
  CALL R19 1 1
  SETTABLEKS R19 R18 K27 ["BackgroundColor3"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K66 ["::UIListLayout"]
  DUPTABLE R22 K351 [{"HorizontalAlignment"}]
  GETIMPORT R23 K353 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R23 R22 K343 ["HorizontalAlignment"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K104 [".State-Disabled"]
  DUPTABLE R19 K203 [{"BackgroundTransparency"}]
  LOADK R20 K98 ["$FontSize150"]
  SETTABLEKS R20 R19 K21 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K50 ["> Frame"]
  DUPTABLE R23 K203 [{"BackgroundTransparency"}]
  LOADK R24 K98 ["$FontSize150"]
  SETTABLEKS R24 R23 K21 ["BackgroundTransparency"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K99 [".State-Selected"]
  DUPTABLE R11 K357 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K356 ["Active"]
  LOADB R12 0
  SETTABLEKS R12 R11 K167 ["AutoButtonColor"]
  GETIMPORT R12 K120 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K111 ["AnchorPoint"]
  GETIMPORT R12 K125 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K114 ["Position"]
  LOADK R12 K170 [""]
  SETTABLEKS R12 R11 K168 ["Text"]
  LOADN R12 2
  SETTABLEKS R12 R11 K218 ["ZIndex"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K102 ["$SemanticColorStatesSelectedTransparency"]
  DUPTABLE R12 K359 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R13 K120 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K111 ["AnchorPoint"]
  GETIMPORT R13 K49 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K114 ["Position"]
  GETIMPORT R13 K49 [UDim2.new]
  LOADN R14 0
  LOADN R15 22
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K45 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K205 ["::UIGradient"]
  DUPTABLE R16 K209 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R17 K361 [ColorSequence.new]
  GETIMPORT R18 K338 [Color3.fromHex]
  LOADK R19 K106 [".State-Default :hover, .State-Disabled :hover"]
  CALL R18 1 -1
  CALL R17 -1 1
  SETTABLEKS R17 R16 K206 ["Color"]
  LOADN R17 180
  SETTABLEKS R17 R16 K207 ["Rotation"]
  GETIMPORT R17 K364 [NumberSequence.new]
  NEWTABLE R18 0 3
  GETIMPORT R19 K366 [NumberSequenceKeypoint.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  GETIMPORT R20 K366 [NumberSequenceKeypoint.new]
  LOADK R21 K121 [0.5]
  LOADN R22 0
  CALL R20 2 1
  GETIMPORT R21 K366 [NumberSequenceKeypoint.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R17 1 1
  SETTABLEKS R17 R16 K208 ["Transparency"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K111 ["AnchorPoint"]
  DUPTABLE R13 K46 [{"Size"}]
  GETIMPORT R14 K49 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 84
  CALL R14 4 1
  SETTABLEKS R14 R13 K45 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K112 ["AutomaticCanvasSize"]
  DUPTABLE R14 K46 [{"Size"}]
  GETIMPORT R15 K49 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 70
  CALL R15 4 1
  SETTABLEKS R15 R14 K45 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K113 ["AutomaticSize"]
  DUPTABLE R15 K46 [{"Size"}]
  GETIMPORT R16 K49 [UDim2.new]
  LOADN R17 1
  LOADN R18 224
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K45 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K114 ["Position"]
  DUPTABLE R16 K131 [{"AnchorPoint", "Position"}]
  GETIMPORT R17 K120 [Vector2.new]
  LOADN R18 0
  LOADK R19 K121 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K111 ["AnchorPoint"]
  GETIMPORT R17 K49 [UDim2.new]
  LOADN R18 0
  LOADN R19 165
  LOADK R20 K121 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K114 ["Position"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K115 ["ScrollingDirection"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K66 ["::UIListLayout"]
  DUPTABLE R21 K372 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R22 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K67 ["FillDirection"]
  GETIMPORT R22 K346 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K343 ["HorizontalAlignment"]
  GETIMPORT R22 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K69 ["SortOrder"]
  GETIMPORT R22 K263 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K260 ["VerticalAlignment"]
  LOADK R22 K77 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K68 ["Padding"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K171 ["> TextLabel"]
  DUPTABLE R22 K294 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R23 K24 ["$BackgroundTransparent"]
  SETTABLEKS R23 R22 K21 ["BackgroundTransparency"]
  LOADK R23 K34 ["$FontWeight400"]
  SETTABLEKS R23 R22 K17 ["Font"]
  LOADK R23 K98 ["$FontSize150"]
  SETTABLEKS R23 R22 K32 ["TextSize"]
  LOADN R23 0
  SETTABLEKS R23 R22 K74 ["LayoutOrder"]
  LOADK R23 K103 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K31 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K104 [".State-Disabled"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K171 ["> TextLabel"]
  DUPTABLE R27 K42 [{"TextColor3"}]
  LOADK R28 K105 ["$SemanticColorContentDisabled"]
  SETTABLEKS R28 R27 K31 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R5 R6 -1 [49]
  MOVE R6 R3
  LOADK R7 K117 ["HorizontalScrollBarInset"]
  MOVE R8 R5
  DUPTABLE R9 K375 [{"Size", "SizeDense"}]
  GETIMPORT R10 K49 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K45 ["Size"]
  GETIMPORT R10 K49 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K374 ["SizeDense"]
  CALL R6 3 -1
  RETURN R6 -1
