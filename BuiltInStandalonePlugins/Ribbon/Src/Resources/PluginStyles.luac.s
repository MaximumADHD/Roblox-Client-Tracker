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
  NEWTABLE R5 0 59
  MOVE R6 R2
  LOADK R7 K13 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K15 [{"Font"}]
  GETIMPORT R9 K18 [Enum.Font.SourceSans]
  SETTABLEKS R9 R8 K14 ["Font"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K19 [".Role-Surface"]
  DUPTABLE R9 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R10 K23 ["$BackgroundTransparent"]
  SETTABLEKS R10 R9 K20 ["BackgroundTransparency"]
  LOADK R10 K24 ["$BorderNone"]
  SETTABLEKS R10 R9 K21 ["BorderSizePixel"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K25 [".Role-Surface100"]
  DUPTABLE R10 K27 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R11 K28 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R11 R10 K26 ["BackgroundColor3"]
  LOADK R11 K24 ["$BorderNone"]
  SETTABLEKS R11 R10 K21 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K29 [".Text-Label"]
  DUPTABLE R11 K32 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R12 K33 ["$FontWeight400"]
  SETTABLEKS R12 R11 K14 ["Font"]
  LOADK R12 K34 ["$SemanticColorContentMuted"]
  SETTABLEKS R12 R11 K30 ["TextColor3"]
  LOADK R12 K35 ["$FontSize100"]
  SETTABLEKS R12 R11 K31 ["TextSize"]
  LOADK R12 K24 ["$BorderNone"]
  SETTABLEKS R12 R11 K21 ["BorderSizePixel"]
  LOADK R12 K23 ["$BackgroundTransparent"]
  SETTABLEKS R12 R11 K20 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K36 [".Text-Title"]
  DUPTABLE R12 K32 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R13 K37 ["$FontWeight700"]
  SETTABLEKS R13 R12 K14 ["Font"]
  LOADK R13 K34 ["$SemanticColorContentMuted"]
  SETTABLEKS R13 R12 K30 ["TextColor3"]
  LOADK R13 K35 ["$FontSize100"]
  SETTABLEKS R13 R12 K31 ["TextSize"]
  LOADK R13 K24 ["$BorderNone"]
  SETTABLEKS R13 R12 K21 ["BorderSizePixel"]
  LOADK R13 K23 ["$BackgroundTransparent"]
  SETTABLEKS R13 R12 K20 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K38 [".TooltipBackground"]
  DUPTABLE R13 K27 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R14 K39 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R14 R13 K26 ["BackgroundColor3"]
  LOADK R14 K24 ["$BorderNone"]
  SETTABLEKS R14 R13 K21 ["BorderSizePixel"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K40 [">> TextLabel"]
  DUPTABLE R17 K41 [{"TextColor3"}]
  LOADK R18 K42 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R18 R17 K30 ["TextColor3"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K43 [".Role-DividerH"]
  DUPTABLE R14 K45 [{"Size"}]
  GETIMPORT R15 K48 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K44 ["Size"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K49 ["> Frame"]
  DUPTABLE R18 K50 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R19 K51 ["$SemanticColorDivider"]
  SETTABLEKS R19 R18 K26 ["BackgroundColor3"]
  LOADK R19 K52 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R19 R18 K20 ["BackgroundTransparency"]
  LOADK R19 K24 ["$BorderNone"]
  SETTABLEKS R19 R18 K21 ["BorderSizePixel"]
  GETIMPORT R19 K48 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  CALL R19 4 1
  SETTABLEKS R19 R18 K44 ["Size"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K53 [".Role-DividerV"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 5
  MOVE R17 R2
  LOADK R18 K49 ["> Frame"]
  DUPTABLE R19 K54 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K51 ["$SemanticColorDivider"]
  SETTABLEKS R20 R19 K26 ["BackgroundColor3"]
  LOADK R20 K52 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  LOADK R20 K24 ["$BorderNone"]
  SETTABLEKS R20 R19 K21 ["BorderSizePixel"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K55 [".Small"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K49 ["> Frame"]
  DUPTABLE R24 K45 [{"Size"}]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 0
  LOADN R27 1
  LOADN R28 0
  LOADN R29 28
  CALL R25 4 1
  SETTABLEKS R25 R24 K44 ["Size"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K56 [".Medium"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K49 ["> Frame"]
  DUPTABLE R25 K45 [{"Size"}]
  GETIMPORT R26 K48 [UDim2.new]
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  LOADN R30 48
  CALL R26 4 1
  SETTABLEKS R26 R25 K44 ["Size"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K57 [".Large"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K49 ["> Frame"]
  DUPTABLE R26 K45 [{"Size"}]
  GETIMPORT R27 K48 [UDim2.new]
  LOADN R28 0
  LOADN R29 1
  LOADN R30 0
  LOADN R31 64
  CALL R27 4 1
  SETTABLEKS R27 R26 K44 ["Size"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K58 [".RibbonButton-Divider"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K59 ["::UIPadding"]
  DUPTABLE R27 K62 [{"PaddingLeft", "PaddingRight"}]
  LOADK R28 K63 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K60 ["PaddingLeft"]
  LOADK R28 K63 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K61 ["PaddingRight"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K64 [".X-RowSpace50"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K65 ["::UIListLayout"]
  DUPTABLE R20 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K66 ["FillDirection"]
  LOADK R21 K72 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K67 ["Padding"]
  GETIMPORT R21 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K68 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K75 [".X-RowSpace100"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K65 ["::UIListLayout"]
  DUPTABLE R21 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K66 ["FillDirection"]
  LOADK R22 K76 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K67 ["Padding"]
  GETIMPORT R22 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K68 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K77 [".X-RowSpace150"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K65 ["::UIListLayout"]
  DUPTABLE R22 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K66 ["FillDirection"]
  LOADK R23 K63 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K67 ["Padding"]
  GETIMPORT R23 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K68 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K78 [".X-RowSpace200"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K65 ["::UIListLayout"]
  DUPTABLE R23 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K66 ["FillDirection"]
  LOADK R24 K79 ["$GlobalSpace200"]
  SETTABLEKS R24 R23 K67 ["Padding"]
  GETIMPORT R24 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K68 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K80 [".X-ColumnSpace25"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K65 ["::UIListLayout"]
  DUPTABLE R24 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K82 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K66 ["FillDirection"]
  LOADK R25 K83 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K67 ["Padding"]
  GETIMPORT R25 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K68 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K84 [".X-ColumnSpace50"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K65 ["::UIListLayout"]
  DUPTABLE R25 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K82 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K66 ["FillDirection"]
  LOADK R26 K72 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K67 ["Padding"]
  GETIMPORT R26 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K68 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K85 [".X-ColumnSpace100"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K65 ["::UIListLayout"]
  DUPTABLE R26 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K82 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K66 ["FillDirection"]
  LOADK R27 K76 ["$GlobalSpace100"]
  SETTABLEKS R27 R26 K67 ["Padding"]
  GETIMPORT R27 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K68 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K86 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R23 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K60 ["PaddingLeft"]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K61 ["PaddingRight"]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K87 ["PaddingTop"]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K88 ["PaddingBottom"]
  CALL R21 2 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R2
  LOADK R7 K90 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R8 K91 [{"PaddingLeft"}]
  LOADK R9 K76 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K60 ["PaddingLeft"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K92 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R9 K93 [{"PaddingRight"}]
  LOADK R10 K76 ["$GlobalSpace100"]
  SETTABLEKS R10 R9 K61 ["PaddingRight"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K94 [".X-RowXS"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K65 ["::UIListLayout"]
  DUPTABLE R14 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K66 ["FillDirection"]
  LOADK R15 K83 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K67 ["Padding"]
  GETIMPORT R15 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K68 ["SortOrder"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K95 [".Component-RibbonTab"]
  DUPTABLE R11 K96 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  LOADK R12 K23 ["$BackgroundTransparent"]
  SETTABLEKS R12 R11 K20 ["BackgroundTransparency"]
  LOADK R12 K33 ["$FontWeight400"]
  SETTABLEKS R12 R11 K14 ["Font"]
  GETIMPORT R12 K48 [UDim2.new]
  LOADN R13 0
  LOADN R14 80
  LOADN R15 0
  LOADN R16 28
  CALL R12 4 1
  SETTABLEKS R12 R11 K44 ["Size"]
  LOADK R12 K34 ["$SemanticColorContentMuted"]
  SETTABLEKS R12 R11 K30 ["TextColor3"]
  LOADK R12 K97 ["$FontSize150"]
  SETTABLEKS R12 R11 K31 ["TextSize"]
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K98 [".State-Selected"]
  DUPTABLE R15 K99 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R16 K100 ["$SemanticColorStatesSelected"]
  SETTABLEKS R16 R15 K26 ["BackgroundColor3"]
  LOADK R16 K101 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R16 R15 K20 ["BackgroundTransparency"]
  LOADK R16 K37 ["$FontWeight700"]
  SETTABLEKS R16 R15 K14 ["Font"]
  LOADK R16 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R16 R15 K30 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K103 [".State-Disabled"]
  DUPTABLE R16 K41 [{"TextColor3"}]
  LOADK R17 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R17 R16 K30 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K105 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R17 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K107 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R18 R17 K26 ["BackgroundColor3"]
  LOADK R18 K108 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R18 R17 K20 ["BackgroundTransparency"]
  CALL R15 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K109 [".Component-RibbonTabs"]
  DUPTABLE R12 K117 [{"AnchorPoint", "AutomaticCanvasSize", "AutomaticSize", "Position", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R13 K119 [Vector2.new]
  LOADK R14 K120 [0.5]
  LOADK R15 K120 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K110 ["AnchorPoint"]
  GETIMPORT R13 K122 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K111 ["AutomaticCanvasSize"]
  GETIMPORT R13 K122 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K112 ["AutomaticSize"]
  GETIMPORT R13 K124 [UDim2.fromScale]
  LOADK R14 K120 [0.5]
  LOADK R15 K120 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K113 ["Position"]
  GETIMPORT R13 K126 [Enum.ScrollingDirection.X]
  SETTABLEKS R13 R12 K114 ["ScrollingDirection"]
  LOADN R13 0
  SETTABLEKS R13 R12 K115 ["ScrollBarThickness"]
  GETIMPORT R13 K129 [Enum.ScrollBarInset.None]
  SETTABLEKS R13 R12 K116 ["HorizontalScrollBarInset"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K56 [".Medium"]
  DUPTABLE R16 K130 [{"AnchorPoint", "Position"}]
  GETIMPORT R17 K119 [Vector2.new]
  LOADN R18 1
  LOADK R19 K120 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K110 ["AnchorPoint"]
  GETIMPORT R17 K48 [UDim2.new]
  LOADN R18 1
  JUMPIFNOT R4 [+2]
  LOADN R19 122
  JUMP [+1]
  LOADN R19 242
  LOADK R20 K120 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K113 ["Position"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K55 [".Small"]
  DUPTABLE R17 K131 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R18 K119 [Vector2.new]
  LOADN R19 0
  LOADK R20 K120 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K110 ["AnchorPoint"]
  GETIMPORT R18 K132 [Enum.AutomaticSize.None]
  SETTABLEKS R18 R17 K112 ["AutomaticSize"]
  GETIMPORT R18 K48 [UDim2.new]
  LOADN R19 0
  LOADN R20 160
  LOADK R21 K120 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K113 ["Position"]
  GETIMPORT R18 K48 [UDim2.new]
  LOADN R19 1
  JUMPIFNOT R4 [+2]
  LOADN R20 218
  JUMP [+1]
  LOADN R20 82
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K44 ["Size"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K133 [".X-CornerXS ::UICorner"]
  DUPTABLE R13 K135 [{"CornerRadius"}]
  LOADK R14 K136 ["$GlobalRadiusXSmall"]
  SETTABLEKS R14 R13 K134 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K137 [".X-CornerS ::UICorner"]
  DUPTABLE R14 K135 [{"CornerRadius"}]
  LOADK R15 K138 ["$GlobalRadiusSmall"]
  SETTABLEKS R15 R14 K134 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K139 [".X-CornerM ::UICorner"]
  DUPTABLE R15 K135 [{"CornerRadius"}]
  LOADK R16 K140 ["$GlobalRadiusMedium"]
  SETTABLEKS R16 R15 K134 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K141 [".X-PadMezz :: UIPadding"]
  DUPTABLE R16 K91 [{"PaddingLeft"}]
  GETIMPORT R17 K143 [UDim.new]
  LOADN R18 0
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K60 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K144 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R17 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K143 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K60 ["PaddingLeft"]
  GETIMPORT R18 K143 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["PaddingRight"]
  LOADK R18 K76 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K87 ["PaddingTop"]
  LOADK R18 K76 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K88 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K145 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R18 K91 [{"PaddingLeft"}]
  LOADK R19 K76 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K60 ["PaddingLeft"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K146 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R19 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K83 ["$GlobalSpace25"]
  SETTABLEKS R20 R19 K60 ["PaddingLeft"]
  LOADK R20 K147 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K61 ["PaddingRight"]
  LOADK R20 K148 ["$GlobalSpace350"]
  SETTABLEKS R20 R19 K87 ["PaddingTop"]
  LOADK R20 K147 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K88 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K149 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R20 K150 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K83 ["$GlobalSpace25"]
  SETTABLEKS R21 R20 K61 ["PaddingRight"]
  LOADK R21 K151 ["$GlobalSpace250"]
  SETTABLEKS R21 R20 K87 ["PaddingTop"]
  LOADK R21 K72 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K88 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K152 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R21 K91 [{"PaddingLeft"}]
  LOADK R22 K147 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K60 ["PaddingLeft"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K153 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R22 K154 [{"PaddingTop", "PaddingBottom"}]
  LOADK R23 K72 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K87 ["PaddingTop"]
  LOADK R23 K72 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K88 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K155 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R23 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K60 ["PaddingLeft"]
  LOADK R24 K76 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K61 ["PaddingRight"]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K87 ["PaddingTop"]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K88 ["PaddingBottom"]
  CALL R21 2 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R2
  LOADK R7 K156 [".X-PadTabMenu ::UIPadding"]
  DUPTABLE R8 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R9 K76 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K60 ["PaddingLeft"]
  LOADK R9 K76 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K61 ["PaddingRight"]
  LOADK R9 K76 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K87 ["PaddingTop"]
  LOADK R9 K76 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K88 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K157 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R9 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R10 K147 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K60 ["PaddingLeft"]
  LOADK R10 K147 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K61 ["PaddingRight"]
  LOADK R10 K147 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K87 ["PaddingTop"]
  LOADK R10 K147 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K88 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K158 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R10 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R11 K76 ["$GlobalSpace100"]
  SETTABLEKS R11 R10 K60 ["PaddingLeft"]
  LOADK R11 K76 ["$GlobalSpace100"]
  SETTABLEKS R11 R10 K61 ["PaddingRight"]
  LOADK R11 K72 ["$GlobalSpace50"]
  SETTABLEKS R11 R10 K87 ["PaddingTop"]
  LOADK R11 K72 ["$GlobalSpace50"]
  SETTABLEKS R11 R10 K88 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K159 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R11 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R12 K147 ["$GlobalSpace75"]
  SETTABLEKS R12 R11 K60 ["PaddingLeft"]
  LOADK R12 K147 ["$GlobalSpace75"]
  SETTABLEKS R12 R11 K61 ["PaddingRight"]
  LOADK R12 K72 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K87 ["PaddingTop"]
  LOADK R12 K72 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K88 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K160 [".X-RowSplitButton"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K65 ["::UIListLayout"]
  DUPTABLE R16 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K66 ["FillDirection"]
  LOADK R17 K83 ["$GlobalSpace25"]
  SETTABLEKS R17 R16 K67 ["Padding"]
  GETIMPORT R17 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K68 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K161 [".X-RowSplitButtonSmall"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K65 ["::UIListLayout"]
  DUPTABLE R17 K162 [{"FillDirection", "SortOrder"}]
  GETIMPORT R18 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K66 ["FillDirection"]
  GETIMPORT R18 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K68 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K163 [".X-RowSpinbox"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K65 ["::UIListLayout"]
  DUPTABLE R18 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K66 ["FillDirection"]
  LOADK R19 K72 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K67 ["Padding"]
  GETIMPORT R19 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K68 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K164 [".X-PadSpinBox ::UIPadding"]
  DUPTABLE R15 K91 [{"PaddingLeft"}]
  LOADK R16 K76 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K60 ["PaddingLeft"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K165 [".Component-RibbonButton"]
  DUPTABLE R16 K168 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K166 ["AutoButtonColor"]
  LOADK R17 K23 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K20 ["BackgroundTransparency"]
  LOADK R17 K24 ["$BorderNone"]
  SETTABLEKS R17 R16 K21 ["BorderSizePixel"]
  LOADK R17 K169 [""]
  SETTABLEKS R17 R16 K167 ["Text"]
  NEWTABLE R17 0 7
  MOVE R18 R2
  LOADK R19 K170 ["> TextLabel"]
  DUPTABLE R20 K171 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize"}]
  LOADK R21 K23 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  LOADK R21 K33 ["$FontWeight400"]
  SETTABLEKS R21 R20 K14 ["Font"]
  LOADN R21 2
  SETTABLEKS R21 R20 K73 ["LayoutOrder"]
  LOADK R21 K34 ["$SemanticColorContentMuted"]
  SETTABLEKS R21 R20 K30 ["TextColor3"]
  LOADK R21 K35 ["$FontSize100"]
  SETTABLEKS R21 R20 K31 ["TextSize"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K172 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R21 K173 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R22 K23 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K20 ["BackgroundTransparency"]
  LOADK R22 K24 ["$BorderNone"]
  SETTABLEKS R22 R21 K21 ["BorderSizePixel"]
  LOADN R22 0
  SETTABLEKS R22 R21 K73 ["LayoutOrder"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K174 [".Icon-Large"]
  DUPTABLE R25 K45 [{"Size"}]
  LOADK R26 K175 ["$IconLarge"]
  SETTABLEKS R26 R25 K44 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K176 [".Icon-Small"]
  DUPTABLE R26 K45 [{"Size"}]
  LOADK R27 K177 ["$IconSmall"]
  SETTABLEKS R27 R26 K44 ["Size"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K103 [".State-Disabled"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K178 [">> #RibbonTool"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K179 ["> #RibbonToolButtonIcon"]
  DUPTABLE R30 K181 [{"ImageTransparency"}]
  LOADK R31 K182 ["$IconDisabled"]
  SETTABLEKS R31 R30 K180 ["ImageTransparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K170 ["> TextLabel"]
  DUPTABLE R27 K41 [{"TextColor3"}]
  LOADK R28 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R28 R27 K30 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K183 [".State-Default"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K184 [">> #RibbonTool, >> #StateLayer"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K185 [":hover"]
  DUPTABLE R31 K186 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R32 K108 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R32 R31 K20 ["BackgroundTransparency"]
  LOADK R32 K107 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R32 R31 K26 ["BackgroundColor3"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K187 [":pressed"]
  DUPTABLE R32 K186 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R33 K188 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R33 R32 K20 ["BackgroundTransparency"]
  LOADK R33 K189 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R33 R32 K26 ["BackgroundColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K98 [".State-Selected"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K178 [">> #RibbonTool"]
  DUPTABLE R28 K186 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K101 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R29 R28 K20 ["BackgroundTransparency"]
  LOADK R29 K100 ["$SemanticColorStatesSelected"]
  SETTABLEKS R29 R28 K26 ["BackgroundColor3"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K190 [">> Frame .Component-SplitButtonDropdown"]
  DUPTABLE R25 K191 [{"LayoutOrder", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K73 ["LayoutOrder"]
  GETIMPORT R26 K48 [UDim2.new]
  LOADN R27 0
  LOADN R28 12
  LOADN R29 0
  LOADN R30 40
  CALL R26 4 1
  SETTABLEKS R26 R25 K44 ["Size"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K55 [".Small"]
  DUPTABLE R29 K45 [{"Size"}]
  GETIMPORT R30 K48 [UDim2.new]
  LOADN R31 0
  LOADN R32 6
  LOADN R33 0
  LOADN R34 28
  CALL R30 4 1
  SETTABLEKS R30 R29 K44 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K192 ["> TextButton"]
  DUPTABLE R30 K193 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R31 K143 [UDim.new]
  LOADN R32 1
  LOADN R33 1
  CALL R31 2 1
  SETTABLEKS R31 R30 K110 ["AnchorPoint"]
  LOADB R31 0
  SETTABLEKS R31 R30 K166 ["AutoButtonColor"]
  GETIMPORT R31 K48 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K113 ["Position"]
  LOADK R31 K169 [""]
  SETTABLEKS R31 R30 K167 ["Text"]
  LOADN R31 1
  SETTABLEKS R31 R30 K31 ["TextSize"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K194 ["> ImageLabel"]
  DUPTABLE R34 K196 [{"Image", "Size"}]
  LOADK R35 K197 ["$ArrowDownAngleSmall"]
  SETTABLEKS R35 R34 K195 ["Image"]
  GETIMPORT R35 K199 [UDim2.fromOffset]
  LOADN R36 6
  LOADN R37 6
  CALL R35 2 1
  SETTABLEKS R35 R34 K44 ["Size"]
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K55 [".Small"]
  DUPTABLE R38 K45 [{"Size"}]
  GETIMPORT R39 K199 [UDim2.fromOffset]
  LOADN R40 4
  LOADN R41 4
  CALL R39 2 1
  SETTABLEKS R39 R38 K44 ["Size"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K200 ["> Frame #StateLayer"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K201 [".State-Gradient-Hover"]
  DUPTABLE R30 K202 [{"BackgroundTransparency"}]
  LOADK R31 K203 ["$BackgroundNonTransparent"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K204 ["::UIGradient"]
  DUPTABLE R34 K208 [{"Color", "Rotation", "Transparency"}]
  LOADK R35 K209 ["$SemanticColorStateLayerHoverGradient"]
  SETTABLEKS R35 R34 K205 ["Color"]
  LOADK R35 K210 ["$SemanticColorStateLayerHoverGradientRotation"]
  SETTABLEKS R35 R34 K206 ["Rotation"]
  LOADK R35 K211 ["$SemanticColorStateLayerHoverGradientTransparency"]
  SETTABLEKS R35 R34 K207 ["Transparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K212 [".State-Gradient-Pressed"]
  DUPTABLE R31 K202 [{"BackgroundTransparency"}]
  LOADK R32 K203 ["$BackgroundNonTransparent"]
  SETTABLEKS R32 R31 K20 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K204 ["::UIGradient"]
  DUPTABLE R35 K208 [{"Color", "Rotation", "Transparency"}]
  LOADK R36 K213 ["$SemanticColorStateLayerPressGradient"]
  SETTABLEKS R36 R35 K205 ["Color"]
  LOADK R36 K214 ["$SemanticColorStateLayerPressGradientRotation"]
  SETTABLEKS R36 R35 K206 ["Rotation"]
  LOADK R36 K215 ["$SemanticColorStateLayerPressGradientTransparency"]
  SETTABLEKS R36 R35 K207 ["Transparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K216 [".Ribbon-More"]
  DUPTABLE R17 K218 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R18 K119 [Vector2.new]
  LOADN R19 1
  LOADK R20 K120 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K110 ["AnchorPoint"]
  GETIMPORT R18 K48 [UDim2.new]
  LOADN R19 1
  LOADN R20 248
  LOADK R21 K120 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K113 ["Position"]
  LOADN R18 3
  SETTABLEKS R18 R17 K217 ["ZIndex"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K219 [".Component-Button"]
  DUPTABLE R18 K220 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K166 ["AutoButtonColor"]
  LOADK R19 K169 [""]
  SETTABLEKS R19 R18 K167 ["Text"]
  GETIMPORT R19 K48 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  LOADN R23 28
  CALL R19 4 1
  SETTABLEKS R19 R18 K44 ["Size"]
  NEWTABLE R19 0 5
  MOVE R20 R2
  LOADK R21 K221 ["> #StateLayer"]
  DUPTABLE R22 K45 [{"Size"}]
  GETIMPORT R23 K48 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  LOADN R27 28
  CALL R23 4 1
  SETTABLEKS R23 R22 K44 ["Size"]
  NEWTABLE R23 0 6
  MOVE R24 R2
  LOADK R25 K65 ["::UIListLayout"]
  DUPTABLE R26 K222 [{"Padding"}]
  LOADK R27 K72 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K67 ["Padding"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K223 [".X-PadButtonSmall ::UIPadding"]
  DUPTABLE R27 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R28 K63 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K60 ["PaddingLeft"]
  LOADK R28 K63 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K61 ["PaddingRight"]
  LOADK R28 K72 ["$GlobalSpace50"]
  SETTABLEKS R28 R27 K87 ["PaddingTop"]
  LOADK R28 K72 ["$GlobalSpace50"]
  SETTABLEKS R28 R27 K88 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K224 [".X-PadButtonLarge ::UIPadding"]
  DUPTABLE R28 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R29 K151 ["$GlobalSpace250"]
  SETTABLEKS R29 R28 K60 ["PaddingLeft"]
  LOADK R29 K151 ["$GlobalSpace250"]
  SETTABLEKS R29 R28 K61 ["PaddingRight"]
  LOADK R29 K63 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K87 ["PaddingTop"]
  LOADK R29 K63 ["$GlobalSpace150"]
  SETTABLEKS R29 R28 K88 ["PaddingBottom"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K225 [".X-PadButtonMedium ::UIPadding"]
  DUPTABLE R29 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R30 K79 ["$GlobalSpace200"]
  SETTABLEKS R30 R29 K60 ["PaddingLeft"]
  LOADK R30 K79 ["$GlobalSpace200"]
  SETTABLEKS R30 R29 K61 ["PaddingRight"]
  LOADK R30 K76 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K87 ["PaddingTop"]
  LOADK R30 K76 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K88 ["PaddingBottom"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K226 ["> #ButtonIcon"]
  DUPTABLE R30 K227 [{"LayoutOrder"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K73 ["LayoutOrder"]
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K174 [".Icon-Large"]
  DUPTABLE R34 K45 [{"Size"}]
  LOADK R35 K175 ["$IconLarge"]
  SETTABLEKS R35 R34 K44 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K176 [".Icon-Small"]
  DUPTABLE R35 K45 [{"Size"}]
  LOADK R36 K177 ["$IconSmall"]
  SETTABLEKS R36 R35 K44 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K228 [".Right"]
  DUPTABLE R36 K227 [{"LayoutOrder"}]
  LOADN R37 3
  SETTABLEKS R37 R36 K73 ["LayoutOrder"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K229 ["> #ButtonText"]
  DUPTABLE R31 K230 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R32 K37 ["$FontWeight700"]
  SETTABLEKS R32 R31 K14 ["Font"]
  LOADK R32 K231 ["$FontSize200"]
  SETTABLEKS R32 R31 K31 ["TextSize"]
  LOADN R32 2
  SETTABLEKS R32 R31 K73 ["LayoutOrder"]
  LOADK R32 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R32 R31 K30 ["TextColor3"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K55 [".Small"]
  DUPTABLE R35 K232 [{"TextSize"}]
  LOADK R36 K97 ["$FontSize150"]
  SETTABLEKS R36 R35 K31 ["TextSize"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K57 [".Large"]
  DUPTABLE R36 K232 [{"TextSize"}]
  LOADK R37 K233 ["$FontSize300"]
  SETTABLEKS R37 R36 K31 ["TextSize"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K234 [".Outline"]
  DUPTABLE R23 K45 [{"Size"}]
  GETIMPORT R24 K48 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  LOADN R28 26
  CALL R24 4 1
  SETTABLEKS R24 R23 K44 ["Size"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K235 ["::UIStroke"]
  DUPTABLE R27 K238 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R28 K240 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R28 R27 K236 ["ApplyStrokeMode"]
  LOADK R28 K51 ["$SemanticColorDivider"]
  SETTABLEKS R28 R27 K205 ["Color"]
  LOADK R28 K241 ["$BorderMedium"]
  SETTABLEKS R28 R27 K237 ["Thickness"]
  LOADK R28 K52 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R28 R27 K207 ["Transparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K221 ["> #StateLayer"]
  DUPTABLE R28 K45 [{"Size"}]
  GETIMPORT R29 K48 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  LOADN R33 26
  CALL R29 4 1
  SETTABLEKS R29 R28 K44 ["Size"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K103 [".State-Disabled"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K242 [">> #ButtonIcon"]
  DUPTABLE R28 K181 [{"ImageTransparency"}]
  LOADK R29 K182 ["$IconDisabled"]
  SETTABLEKS R29 R28 K180 ["ImageTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K243 [">> #ButtonText"]
  DUPTABLE R29 K41 [{"TextColor3"}]
  LOADK R30 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R30 R29 K30 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K183 [".State-Default"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K244 [":hover > #StateLayer"]
  DUPTABLE R29 K186 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K108 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R30 R29 K20 ["BackgroundTransparency"]
  LOADK R30 K107 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R30 R29 K26 ["BackgroundColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K245 [":pressed > #StateLayer"]
  DUPTABLE R30 K186 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K188 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  LOADK R31 K189 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R31 R30 K26 ["BackgroundColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K246 [".Primary"]
  DUPTABLE R26 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K247 ["$SemanticColorActionPrimaryFill"]
  SETTABLEKS R27 R26 K26 ["BackgroundColor3"]
  LOADK R27 K203 ["$BackgroundNonTransparent"]
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K183 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K244 [":hover > #StateLayer"]
  DUPTABLE R34 K186 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K248 ["$SemanticColorStateLayerHoverTransparencyInverse"]
  SETTABLEKS R35 R34 K20 ["BackgroundTransparency"]
  LOADK R35 K249 ["$SemanticColorStateLayerHoverInverse"]
  SETTABLEKS R35 R34 K26 ["BackgroundColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K245 [":pressed > #StateLayer"]
  DUPTABLE R35 K186 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K250 ["$SemanticColorStateLayerPressTransparencyInverse"]
  SETTABLEKS R36 R35 K20 ["BackgroundTransparency"]
  LOADK R36 K251 ["$SemanticColorStateLayerPressInverse"]
  SETTABLEKS R36 R35 K26 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K243 [">> #ButtonText"]
  DUPTABLE R31 K41 [{"TextColor3"}]
  LOADK R32 K42 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R32 R31 K30 ["TextColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K252 [".Component-RibbonCheckbox"]
  DUPTABLE R19 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K23 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  LOADK R20 K24 ["$BorderNone"]
  SETTABLEKS R20 R19 K21 ["BorderSizePixel"]
  NEWTABLE R20 0 9
  MOVE R21 R2
  LOADK R22 K253 [">> #CheckboxButton"]
  DUPTABLE R23 K254 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K166 ["AutoButtonColor"]
  LOADK R24 K23 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K20 ["BackgroundTransparency"]
  LOADK R24 K24 ["$BorderNone"]
  SETTABLEKS R24 R23 K21 ["BorderSizePixel"]
  LOADN R24 1
  SETTABLEKS R24 R23 K73 ["LayoutOrder"]
  LOADK R24 K169 [""]
  SETTABLEKS R24 R23 K167 ["Text"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K255 [">> #CheckboxLabel"]
  DUPTABLE R24 K256 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R25 K23 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K20 ["BackgroundTransparency"]
  LOADK R25 K24 ["$BorderNone"]
  SETTABLEKS R25 R24 K21 ["BorderSizePixel"]
  LOADK R25 K33 ["$FontWeight400"]
  SETTABLEKS R25 R24 K14 ["Font"]
  LOADN R25 2
  SETTABLEKS R25 R24 K73 ["LayoutOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K1 [script]
  DUPTABLE R25 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R26 K23 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  LOADK R26 K24 ["$BorderNone"]
  SETTABLEKS R26 R25 K21 ["BorderSizePixel"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K2 ["Parent"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K253 [">> #CheckboxButton"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K65 ["::UIListLayout"]
  DUPTABLE R34 K260 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R35 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K66 ["FillDirection"]
  LOADK R35 K76 ["$GlobalSpace100"]
  SETTABLEKS R35 R34 K67 ["Padding"]
  GETIMPORT R35 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K68 ["SortOrder"]
  GETIMPORT R35 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K259 ["VerticalAlignment"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K1 [script]
  DUPTABLE R31 K45 [{"Size"}]
  LOADK R32 K177 ["$IconSmall"]
  SETTABLEKS R32 R31 K44 ["Size"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K55 [".Small"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K255 [">> #CheckboxLabel"]
  DUPTABLE R31 K232 [{"TextSize"}]
  LOADK R32 K97 ["$FontSize150"]
  SETTABLEKS R32 R31 K31 ["TextSize"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K56 [".Medium"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K255 [">> #CheckboxLabel"]
  DUPTABLE R32 K232 [{"TextSize"}]
  LOADK R33 K231 ["$FontSize200"]
  SETTABLEKS R33 R32 K31 ["TextSize"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K57 [".Large"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K253 [">> #CheckboxButton"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K65 ["::UIListLayout"]
  DUPTABLE R37 K260 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R38 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K66 ["FillDirection"]
  LOADK R38 K63 ["$GlobalSpace150"]
  SETTABLEKS R38 R37 K67 ["Padding"]
  GETIMPORT R38 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K68 ["SortOrder"]
  GETIMPORT R38 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R38 R37 K259 ["VerticalAlignment"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K1 [script]
  DUPTABLE R34 K45 [{"Size"}]
  LOADK R35 K175 ["$IconLarge"]
  SETTABLEKS R35 R34 K44 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K255 [">> #CheckboxLabel"]
  DUPTABLE R35 K232 [{"TextSize"}]
  LOADK R36 K233 ["$FontSize300"]
  SETTABLEKS R36 R35 K31 ["TextSize"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K183 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 5
  MOVE R32 R2
  LOADK R33 K1 [script]
  DUPTABLE R34 K263 [{"Image"}]
  LOADK R35 K8 ["createStyleRule"]
  SETTABLEKS R35 R34 K195 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K9 ["createStyleSheet"]
  DUPTABLE R35 K263 [{"Image"}]
  LOADK R36 K10 ["Src"]
  SETTABLEKS R36 R35 K195 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K11 ["SharedFlags"]
  DUPTABLE R36 K263 [{"Image"}]
  LOADK R37 K12 ["getFFlagLuaRibbonContextMenu"]
  SETTABLEKS R37 R36 K195 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K13 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R37 K263 [{"Image"}]
  LOADK R38 K14 ["Font"]
  SETTABLEKS R38 R37 K195 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K255 [">> #CheckboxLabel"]
  DUPTABLE R38 K41 [{"TextColor3"}]
  LOADK R39 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R39 R38 K30 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K103 [".State-Disabled"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 4
  MOVE R33 R2
  LOADK R34 K1 [script]
  DUPTABLE R35 K263 [{"Image"}]
  LOADK R36 K15 [{"Font"}]
  SETTABLEKS R36 R35 K195 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K11 ["SharedFlags"]
  DUPTABLE R36 K263 [{"Image"}]
  LOADK R37 K16 ["Enum"]
  SETTABLEKS R37 R36 K195 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K13 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R37 K263 [{"Image"}]
  LOADK R38 K17 ["SourceSans"]
  SETTABLEKS R38 R37 K195 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K255 [">> #CheckboxLabel"]
  DUPTABLE R38 K41 [{"TextColor3"}]
  LOADK R39 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K30 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K18 [Enum.Font.SourceSans]
  DUPTABLE R20 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K23 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  LOADK R21 K24 ["$BorderNone"]
  SETTABLEKS R21 R20 K21 ["BorderSizePixel"]
  NEWTABLE R21 0 9
  MOVE R22 R2
  LOADK R23 K19 [".Role-Surface"]
  DUPTABLE R24 K254 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K166 ["AutoButtonColor"]
  LOADK R25 K23 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K20 ["BackgroundTransparency"]
  LOADK R25 K24 ["$BorderNone"]
  SETTABLEKS R25 R24 K21 ["BorderSizePixel"]
  LOADN R25 1
  SETTABLEKS R25 R24 K73 ["LayoutOrder"]
  LOADK R25 K169 [""]
  SETTABLEKS R25 R24 K167 ["Text"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K20 ["BackgroundTransparency"]
  DUPTABLE R25 K256 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R26 K23 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  LOADK R26 K24 ["$BorderNone"]
  SETTABLEKS R26 R25 K21 ["BorderSizePixel"]
  LOADK R26 K33 ["$FontWeight400"]
  SETTABLEKS R26 R25 K14 ["Font"]
  LOADN R26 2
  SETTABLEKS R26 R25 K73 ["LayoutOrder"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K21 ["BorderSizePixel"]
  DUPTABLE R26 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R27 K23 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  LOADK R27 K24 ["$BorderNone"]
  SETTABLEKS R27 R26 K21 ["BorderSizePixel"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K2 ["Parent"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K19 [".Role-Surface"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K65 ["::UIListLayout"]
  DUPTABLE R35 K260 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R36 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K66 ["FillDirection"]
  LOADK R36 K76 ["$GlobalSpace100"]
  SETTABLEKS R36 R35 K67 ["Padding"]
  GETIMPORT R36 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K68 ["SortOrder"]
  GETIMPORT R36 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K259 ["VerticalAlignment"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K21 ["BorderSizePixel"]
  DUPTABLE R32 K45 [{"Size"}]
  LOADK R33 K177 ["$IconSmall"]
  SETTABLEKS R33 R32 K44 ["Size"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K55 [".Small"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K20 ["BackgroundTransparency"]
  DUPTABLE R32 K232 [{"TextSize"}]
  LOADK R33 K97 ["$FontSize150"]
  SETTABLEKS R33 R32 K31 ["TextSize"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K56 [".Medium"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K20 ["BackgroundTransparency"]
  DUPTABLE R33 K232 [{"TextSize"}]
  LOADK R34 K231 ["$FontSize200"]
  SETTABLEKS R34 R33 K31 ["TextSize"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K57 [".Large"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K19 [".Role-Surface"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K65 ["::UIListLayout"]
  DUPTABLE R38 K260 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K66 ["FillDirection"]
  LOADK R39 K63 ["$GlobalSpace150"]
  SETTABLEKS R39 R38 K67 ["Padding"]
  GETIMPORT R39 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K68 ["SortOrder"]
  GETIMPORT R39 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K259 ["VerticalAlignment"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K21 ["BorderSizePixel"]
  DUPTABLE R35 K45 [{"Size"}]
  LOADK R36 K175 ["$IconLarge"]
  SETTABLEKS R36 R35 K44 ["Size"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K20 ["BackgroundTransparency"]
  DUPTABLE R36 K232 [{"TextSize"}]
  LOADK R37 K233 ["$FontSize300"]
  SETTABLEKS R37 R36 K31 ["TextSize"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K183 [".State-Default"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 4
  MOVE R33 R2
  LOADK R34 K21 ["BorderSizePixel"]
  DUPTABLE R35 K263 [{"Image"}]
  LOADK R36 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R36 R35 K195 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K23 ["$BackgroundTransparent"]
  DUPTABLE R36 K263 [{"Image"}]
  LOADK R37 K24 ["$BorderNone"]
  SETTABLEKS R37 R36 K195 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K25 [".Role-Surface100"]
  DUPTABLE R37 K263 [{"Image"}]
  LOADK R38 K26 ["BackgroundColor3"]
  SETTABLEKS R38 R37 K195 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K20 ["BackgroundTransparency"]
  DUPTABLE R38 K41 [{"TextColor3"}]
  LOADK R39 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R39 R38 K30 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K103 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K21 ["BorderSizePixel"]
  DUPTABLE R36 K263 [{"Image"}]
  LOADK R37 K27 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R37 R36 K195 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K25 [".Role-Surface100"]
  DUPTABLE R37 K263 [{"Image"}]
  LOADK R38 K28 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R38 R37 K195 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K20 ["BackgroundTransparency"]
  DUPTABLE R38 K41 [{"TextColor3"}]
  LOADK R39 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R39 R38 K30 ["TextColor3"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K29 [".Text-Label"]
  DUPTABLE R21 K286 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K166 ["AutoButtonColor"]
  LOADK R22 K24 ["$BorderNone"]
  SETTABLEKS R22 R21 K21 ["BorderSizePixel"]
  LOADK R22 K23 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K20 ["BackgroundTransparency"]
  LOADK R22 K169 [""]
  SETTABLEKS R22 R21 K167 ["Text"]
  NEWTABLE R22 0 8
  MOVE R23 R2
  LOADK R24 K31 ["TextSize"]
  DUPTABLE R25 K288 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R26 K24 ["$BorderNone"]
  SETTABLEKS R26 R25 K21 ["BorderSizePixel"]
  LOADK R26 K23 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  LOADN R26 1
  SETTABLEKS R26 R25 K73 ["LayoutOrder"]
  LOADK R26 K175 ["$IconLarge"]
  SETTABLEKS R26 R25 K44 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K33 ["$FontWeight400"]
  DUPTABLE R26 K290 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R27 K119 [Vector2.new]
  LOADN R28 1
  LOADK R29 K120 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K110 ["AnchorPoint"]
  GETIMPORT R27 K124 [UDim2.fromScale]
  LOADN R28 1
  LOADK R29 K120 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K113 ["Position"]
  LOADK R27 K24 ["$BorderNone"]
  SETTABLEKS R27 R26 K21 ["BorderSizePixel"]
  LOADN R27 1
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  LOADK R27 K35 ["$FontSize100"]
  SETTABLEKS R27 R26 K195 ["Image"]
  LOADN R27 3
  SETTABLEKS R27 R26 K73 ["LayoutOrder"]
  LOADK R27 K177 ["$IconSmall"]
  SETTABLEKS R27 R26 K44 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K36 [".Text-Title"]
  DUPTABLE R27 K191 [{"LayoutOrder", "Size"}]
  LOADN R28 3
  SETTABLEKS R28 R27 K73 ["LayoutOrder"]
  LOADK R28 K177 ["$IconSmall"]
  SETTABLEKS R28 R27 K44 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K40 [">> TextLabel"]
  DUPTABLE R28 K293 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K20 ["BackgroundTransparency"]
  LOADK R29 K33 ["$FontWeight400"]
  SETTABLEKS R29 R28 K14 ["Font"]
  LOADK R29 K97 ["$FontSize150"]
  SETTABLEKS R29 R28 K31 ["TextSize"]
  LOADN R29 2
  SETTABLEKS R29 R28 K73 ["LayoutOrder"]
  LOADK R29 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K30 ["TextColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K55 [".Small"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K31 ["TextSize"]
  DUPTABLE R33 K45 [{"Size"}]
  LOADK R34 K177 ["$IconSmall"]
  SETTABLEKS R34 R33 K44 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K40 [">> TextLabel"]
  DUPTABLE R34 K232 [{"TextSize"}]
  LOADK R35 K35 ["$FontSize100"]
  SETTABLEKS R35 R34 K31 ["TextSize"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K38 [".TooltipBackground"]
  DUPTABLE R30 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K39 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R31 R30 K26 ["BackgroundColor3"]
  LOADK R31 K40 [">> TextLabel"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K98 [".State-Selected"]
  DUPTABLE R31 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K100 ["$SemanticColorStatesSelected"]
  SETTABLEKS R32 R31 K26 ["BackgroundColor3"]
  LOADK R32 K101 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R32 R31 K20 ["BackgroundTransparency"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K103 [".State-Disabled"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K31 ["TextSize"]
  DUPTABLE R36 K181 [{"ImageTransparency"}]
  LOADK R37 K182 ["$IconDisabled"]
  SETTABLEKS R37 R36 K180 ["ImageTransparency"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K40 [">> TextLabel"]
  DUPTABLE R37 K41 [{"TextColor3"}]
  LOADK R38 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K30 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K41 [{"TextColor3"}]
  DUPTABLE R22 K45 [{"Size"}]
  GETIMPORT R23 K48 [UDim2.new]
  LOADN R24 0
  LOADN R25 90
  LOADN R26 0
  LOADN R27 20
  CALL R23 4 1
  SETTABLEKS R23 R22 K44 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K42 ["$SemanticColorContentStandardInverse"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 6
  MOVE R25 R2
  LOADK R26 K235 ["::UIStroke"]
  DUPTABLE R27 K299 [{"Thickness"}]
  LOADK R28 K24 ["$BorderNone"]
  SETTABLEKS R28 R27 K237 ["Thickness"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K44 ["Size"]
  DUPTABLE R28 K232 [{"TextSize"}]
  LOADK R29 K97 ["$FontSize150"]
  SETTABLEKS R29 R28 K31 ["TextSize"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K183 [".State-Default"]
  DUPTABLE R29 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K45 [{"Size"}]
  SETTABLEKS R30 R29 K26 ["BackgroundColor3"]
  LOADK R30 K46 ["UDim2"]
  SETTABLEKS R30 R29 K20 ["BackgroundTransparency"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K44 ["Size"]
  DUPTABLE R33 K41 [{"TextColor3"}]
  LOADK R34 K34 ["$SemanticColorContentMuted"]
  SETTABLEKS R34 R33 K30 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K47 ["new"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K235 ["::UIStroke"]
  DUPTABLE R34 K304 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R35 K240 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R35 R34 K236 ["ApplyStrokeMode"]
  LOADK R35 K49 ["> Frame"]
  SETTABLEKS R35 R34 K205 ["Color"]
  LOADK R35 K241 ["$BorderMedium"]
  SETTABLEKS R35 R34 K237 ["Thickness"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K44 ["Size"]
  DUPTABLE R35 K41 [{"TextColor3"}]
  LOADK R36 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K30 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K50 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R31 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K51 ["$SemanticColorDivider"]
  SETTABLEKS R32 R31 K26 ["BackgroundColor3"]
  LOADK R32 K52 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R32 R31 K20 ["BackgroundTransparency"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K44 ["Size"]
  DUPTABLE R35 K41 [{"TextColor3"}]
  LOADK R36 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R36 R35 K30 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K53 [".Role-DividerV"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K235 ["::UIStroke"]
  DUPTABLE R40 K310 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R41 K240 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R41 R40 K236 ["ApplyStrokeMode"]
  LOADK R41 K107 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R41 R40 K205 ["Color"]
  LOADK R41 K108 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R41 R40 K207 ["Transparency"]
  LOADK R41 K241 ["$BorderMedium"]
  SETTABLEKS R41 R40 K237 ["Thickness"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K103 [".State-Disabled"]
  DUPTABLE R32 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K45 [{"Size"}]
  SETTABLEKS R33 R32 K26 ["BackgroundColor3"]
  LOADK R33 K46 ["UDim2"]
  SETTABLEKS R33 R32 K20 ["BackgroundTransparency"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K44 ["Size"]
  DUPTABLE R36 K41 [{"TextColor3"}]
  LOADK R37 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K30 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [33]
  MOVE R6 R2
  LOADK R7 K55 [".Small"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K192 ["> TextButton"]
  DUPTABLE R12 K45 [{"Size"}]
  GETIMPORT R13 K48 [UDim2.new]
  LOADN R14 0
  LOADN R15 16
  LOADN R16 0
  LOADN R17 8
  CALL R13 4 1
  SETTABLEKS R13 R12 K44 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K56 [".Medium"]
  DUPTABLE R16 K45 [{"Size"}]
  GETIMPORT R17 K48 [UDim2.new]
  LOADN R18 0
  LOADN R19 16
  LOADN R20 0
  LOADN R21 8
  CALL R17 4 1
  SETTABLEKS R17 R16 K44 ["Size"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K183 [".State-Default"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K57 [".Large"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K58 [".RibbonButton-Divider"]
  DUPTABLE R21 K263 [{"Image"}]
  LOADK R22 K59 ["::UIPadding"]
  SETTABLEKS R22 R21 K195 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K60 ["PaddingLeft"]
  DUPTABLE R22 K263 [{"Image"}]
  LOADK R23 K61 ["PaddingRight"]
  SETTABLEKS R23 R22 K195 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K62 [{"PaddingLeft", "PaddingRight"}]
  DUPTABLE R23 K263 [{"Image"}]
  LOADK R24 K63 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K195 ["Image"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K64 [".X-RowSpace50"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K58 [".RibbonButton-Divider"]
  DUPTABLE R22 K263 [{"Image"}]
  LOADK R23 K65 ["::UIListLayout"]
  SETTABLEKS R23 R22 K195 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K60 ["PaddingLeft"]
  DUPTABLE R23 K263 [{"Image"}]
  LOADK R24 K66 ["FillDirection"]
  SETTABLEKS R24 R23 K195 ["Image"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K62 [{"PaddingLeft", "PaddingRight"}]
  DUPTABLE R24 K263 [{"Image"}]
  LOADK R25 K67 ["Padding"]
  SETTABLEKS R25 R24 K195 ["Image"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K68 ["SortOrder"]
  DUPTABLE R9 K202 [{"BackgroundTransparency"}]
  LOADK R10 K23 ["$BackgroundTransparent"]
  SETTABLEKS R10 R9 K20 ["BackgroundTransparency"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K69 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R13 K135 [{"CornerRadius"}]
  LOADK R14 K140 ["$GlobalRadiusMedium"]
  SETTABLEKS R14 R13 K134 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K70 ["Horizontal"]
  DUPTABLE R14 K238 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R15 K240 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R15 R14 K236 ["ApplyStrokeMode"]
  LOADK R15 K51 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K205 ["Color"]
  LOADK R15 K241 ["$BorderMedium"]
  SETTABLEKS R15 R14 K237 ["Thickness"]
  LOADK R15 K52 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K207 ["Transparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K71 [Enum.FillDirection.Horizontal]
  DUPTABLE R15 K202 [{"BackgroundTransparency"}]
  LOADK R16 K23 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K20 ["BackgroundTransparency"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K69 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R19 K135 [{"CornerRadius"}]
  LOADK R20 K140 ["$GlobalRadiusMedium"]
  SETTABLEKS R20 R19 K134 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K72 ["$GlobalSpace50"]
  DUPTABLE R20 K22 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R21 K23 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  LOADK R21 K24 ["$BorderNone"]
  SETTABLEKS R21 R20 K21 ["BorderSizePixel"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K185 [":hover"]
  DUPTABLE R24 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K107 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R25 R24 K26 ["BackgroundColor3"]
  LOADK R25 K108 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R25 R24 K20 ["BackgroundTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K73 ["LayoutOrder"]
  DUPTABLE R25 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K189 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R26 R25 K26 ["BackgroundColor3"]
  LOADK R26 K188 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R26 R25 K20 ["BackgroundTransparency"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K74 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R21 K331 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R22 K97 ["$FontSize150"]
  SETTABLEKS R22 R21 K31 ["TextSize"]
  LOADB R22 0
  SETTABLEKS R22 R21 K166 ["AutoButtonColor"]
  LOADK R22 K24 ["$BorderNone"]
  SETTABLEKS R22 R21 K21 ["BorderSizePixel"]
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K59 ["::UIPadding"]
  DUPTABLE R25 K62 [{"PaddingLeft", "PaddingRight"}]
  LOADK R26 K63 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K60 ["PaddingLeft"]
  LOADK R26 K63 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K61 ["PaddingRight"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K183 [".State-Default"]
  DUPTABLE R26 K332 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R27 K23 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  LOADK R27 K37 ["$FontWeight700"]
  SETTABLEKS R27 R26 K14 ["Font"]
  LOADK R27 K34 ["$SemanticColorContentMuted"]
  SETTABLEKS R27 R26 K30 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K98 [".State-Selected"]
  DUPTABLE R27 K99 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R28 K100 ["$SemanticColorStatesSelected"]
  SETTABLEKS R28 R27 K26 ["BackgroundColor3"]
  LOADK R28 K101 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R28 R27 K20 ["BackgroundTransparency"]
  LOADK R28 K37 ["$FontWeight700"]
  SETTABLEKS R28 R27 K14 ["Font"]
  LOADK R28 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K30 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K77 [".X-RowSpace150"]
  DUPTABLE R10 K334 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R11 K337 [Color3.fromHex]
  LOADK R12 K82 [Enum.FillDirection.Vertical]
  CALL R11 1 1
  SETTABLEKS R11 R10 K26 ["BackgroundColor3"]
  LOADK R11 K203 ["$BackgroundNonTransparent"]
  SETTABLEKS R11 R10 K20 ["BackgroundTransparency"]
  GETIMPORT R11 K48 [UDim2.new]
  LOADN R12 0
  LOADN R13 40
  LOADN R14 0
  LOADN R15 24
  CALL R11 4 1
  SETTABLEKS R11 R10 K44 ["Size"]
  NEWTABLE R11 0 6
  MOVE R12 R2
  LOADK R13 K83 ["$GlobalSpace25"]
  DUPTABLE R14 K135 [{"CornerRadius"}]
  LOADK R15 K84 [".X-ColumnSpace50"]
  SETTABLEKS R15 R14 K134 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K59 ["::UIPadding"]
  DUPTABLE R15 K341 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R16 K83 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K88 ["PaddingBottom"]
  LOADK R16 K83 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K60 ["PaddingLeft"]
  LOADK R16 K83 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K61 ["PaddingRight"]
  LOADK R16 K83 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K87 ["PaddingTop"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K65 ["::UIListLayout"]
  DUPTABLE R16 K343 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R17 K82 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K66 ["FillDirection"]
  GETIMPORT R17 K345 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K342 ["HorizontalAlignment"]
  GETIMPORT R17 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K68 ["SortOrder"]
  GETIMPORT R17 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K259 ["VerticalAlignment"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K49 ["> Frame"]
  DUPTABLE R17 K346 [{"BackgroundColor3", "Size"}]
  LOADK R18 K91 [{"PaddingLeft"}]
  SETTABLEKS R18 R17 K26 ["BackgroundColor3"]
  GETIMPORT R18 K48 [UDim2.new]
  LOADN R19 0
  LOADN R20 20
  LOADN R21 0
  LOADN R22 20
  CALL R18 4 1
  SETTABLEKS R18 R17 K44 ["Size"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K83 ["$GlobalSpace25"]
  DUPTABLE R21 K135 [{"CornerRadius"}]
  LOADK R22 K84 [".X-ColumnSpace50"]
  SETTABLEKS R22 R21 K134 ["CornerRadius"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K98 [".State-Selected"]
  DUPTABLE R18 K348 [{"BackgroundColor3"}]
  GETIMPORT R19 K337 [Color3.fromHex]
  LOADK R20 K93 [{"PaddingRight"}]
  CALL R19 1 1
  SETTABLEKS R19 R18 K26 ["BackgroundColor3"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K65 ["::UIListLayout"]
  DUPTABLE R22 K350 [{"HorizontalAlignment"}]
  GETIMPORT R23 K352 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R23 R22 K342 ["HorizontalAlignment"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K103 [".State-Disabled"]
  DUPTABLE R19 K202 [{"BackgroundTransparency"}]
  LOADK R20 K97 ["$FontSize150"]
  SETTABLEKS R20 R19 K20 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K49 ["> Frame"]
  DUPTABLE R23 K202 [{"BackgroundTransparency"}]
  LOADK R24 K97 ["$FontSize150"]
  SETTABLEKS R24 R23 K20 ["BackgroundTransparency"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K98 [".State-Selected"]
  DUPTABLE R11 K356 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K355 ["Active"]
  LOADB R12 0
  SETTABLEKS R12 R11 K166 ["AutoButtonColor"]
  GETIMPORT R12 K119 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K110 ["AnchorPoint"]
  GETIMPORT R12 K124 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K113 ["Position"]
  LOADK R12 K169 [""]
  SETTABLEKS R12 R11 K167 ["Text"]
  LOADN R12 2
  SETTABLEKS R12 R11 K217 ["ZIndex"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K101 ["$SemanticColorStatesSelectedTransparency"]
  DUPTABLE R12 K358 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R13 K119 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K110 ["AnchorPoint"]
  GETIMPORT R13 K48 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K113 ["Position"]
  GETIMPORT R13 K48 [UDim2.new]
  LOADN R14 0
  LOADN R15 22
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K44 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K204 ["::UIGradient"]
  DUPTABLE R16 K208 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R17 K360 [ColorSequence.new]
  GETIMPORT R18 K337 [Color3.fromHex]
  LOADK R19 K105 [".State-Default :hover, .State-Disabled :hover"]
  CALL R18 1 -1
  CALL R17 -1 1
  SETTABLEKS R17 R16 K205 ["Color"]
  LOADN R17 180
  SETTABLEKS R17 R16 K206 ["Rotation"]
  GETIMPORT R17 K363 [NumberSequence.new]
  NEWTABLE R18 0 3
  GETIMPORT R19 K365 [NumberSequenceKeypoint.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  GETIMPORT R20 K365 [NumberSequenceKeypoint.new]
  LOADK R21 K120 [0.5]
  LOADN R22 0
  CALL R20 2 1
  GETIMPORT R21 K365 [NumberSequenceKeypoint.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R17 1 1
  SETTABLEKS R17 R16 K207 ["Transparency"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K110 ["AnchorPoint"]
  DUPTABLE R13 K45 [{"Size"}]
  GETIMPORT R14 K48 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 84
  CALL R14 4 1
  SETTABLEKS R14 R13 K44 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K111 ["AutomaticCanvasSize"]
  DUPTABLE R14 K45 [{"Size"}]
  GETIMPORT R15 K48 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 70
  CALL R15 4 1
  SETTABLEKS R15 R14 K44 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K112 ["AutomaticSize"]
  DUPTABLE R15 K45 [{"Size"}]
  GETIMPORT R16 K48 [UDim2.new]
  LOADN R17 1
  LOADN R18 224
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K44 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K113 ["Position"]
  DUPTABLE R16 K130 [{"AnchorPoint", "Position"}]
  GETIMPORT R17 K119 [Vector2.new]
  LOADN R18 0
  LOADK R19 K120 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K110 ["AnchorPoint"]
  GETIMPORT R17 K48 [UDim2.new]
  LOADN R18 0
  LOADN R19 165
  LOADK R20 K120 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K113 ["Position"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K114 ["ScrollingDirection"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K65 ["::UIListLayout"]
  DUPTABLE R21 K371 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R22 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K66 ["FillDirection"]
  GETIMPORT R22 K345 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K342 ["HorizontalAlignment"]
  GETIMPORT R22 K74 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K68 ["SortOrder"]
  GETIMPORT R22 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K259 ["VerticalAlignment"]
  LOADK R22 K76 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K67 ["Padding"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K170 ["> TextLabel"]
  DUPTABLE R22 K293 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R23 K23 ["$BackgroundTransparent"]
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  LOADK R23 K33 ["$FontWeight400"]
  SETTABLEKS R23 R22 K14 ["Font"]
  LOADK R23 K97 ["$FontSize150"]
  SETTABLEKS R23 R22 K31 ["TextSize"]
  LOADN R23 0
  SETTABLEKS R23 R22 K73 ["LayoutOrder"]
  LOADK R23 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R23 R22 K30 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K103 [".State-Disabled"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K170 ["> TextLabel"]
  DUPTABLE R27 K41 [{"TextColor3"}]
  LOADK R28 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R28 R27 K30 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K116 ["HorizontalScrollBarInset"]
  DUPTABLE R18 K220 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R19 0
  SETTABLEKS R19 R18 K166 ["AutoButtonColor"]
  LOADK R19 K169 [""]
  SETTABLEKS R19 R18 K167 ["Text"]
  GETIMPORT R19 K48 [UDim2.new]
  LOADN R20 0
  LOADN R21 85
  LOADN R22 0
  LOADN R23 28
  CALL R19 4 1
  SETTABLEKS R19 R18 K44 ["Size"]
  NEWTABLE R19 0 11
  MOVE R20 R2
  LOADK R21 K65 ["::UIListLayout"]
  DUPTABLE R22 K374 [{"HorizontalFlex"}]
  GETIMPORT R23 K377 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R23 R22 K373 ["HorizontalFlex"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K59 ["::UIPadding"]
  DUPTABLE R23 K89 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K76 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K60 ["PaddingLeft"]
  LOADK R24 K72 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K61 ["PaddingRight"]
  LOADK R24 K72 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K87 ["PaddingTop"]
  LOADK R24 K72 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K88 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K122 [Enum.AutomaticSize.XY]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K65 ["::UIListLayout"]
  DUPTABLE R28 K374 [{"HorizontalFlex"}]
  GETIMPORT R29 K377 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R29 R28 K373 ["HorizontalFlex"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K123 ["fromScale"]
  DUPTABLE R25 K45 [{"Size"}]
  LOADK R26 K177 ["$IconSmall"]
  SETTABLEKS R26 R25 K44 ["Size"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K124 [UDim2.fromScale]
  DUPTABLE R29 K383 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R30 K386 [Enum.UIFlexMode.Custom]
  SETTABLEKS R30 R29 K381 ["FlexMode"]
  LOADN R30 0
  SETTABLEKS R30 R29 K382 ["ShrinkRation"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K131 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  DUPTABLE R26 K227 [{"LayoutOrder"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K73 ["LayoutOrder"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K228 [".Right"]
  DUPTABLE R30 K227 [{"LayoutOrder"}]
  LOADN R31 3
  SETTABLEKS R31 R30 K73 ["LayoutOrder"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K132 [Enum.AutomaticSize.None]
  DUPTABLE R27 K389 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R28 K24 ["$BorderNone"]
  SETTABLEKS R28 R27 K21 ["BorderSizePixel"]
  LOADN R28 1
  SETTABLEKS R28 R27 K20 ["BackgroundTransparency"]
  LOADK R28 K134 ["CornerRadius"]
  SETTABLEKS R28 R27 K195 ["Image"]
  LOADN R28 4
  SETTABLEKS R28 R27 K73 ["LayoutOrder"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K135 [{"CornerRadius"}]
  DUPTABLE R31 K263 [{"Image"}]
  LOADK R32 K136 ["$GlobalRadiusXSmall"]
  SETTABLEKS R32 R31 K195 ["Image"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K137 [".X-CornerS ::UICorner"]
  DUPTABLE R28 K396 [{"Font", "TextSize", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R29 K33 ["$FontWeight400"]
  SETTABLEKS R29 R28 K14 ["Font"]
  LOADK R29 K97 ["$FontSize150"]
  SETTABLEKS R29 R28 K31 ["TextSize"]
  GETIMPORT R29 K398 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R29 R28 K394 ["TextTruncate"]
  GETIMPORT R29 K399 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K395 ["TextXAlignment"]
  LOADN R29 2
  SETTABLEKS R29 R28 K73 ["LayoutOrder"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K183 [".State-Default"]
  DUPTABLE R29 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K45 [{"Size"}]
  SETTABLEKS R30 R29 K26 ["BackgroundColor3"]
  LOADK R30 K46 ["UDim2"]
  SETTABLEKS R30 R29 K20 ["BackgroundTransparency"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K137 [".X-CornerS ::UICorner"]
  DUPTABLE R33 K41 [{"TextColor3"}]
  LOADK R34 K34 ["$SemanticColorContentMuted"]
  SETTABLEKS R34 R33 K30 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K131 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  DUPTABLE R34 K181 [{"ImageTransparency"}]
  LOADK R35 K144 [".X-PadRibbonTool ::UIPadding"]
  SETTABLEKS R35 R34 K180 ["ImageTransparency"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K145 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R30 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K51 ["$SemanticColorDivider"]
  SETTABLEKS R31 R30 K26 ["BackgroundColor3"]
  LOADK R31 K52 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R31 R30 K20 ["BackgroundTransparency"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K137 [".X-CornerS ::UICorner"]
  DUPTABLE R34 K41 [{"TextColor3"}]
  LOADK R35 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K30 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K131 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  DUPTABLE R35 K181 [{"ImageTransparency"}]
  LOADN R36 0
  SETTABLEKS R36 R35 K180 ["ImageTransparency"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K47 ["new"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K235 ["::UIStroke"]
  DUPTABLE R35 K304 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R36 K240 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R36 R35 K236 ["ApplyStrokeMode"]
  LOADK R36 K49 ["> Frame"]
  SETTABLEKS R36 R35 K205 ["Color"]
  LOADK R36 K241 ["$BorderMedium"]
  SETTABLEKS R36 R35 K237 ["Thickness"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K137 [".X-CornerS ::UICorner"]
  DUPTABLE R36 K41 [{"TextColor3"}]
  LOADK R37 K102 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K30 ["TextColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K131 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  DUPTABLE R37 K181 [{"ImageTransparency"}]
  LOADN R38 0
  SETTABLEKS R38 R37 K180 ["ImageTransparency"]
  CALL R35 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K103 [".State-Disabled"]
  DUPTABLE R32 K106 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R33 K45 [{"Size"}]
  SETTABLEKS R33 R32 K26 ["BackgroundColor3"]
  LOADK R33 K46 ["UDim2"]
  SETTABLEKS R33 R32 K20 ["BackgroundTransparency"]
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K137 [".X-CornerS ::UICorner"]
  DUPTABLE R36 K41 [{"TextColor3"}]
  LOADK R37 K104 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K30 ["TextColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K131 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  DUPTABLE R37 K181 [{"ImageTransparency"}]
  LOADK R38 K182 ["$IconDisabled"]
  SETTABLEKS R38 R37 K180 ["ImageTransparency"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R5 R6 -1 [49]
  MOVE R6 R3
  LOADK R7 K146 [".X-PadSplitButtonDropdown :: UIPadding"]
  MOVE R8 R5
  DUPTABLE R9 K404 [{"Size", "SizeDense"}]
  GETIMPORT R10 K48 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K44 ["Size"]
  GETIMPORT R10 K48 [UDim2.new]
  LOADN R11 0
  LOADN R12 90
  LOADN R13 0
  LOADN R14 20
  CALL R10 4 1
  SETTABLEKS R10 R9 K403 ["SizeDense"]
  CALL R6 3 -1
  RETURN R6 -1
