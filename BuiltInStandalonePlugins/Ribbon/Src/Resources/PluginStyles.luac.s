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
  NEWTABLE R4 0 57
  MOVE R5 R2
  LOADK R6 K10 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R7 K12 [{"FontFace"}]
  GETIMPORT R8 K16 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K11 ["FontFace"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K17 [".Role-Surface"]
  DUPTABLE R8 K20 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R9 K21 ["$BackgroundTransparent"]
  SETTABLEKS R9 R8 K18 ["BackgroundTransparency"]
  LOADK R9 K22 ["$BorderNone"]
  SETTABLEKS R9 R8 K19 ["BorderSizePixel"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K23 [".Role-Surface100"]
  DUPTABLE R9 K25 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R10 K26 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R10 R9 K24 ["BackgroundColor3"]
  LOADK R10 K22 ["$BorderNone"]
  SETTABLEKS R10 R9 K19 ["BorderSizePixel"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K27 [".Text-Label"]
  DUPTABLE R10 K30 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R11 K31 ["$FontWeight400"]
  SETTABLEKS R11 R10 K14 ["Font"]
  LOADK R11 K32 ["$SemanticColorContentMuted"]
  SETTABLEKS R11 R10 K28 ["TextColor3"]
  LOADK R11 K33 ["$FontSize100"]
  SETTABLEKS R11 R10 K29 ["TextSize"]
  LOADK R11 K22 ["$BorderNone"]
  SETTABLEKS R11 R10 K19 ["BorderSizePixel"]
  LOADK R11 K21 ["$BackgroundTransparent"]
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K34 [".Text-Title"]
  DUPTABLE R11 K30 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R12 K35 ["$FontWeight700"]
  SETTABLEKS R12 R11 K14 ["Font"]
  LOADK R12 K32 ["$SemanticColorContentMuted"]
  SETTABLEKS R12 R11 K28 ["TextColor3"]
  LOADK R12 K33 ["$FontSize100"]
  SETTABLEKS R12 R11 K29 ["TextSize"]
  LOADK R12 K22 ["$BorderNone"]
  SETTABLEKS R12 R11 K19 ["BorderSizePixel"]
  LOADK R12 K21 ["$BackgroundTransparent"]
  SETTABLEKS R12 R11 K18 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K36 [".TooltipBackground"]
  DUPTABLE R12 K25 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R13 K37 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R13 R12 K24 ["BackgroundColor3"]
  LOADK R13 K22 ["$BorderNone"]
  SETTABLEKS R13 R12 K19 ["BorderSizePixel"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K38 [">> TextLabel"]
  DUPTABLE R16 K39 [{"TextColor3"}]
  LOADK R17 K40 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R17 R16 K28 ["TextColor3"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K41 [".Role-DividerH"]
  DUPTABLE R13 K43 [{"Size"}]
  GETIMPORT R14 K46 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K42 ["Size"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K47 ["> Frame"]
  DUPTABLE R17 K48 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R18 K49 ["$SemanticColorDivider"]
  SETTABLEKS R18 R17 K24 ["BackgroundColor3"]
  LOADK R18 K50 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R18 R17 K18 ["BackgroundTransparency"]
  LOADK R18 K22 ["$BorderNone"]
  SETTABLEKS R18 R17 K19 ["BorderSizePixel"]
  GETIMPORT R18 K46 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 1
  CALL R18 4 1
  SETTABLEKS R18 R17 K42 ["Size"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K51 [".Role-DividerV"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 4
  MOVE R16 R2
  LOADK R17 K47 ["> Frame"]
  DUPTABLE R18 K52 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R19 K49 ["$SemanticColorDivider"]
  SETTABLEKS R19 R18 K24 ["BackgroundColor3"]
  LOADK R19 K50 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R19 R18 K18 ["BackgroundTransparency"]
  LOADK R19 K22 ["$BorderNone"]
  SETTABLEKS R19 R18 K19 ["BorderSizePixel"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K53 [".Small"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K47 ["> Frame"]
  DUPTABLE R23 K43 [{"Size"}]
  GETIMPORT R24 K46 [UDim2.new]
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  LOADN R28 28
  CALL R24 4 1
  SETTABLEKS R24 R23 K42 ["Size"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K54 [".Large"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K47 ["> Frame"]
  DUPTABLE R24 K43 [{"Size"}]
  GETIMPORT R25 K46 [UDim2.new]
  LOADN R26 0
  LOADN R27 1
  LOADN R28 0
  LOADN R29 64
  CALL R25 4 1
  SETTABLEKS R25 R24 K42 ["Size"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K55 [".RibbonButton-Divider"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K56 ["::UIPadding"]
  DUPTABLE R25 K59 [{"PaddingLeft", "PaddingRight"}]
  LOADK R26 K60 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K57 ["PaddingLeft"]
  LOADK R26 K60 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K58 ["PaddingRight"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K61 [".X-RowSpace50"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K62 ["::UIListLayout"]
  DUPTABLE R19 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K63 ["FillDirection"]
  LOADK R20 K69 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K64 ["Padding"]
  GETIMPORT R20 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K65 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K72 [".X-RowSpace100"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K62 ["::UIListLayout"]
  DUPTABLE R20 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K63 ["FillDirection"]
  LOADK R21 K73 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K64 ["Padding"]
  GETIMPORT R21 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K65 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K74 [".X-RowSpace150"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K62 ["::UIListLayout"]
  DUPTABLE R21 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K63 ["FillDirection"]
  LOADK R22 K60 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K64 ["Padding"]
  GETIMPORT R22 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K65 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K75 [".X-RowSpace200"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K62 ["::UIListLayout"]
  DUPTABLE R22 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K63 ["FillDirection"]
  LOADK R23 K76 ["$GlobalSpace200"]
  SETTABLEKS R23 R22 K64 ["Padding"]
  GETIMPORT R23 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K65 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K77 [".X-ColumnSpace25"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K62 ["::UIListLayout"]
  DUPTABLE R23 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K79 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K63 ["FillDirection"]
  LOADK R24 K80 ["$GlobalSpace25"]
  SETTABLEKS R24 R23 K64 ["Padding"]
  GETIMPORT R24 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K65 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K81 [".X-ColumnSpace50"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K62 ["::UIListLayout"]
  DUPTABLE R24 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K79 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K63 ["FillDirection"]
  LOADK R25 K69 ["$GlobalSpace50"]
  SETTABLEKS R25 R24 K64 ["Padding"]
  GETIMPORT R25 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K65 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K82 [".X-ColumnSpace100"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K62 ["::UIListLayout"]
  DUPTABLE R25 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K79 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K63 ["FillDirection"]
  LOADK R26 K73 ["$GlobalSpace100"]
  SETTABLEKS R26 R25 K64 ["Padding"]
  GETIMPORT R26 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K65 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K83 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R22 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K60 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K57 ["PaddingLeft"]
  LOADK R23 K60 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K58 ["PaddingRight"]
  LOADK R23 K60 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K84 ["PaddingTop"]
  LOADK R23 K60 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K85 ["PaddingBottom"]
  CALL R20 2 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K87 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R7 K88 [{"PaddingLeft"}]
  LOADK R8 K73 ["$GlobalSpace100"]
  SETTABLEKS R8 R7 K57 ["PaddingLeft"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K89 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R8 K90 [{"PaddingRight"}]
  LOADK R9 K73 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K58 ["PaddingRight"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K91 [".X-RowXS"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K62 ["::UIListLayout"]
  DUPTABLE R13 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R14 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K63 ["FillDirection"]
  LOADK R14 K80 ["$GlobalSpace25"]
  SETTABLEKS R14 R13 K64 ["Padding"]
  GETIMPORT R14 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K65 ["SortOrder"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K92 [".Component-RibbonTab"]
  DUPTABLE R10 K93 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  LOADK R11 K21 ["$BackgroundTransparent"]
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  LOADK R11 K31 ["$FontWeight400"]
  SETTABLEKS R11 R10 K14 ["Font"]
  GETIMPORT R11 K46 [UDim2.new]
  LOADN R12 0
  LOADN R13 80
  LOADN R14 0
  LOADN R15 28
  CALL R11 4 1
  SETTABLEKS R11 R10 K42 ["Size"]
  LOADK R11 K32 ["$SemanticColorContentMuted"]
  SETTABLEKS R11 R10 K28 ["TextColor3"]
  LOADK R11 K94 ["$FontSize150"]
  SETTABLEKS R11 R10 K29 ["TextSize"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K95 [".State-Selected"]
  DUPTABLE R14 K96 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R15 K97 ["$SemanticColorStatesSelected"]
  SETTABLEKS R15 R14 K24 ["BackgroundColor3"]
  LOADK R15 K98 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R15 R14 K18 ["BackgroundTransparency"]
  LOADK R15 K35 ["$FontWeight700"]
  SETTABLEKS R15 R14 K14 ["Font"]
  LOADK R15 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R15 R14 K28 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K100 [".State-Disabled"]
  DUPTABLE R15 K39 [{"TextColor3"}]
  LOADK R16 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R16 R15 K28 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K102 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R16 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K104 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R17 R16 K24 ["BackgroundColor3"]
  LOADK R17 K105 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R17 R16 K18 ["BackgroundTransparency"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K106 [".Component-RibbonTabs"]
  DUPTABLE R11 K114 [{"AnchorPoint", "AutomaticCanvasSize", "AutomaticSize", "Position", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R12 K116 [Vector2.new]
  LOADK R13 K117 [0.5]
  LOADK R14 K117 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K107 ["AnchorPoint"]
  GETIMPORT R12 K119 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K108 ["AutomaticCanvasSize"]
  GETIMPORT R12 K119 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K109 ["AutomaticSize"]
  GETIMPORT R12 K121 [UDim2.fromScale]
  LOADK R13 K117 [0.5]
  LOADK R14 K117 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K110 ["Position"]
  GETIMPORT R12 K123 [Enum.ScrollingDirection.X]
  SETTABLEKS R12 R11 K111 ["ScrollingDirection"]
  LOADN R12 0
  SETTABLEKS R12 R11 K112 ["ScrollBarThickness"]
  GETIMPORT R12 K126 [Enum.ScrollBarInset.None]
  SETTABLEKS R12 R11 K113 ["HorizontalScrollBarInset"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K127 [".Medium"]
  DUPTABLE R15 K128 [{"AnchorPoint", "Position"}]
  GETIMPORT R16 K116 [Vector2.new]
  LOADN R17 1
  LOADK R18 K117 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K107 ["AnchorPoint"]
  GETIMPORT R16 K46 [UDim2.new]
  LOADN R17 1
  LOADN R18 242
  LOADK R19 K117 [0.5]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K110 ["Position"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K53 [".Small"]
  DUPTABLE R16 K129 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R17 K116 [Vector2.new]
  LOADN R18 0
  LOADK R19 K117 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K107 ["AnchorPoint"]
  GETIMPORT R17 K130 [Enum.AutomaticSize.None]
  SETTABLEKS R17 R16 K109 ["AutomaticSize"]
  GETIMPORT R17 K46 [UDim2.new]
  LOADN R18 0
  LOADN R19 160
  LOADK R20 K117 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K110 ["Position"]
  GETIMPORT R17 K46 [UDim2.new]
  LOADN R18 1
  LOADN R19 82
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K42 ["Size"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K131 [".X-CornerXS ::UICorner"]
  DUPTABLE R12 K133 [{"CornerRadius"}]
  LOADK R13 K134 ["$GlobalRadiusXSmall"]
  SETTABLEKS R13 R12 K132 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K135 [".X-CornerS ::UICorner"]
  DUPTABLE R13 K133 [{"CornerRadius"}]
  LOADK R14 K136 ["$GlobalRadiusSmall"]
  SETTABLEKS R14 R13 K132 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K137 [".X-CornerM ::UICorner"]
  DUPTABLE R14 K133 [{"CornerRadius"}]
  LOADK R15 K138 ["$GlobalRadiusMedium"]
  SETTABLEKS R15 R14 K132 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K139 [".X-PadMezz :: UIPadding"]
  DUPTABLE R15 K88 [{"PaddingLeft"}]
  GETIMPORT R16 K141 [UDim.new]
  LOADN R17 0
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K57 ["PaddingLeft"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K142 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R16 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K141 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["PaddingLeft"]
  GETIMPORT R17 K141 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K58 ["PaddingRight"]
  LOADK R17 K73 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K84 ["PaddingTop"]
  LOADK R17 K73 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K85 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K143 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R17 K88 [{"PaddingLeft"}]
  LOADK R18 K73 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K57 ["PaddingLeft"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K144 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R18 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R19 K80 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K57 ["PaddingLeft"]
  LOADK R19 K145 ["$GlobalSpace75"]
  SETTABLEKS R19 R18 K58 ["PaddingRight"]
  LOADK R19 K146 ["$GlobalSpace350"]
  SETTABLEKS R19 R18 K84 ["PaddingTop"]
  LOADK R19 K145 ["$GlobalSpace75"]
  SETTABLEKS R19 R18 K85 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K147 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R19 K148 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K80 ["$GlobalSpace25"]
  SETTABLEKS R20 R19 K58 ["PaddingRight"]
  LOADK R20 K149 ["$GlobalSpace250"]
  SETTABLEKS R20 R19 K84 ["PaddingTop"]
  LOADK R20 K69 ["$GlobalSpace50"]
  SETTABLEKS R20 R19 K85 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K150 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R20 K88 [{"PaddingLeft"}]
  LOADK R21 K145 ["$GlobalSpace75"]
  SETTABLEKS R21 R20 K57 ["PaddingLeft"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K151 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R21 K152 [{"PaddingTop", "PaddingBottom"}]
  LOADK R22 K69 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K84 ["PaddingTop"]
  LOADK R22 K69 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K85 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K153 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R22 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K60 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K57 ["PaddingLeft"]
  LOADK R23 K73 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K58 ["PaddingRight"]
  LOADK R23 K60 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K84 ["PaddingTop"]
  LOADK R23 K60 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K85 ["PaddingBottom"]
  CALL R20 2 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K154 [".X-PadTabMenu ::UIPadding"]
  DUPTABLE R7 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R8 K73 ["$GlobalSpace100"]
  SETTABLEKS R8 R7 K57 ["PaddingLeft"]
  LOADK R8 K73 ["$GlobalSpace100"]
  SETTABLEKS R8 R7 K58 ["PaddingRight"]
  LOADK R8 K73 ["$GlobalSpace100"]
  SETTABLEKS R8 R7 K84 ["PaddingTop"]
  LOADK R8 K73 ["$GlobalSpace100"]
  SETTABLEKS R8 R7 K85 ["PaddingBottom"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K155 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R8 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R9 K145 ["$GlobalSpace75"]
  SETTABLEKS R9 R8 K57 ["PaddingLeft"]
  LOADK R9 K145 ["$GlobalSpace75"]
  SETTABLEKS R9 R8 K58 ["PaddingRight"]
  LOADK R9 K145 ["$GlobalSpace75"]
  SETTABLEKS R9 R8 K84 ["PaddingTop"]
  LOADK R9 K145 ["$GlobalSpace75"]
  SETTABLEKS R9 R8 K85 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K156 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R9 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R10 K73 ["$GlobalSpace100"]
  SETTABLEKS R10 R9 K57 ["PaddingLeft"]
  LOADK R10 K73 ["$GlobalSpace100"]
  SETTABLEKS R10 R9 K58 ["PaddingRight"]
  LOADK R10 K69 ["$GlobalSpace50"]
  SETTABLEKS R10 R9 K84 ["PaddingTop"]
  LOADK R10 K69 ["$GlobalSpace50"]
  SETTABLEKS R10 R9 K85 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K157 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R10 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R11 K145 ["$GlobalSpace75"]
  SETTABLEKS R11 R10 K57 ["PaddingLeft"]
  LOADK R11 K145 ["$GlobalSpace75"]
  SETTABLEKS R11 R10 K58 ["PaddingRight"]
  LOADK R11 K69 ["$GlobalSpace50"]
  SETTABLEKS R11 R10 K84 ["PaddingTop"]
  LOADK R11 K69 ["$GlobalSpace50"]
  SETTABLEKS R11 R10 K85 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K158 [".X-RowSplitButton"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K62 ["::UIListLayout"]
  DUPTABLE R15 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K63 ["FillDirection"]
  LOADK R16 K80 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K64 ["Padding"]
  GETIMPORT R16 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K65 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K159 [".X-RowSplitButtonSmall"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K62 ["::UIListLayout"]
  DUPTABLE R16 K160 [{"FillDirection", "SortOrder"}]
  GETIMPORT R17 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K63 ["FillDirection"]
  GETIMPORT R17 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K65 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K161 [".X-RowSpinbox"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K62 ["::UIListLayout"]
  DUPTABLE R17 K66 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K63 ["FillDirection"]
  LOADK R18 K69 ["$GlobalSpace50"]
  SETTABLEKS R18 R17 K64 ["Padding"]
  GETIMPORT R18 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K65 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K162 [".X-PadSpinBox ::UIPadding"]
  DUPTABLE R14 K88 [{"PaddingLeft"}]
  LOADK R15 K73 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K57 ["PaddingLeft"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K163 [".Component-RibbonButton"]
  DUPTABLE R15 K166 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K164 ["AutoButtonColor"]
  LOADK R16 K21 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K18 ["BackgroundTransparency"]
  LOADK R16 K22 ["$BorderNone"]
  SETTABLEKS R16 R15 K19 ["BorderSizePixel"]
  LOADK R16 K167 [""]
  SETTABLEKS R16 R15 K165 ["Text"]
  NEWTABLE R16 0 7
  MOVE R17 R2
  LOADK R18 K168 ["> TextLabel"]
  DUPTABLE R19 K169 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize"}]
  LOADK R20 K21 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K18 ["BackgroundTransparency"]
  LOADK R20 K31 ["$FontWeight400"]
  SETTABLEKS R20 R19 K14 ["Font"]
  LOADN R20 2
  SETTABLEKS R20 R19 K70 ["LayoutOrder"]
  LOADK R20 K32 ["$SemanticColorContentMuted"]
  SETTABLEKS R20 R19 K28 ["TextColor3"]
  LOADK R20 K33 ["$FontSize100"]
  SETTABLEKS R20 R19 K29 ["TextSize"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K170 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R20 K171 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R21 K21 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K18 ["BackgroundTransparency"]
  LOADK R21 K22 ["$BorderNone"]
  SETTABLEKS R21 R20 K19 ["BorderSizePixel"]
  LOADN R21 0
  SETTABLEKS R21 R20 K70 ["LayoutOrder"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K172 [".Icon-Large"]
  DUPTABLE R24 K43 [{"Size"}]
  LOADK R25 K173 ["$IconLarge"]
  SETTABLEKS R25 R24 K42 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K174 [".Icon-Small"]
  DUPTABLE R25 K43 [{"Size"}]
  LOADK R26 K175 ["$IconSmall"]
  SETTABLEKS R26 R25 K42 ["Size"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K100 [".State-Disabled"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K176 [">> #RibbonTool"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K177 ["> #RibbonToolButtonIcon"]
  DUPTABLE R29 K179 [{"ImageTransparency"}]
  LOADK R30 K180 ["$IconDisabled"]
  SETTABLEKS R30 R29 K178 ["ImageTransparency"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K168 ["> TextLabel"]
  DUPTABLE R26 K39 [{"TextColor3"}]
  LOADK R27 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R27 R26 K28 ["TextColor3"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K181 [".State-Default"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K182 [">> #RibbonTool, >> #StateLayer"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K183 [":hover"]
  DUPTABLE R30 K184 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K105 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R31 R30 K18 ["BackgroundTransparency"]
  LOADK R31 K104 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R31 R30 K24 ["BackgroundColor3"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K185 [":pressed"]
  DUPTABLE R31 K184 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R32 K186 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R32 R31 K18 ["BackgroundTransparency"]
  LOADK R32 K187 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R32 R31 K24 ["BackgroundColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K95 [".State-Selected"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K176 [">> #RibbonTool"]
  DUPTABLE R27 K184 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R28 K98 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R28 R27 K18 ["BackgroundTransparency"]
  LOADK R28 K97 ["$SemanticColorStatesSelected"]
  SETTABLEKS R28 R27 K24 ["BackgroundColor3"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K188 [">> Frame .Component-SplitButtonDropdown"]
  DUPTABLE R24 K189 [{"LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K70 ["LayoutOrder"]
  GETIMPORT R25 K46 [UDim2.new]
  LOADN R26 0
  LOADN R27 12
  LOADN R28 0
  LOADN R29 40
  CALL R25 4 1
  SETTABLEKS R25 R24 K42 ["Size"]
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K53 [".Small"]
  DUPTABLE R28 K43 [{"Size"}]
  GETIMPORT R29 K46 [UDim2.new]
  LOADN R30 0
  LOADN R31 6
  LOADN R32 0
  LOADN R33 28
  CALL R29 4 1
  SETTABLEKS R29 R28 K42 ["Size"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K190 ["> TextButton"]
  DUPTABLE R29 K191 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R30 K141 [UDim.new]
  LOADN R31 1
  LOADN R32 1
  CALL R30 2 1
  SETTABLEKS R30 R29 K107 ["AnchorPoint"]
  LOADB R30 0
  SETTABLEKS R30 R29 K164 ["AutoButtonColor"]
  GETIMPORT R30 K46 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K110 ["Position"]
  LOADK R30 K167 [""]
  SETTABLEKS R30 R29 K165 ["Text"]
  LOADN R30 1
  SETTABLEKS R30 R29 K29 ["TextSize"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K192 ["> ImageLabel"]
  DUPTABLE R33 K194 [{"Image", "Size"}]
  LOADK R34 K195 ["$ArrowDownAngleSmall"]
  SETTABLEKS R34 R33 K193 ["Image"]
  GETIMPORT R34 K197 [UDim2.fromOffset]
  LOADN R35 6
  LOADN R36 6
  CALL R34 2 1
  SETTABLEKS R34 R33 K42 ["Size"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K53 [".Small"]
  DUPTABLE R37 K43 [{"Size"}]
  GETIMPORT R38 K197 [UDim2.fromOffset]
  LOADN R39 4
  LOADN R40 4
  CALL R38 2 1
  SETTABLEKS R38 R37 K42 ["Size"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K198 ["> Frame #StateLayer"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K199 [".State-Gradient-Hover"]
  DUPTABLE R29 K200 [{"BackgroundTransparency"}]
  LOADK R30 K201 ["$BackgroundNonTransparent"]
  SETTABLEKS R30 R29 K18 ["BackgroundTransparency"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K202 ["::UIGradient"]
  DUPTABLE R33 K206 [{"Color", "Rotation", "Transparency"}]
  LOADK R34 K207 ["$SemanticColorStateLayerHoverGradient"]
  SETTABLEKS R34 R33 K203 ["Color"]
  LOADK R34 K208 ["$SemanticColorStateLayerHoverGradientRotation"]
  SETTABLEKS R34 R33 K204 ["Rotation"]
  LOADK R34 K209 ["$SemanticColorStateLayerHoverGradientTransparency"]
  SETTABLEKS R34 R33 K205 ["Transparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K210 [".State-Gradient-Pressed"]
  DUPTABLE R30 K200 [{"BackgroundTransparency"}]
  LOADK R31 K201 ["$BackgroundNonTransparent"]
  SETTABLEKS R31 R30 K18 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K202 ["::UIGradient"]
  DUPTABLE R34 K206 [{"Color", "Rotation", "Transparency"}]
  LOADK R35 K211 ["$SemanticColorStateLayerPressGradient"]
  SETTABLEKS R35 R34 K203 ["Color"]
  LOADK R35 K212 ["$SemanticColorStateLayerPressGradientRotation"]
  SETTABLEKS R35 R34 K204 ["Rotation"]
  LOADK R35 K213 ["$SemanticColorStateLayerPressGradientTransparency"]
  SETTABLEKS R35 R34 K205 ["Transparency"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K214 [".Ribbon-More"]
  DUPTABLE R16 K216 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R17 K116 [Vector2.new]
  LOADN R18 1
  LOADK R19 K117 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K107 ["AnchorPoint"]
  GETIMPORT R17 K46 [UDim2.new]
  LOADN R18 1
  LOADN R19 248
  LOADK R20 K117 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K110 ["Position"]
  LOADN R17 3
  SETTABLEKS R17 R16 K215 ["ZIndex"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K217 [".Component-Button"]
  DUPTABLE R17 K218 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K164 ["AutoButtonColor"]
  LOADK R18 K167 [""]
  SETTABLEKS R18 R17 K165 ["Text"]
  GETIMPORT R18 K46 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K42 ["Size"]
  NEWTABLE R18 0 5
  MOVE R19 R2
  LOADK R20 K219 ["> #StateLayer"]
  DUPTABLE R21 K43 [{"Size"}]
  GETIMPORT R22 K46 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  LOADN R26 28
  CALL R22 4 1
  SETTABLEKS R22 R21 K42 ["Size"]
  NEWTABLE R22 0 6
  MOVE R23 R2
  LOADK R24 K62 ["::UIListLayout"]
  DUPTABLE R25 K220 [{"Padding"}]
  LOADK R26 K69 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K64 ["Padding"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K221 [".X-PadButtonSmall ::UIPadding"]
  DUPTABLE R26 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R27 K60 ["$GlobalSpace150"]
  SETTABLEKS R27 R26 K57 ["PaddingLeft"]
  LOADK R27 K60 ["$GlobalSpace150"]
  SETTABLEKS R27 R26 K58 ["PaddingRight"]
  LOADK R27 K69 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K84 ["PaddingTop"]
  LOADK R27 K69 ["$GlobalSpace50"]
  SETTABLEKS R27 R26 K85 ["PaddingBottom"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K222 [".X-PadButtonLarge ::UIPadding"]
  DUPTABLE R27 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R28 K149 ["$GlobalSpace250"]
  SETTABLEKS R28 R27 K57 ["PaddingLeft"]
  LOADK R28 K149 ["$GlobalSpace250"]
  SETTABLEKS R28 R27 K58 ["PaddingRight"]
  LOADK R28 K60 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K84 ["PaddingTop"]
  LOADK R28 K60 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K85 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K223 [".X-PadButtonMedium ::UIPadding"]
  DUPTABLE R28 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R29 K76 ["$GlobalSpace200"]
  SETTABLEKS R29 R28 K57 ["PaddingLeft"]
  LOADK R29 K76 ["$GlobalSpace200"]
  SETTABLEKS R29 R28 K58 ["PaddingRight"]
  LOADK R29 K73 ["$GlobalSpace100"]
  SETTABLEKS R29 R28 K84 ["PaddingTop"]
  LOADK R29 K73 ["$GlobalSpace100"]
  SETTABLEKS R29 R28 K85 ["PaddingBottom"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K224 ["> #ButtonIcon"]
  DUPTABLE R29 K225 [{"LayoutOrder"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K70 ["LayoutOrder"]
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K172 [".Icon-Large"]
  DUPTABLE R33 K43 [{"Size"}]
  LOADK R34 K173 ["$IconLarge"]
  SETTABLEKS R34 R33 K42 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K174 [".Icon-Small"]
  DUPTABLE R34 K43 [{"Size"}]
  LOADK R35 K175 ["$IconSmall"]
  SETTABLEKS R35 R34 K42 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K226 [".Right"]
  DUPTABLE R35 K225 [{"LayoutOrder"}]
  LOADN R36 3
  SETTABLEKS R36 R35 K70 ["LayoutOrder"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K227 ["> #ButtonText"]
  DUPTABLE R30 K228 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R31 K35 ["$FontWeight700"]
  SETTABLEKS R31 R30 K14 ["Font"]
  LOADK R31 K229 ["$FontSize200"]
  SETTABLEKS R31 R30 K29 ["TextSize"]
  LOADN R31 2
  SETTABLEKS R31 R30 K70 ["LayoutOrder"]
  LOADK R31 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R31 R30 K28 ["TextColor3"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K53 [".Small"]
  DUPTABLE R34 K230 [{"TextSize"}]
  LOADK R35 K94 ["$FontSize150"]
  SETTABLEKS R35 R34 K29 ["TextSize"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K54 [".Large"]
  DUPTABLE R35 K230 [{"TextSize"}]
  LOADK R36 K231 ["$FontSize300"]
  SETTABLEKS R36 R35 K29 ["TextSize"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K232 [".Outline"]
  DUPTABLE R22 K43 [{"Size"}]
  GETIMPORT R23 K46 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  LOADN R27 26
  CALL R23 4 1
  SETTABLEKS R23 R22 K42 ["Size"]
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K233 ["::UIStroke"]
  DUPTABLE R26 K236 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R27 K238 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R27 R26 K234 ["ApplyStrokeMode"]
  LOADK R27 K49 ["$SemanticColorDivider"]
  SETTABLEKS R27 R26 K203 ["Color"]
  LOADK R27 K239 ["$BorderMedium"]
  SETTABLEKS R27 R26 K235 ["Thickness"]
  LOADK R27 K50 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R27 R26 K205 ["Transparency"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K219 ["> #StateLayer"]
  DUPTABLE R27 K43 [{"Size"}]
  GETIMPORT R28 K46 [UDim2.new]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 26
  CALL R28 4 1
  SETTABLEKS R28 R27 K42 ["Size"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K100 [".State-Disabled"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K240 [">> #ButtonIcon"]
  DUPTABLE R27 K179 [{"ImageTransparency"}]
  LOADK R28 K180 ["$IconDisabled"]
  SETTABLEKS R28 R27 K178 ["ImageTransparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K241 [">> #ButtonText"]
  DUPTABLE R28 K39 [{"TextColor3"}]
  LOADK R29 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R29 R28 K28 ["TextColor3"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K181 [".State-Default"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K242 [":hover > #StateLayer"]
  DUPTABLE R28 K184 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K105 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R29 R28 K18 ["BackgroundTransparency"]
  LOADK R29 K104 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R29 R28 K24 ["BackgroundColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K243 [":pressed > #StateLayer"]
  DUPTABLE R29 K184 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K186 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R30 R29 K18 ["BackgroundTransparency"]
  LOADK R30 K187 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R30 R29 K24 ["BackgroundColor3"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K244 [".Primary"]
  DUPTABLE R25 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K245 ["$SemanticColorActionPrimaryFill"]
  SETTABLEKS R26 R25 K24 ["BackgroundColor3"]
  LOADK R26 K201 ["$BackgroundNonTransparent"]
  SETTABLEKS R26 R25 K18 ["BackgroundTransparency"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K181 [".State-Default"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K242 [":hover > #StateLayer"]
  DUPTABLE R33 K184 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R34 K246 ["$SemanticColorStateLayerHoverTransparencyInverse"]
  SETTABLEKS R34 R33 K18 ["BackgroundTransparency"]
  LOADK R34 K247 ["$SemanticColorStateLayerHoverInverse"]
  SETTABLEKS R34 R33 K24 ["BackgroundColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K243 [":pressed > #StateLayer"]
  DUPTABLE R34 K184 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K248 ["$SemanticColorStateLayerPressTransparencyInverse"]
  SETTABLEKS R35 R34 K18 ["BackgroundTransparency"]
  LOADK R35 K249 ["$SemanticColorStateLayerPressInverse"]
  SETTABLEKS R35 R34 K24 ["BackgroundColor3"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K241 [">> #ButtonText"]
  DUPTABLE R30 K39 [{"TextColor3"}]
  LOADK R31 K40 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R31 R30 K28 ["TextColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K250 [".Component-RibbonCheckbox"]
  DUPTABLE R18 K20 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R19 K21 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K18 ["BackgroundTransparency"]
  LOADK R19 K22 ["$BorderNone"]
  SETTABLEKS R19 R18 K19 ["BorderSizePixel"]
  NEWTABLE R19 0 9
  MOVE R20 R2
  LOADK R21 K251 [">> #CheckboxButton"]
  DUPTABLE R22 K252 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K164 ["AutoButtonColor"]
  LOADK R23 K21 ["$BackgroundTransparent"]
  SETTABLEKS R23 R22 K18 ["BackgroundTransparency"]
  LOADK R23 K22 ["$BorderNone"]
  SETTABLEKS R23 R22 K19 ["BorderSizePixel"]
  LOADN R23 1
  SETTABLEKS R23 R22 K70 ["LayoutOrder"]
  LOADK R23 K167 [""]
  SETTABLEKS R23 R22 K165 ["Text"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K253 [">> #CheckboxLabel"]
  DUPTABLE R23 K254 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R24 K21 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K18 ["BackgroundTransparency"]
  LOADK R24 K22 ["$BorderNone"]
  SETTABLEKS R24 R23 K19 ["BorderSizePixel"]
  LOADK R24 K31 ["$FontWeight400"]
  SETTABLEKS R24 R23 K14 ["Font"]
  LOADN R24 2
  SETTABLEKS R24 R23 K70 ["LayoutOrder"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K255 [">> #CheckboxIcon"]
  DUPTABLE R24 K20 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R25 K21 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K18 ["BackgroundTransparency"]
  LOADK R25 K22 ["$BorderNone"]
  SETTABLEKS R25 R24 K19 ["BorderSizePixel"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K0 ["script"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K251 [">> #CheckboxButton"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K62 ["::UIListLayout"]
  DUPTABLE R33 K258 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R34 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K63 ["FillDirection"]
  LOADK R34 K73 ["$GlobalSpace100"]
  SETTABLEKS R34 R33 K64 ["Padding"]
  GETIMPORT R34 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K65 ["SortOrder"]
  GETIMPORT R34 K260 [Enum.VerticalAlignment.Center]
  SETTABLEKS R34 R33 K257 ["VerticalAlignment"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K255 [">> #CheckboxIcon"]
  DUPTABLE R30 K43 [{"Size"}]
  LOADK R31 K175 ["$IconSmall"]
  SETTABLEKS R31 R30 K42 ["Size"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K53 [".Small"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K253 [">> #CheckboxLabel"]
  DUPTABLE R30 K230 [{"TextSize"}]
  LOADK R31 K94 ["$FontSize150"]
  SETTABLEKS R31 R30 K29 ["TextSize"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K127 [".Medium"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K253 [">> #CheckboxLabel"]
  DUPTABLE R31 K230 [{"TextSize"}]
  LOADK R32 K229 ["$FontSize200"]
  SETTABLEKS R32 R31 K29 ["TextSize"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K54 [".Large"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K251 [">> #CheckboxButton"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K62 ["::UIListLayout"]
  DUPTABLE R36 K258 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R37 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R37 R36 K63 ["FillDirection"]
  LOADK R37 K60 ["$GlobalSpace150"]
  SETTABLEKS R37 R36 K64 ["Padding"]
  GETIMPORT R37 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K65 ["SortOrder"]
  GETIMPORT R37 K260 [Enum.VerticalAlignment.Center]
  SETTABLEKS R37 R36 K257 ["VerticalAlignment"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K255 [">> #CheckboxIcon"]
  DUPTABLE R33 K43 [{"Size"}]
  LOADK R34 K173 ["$IconLarge"]
  SETTABLEKS R34 R33 K42 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K253 [">> #CheckboxLabel"]
  DUPTABLE R34 K230 [{"TextSize"}]
  LOADK R35 K231 ["$FontSize300"]
  SETTABLEKS R35 R34 K29 ["TextSize"]
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K181 [".State-Default"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 5
  MOVE R31 R2
  LOADK R32 K255 [">> #CheckboxIcon"]
  DUPTABLE R33 K261 [{"Image"}]
  LOADK R34 K6 ["Framework"]
  SETTABLEKS R34 R33 K193 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K7 ["Styling"]
  DUPTABLE R34 K261 [{"Image"}]
  LOADK R35 K8 ["createStyleRule"]
  SETTABLEKS R35 R34 K193 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K9 ["createStyleSheet"]
  DUPTABLE R35 K261 [{"Image"}]
  LOADK R36 K10 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R36 R35 K193 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K11 ["FontFace"]
  DUPTABLE R36 K261 [{"Image"}]
  LOADK R37 K12 [{"FontFace"}]
  SETTABLEKS R37 R36 K193 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K253 [">> #CheckboxLabel"]
  DUPTABLE R37 K39 [{"TextColor3"}]
  LOADK R38 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R38 R37 K28 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K100 [".State-Disabled"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 4
  MOVE R32 R2
  LOADK R33 K255 [">> #CheckboxIcon"]
  DUPTABLE R34 K261 [{"Image"}]
  LOADK R35 K13 ["Enum"]
  SETTABLEKS R35 R34 K193 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K9 ["createStyleSheet"]
  DUPTABLE R35 K261 [{"Image"}]
  LOADK R36 K14 ["Font"]
  SETTABLEKS R36 R35 K193 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K11 ["FontFace"]
  DUPTABLE R36 K261 [{"Image"}]
  LOADK R37 K15 ["SourceSans"]
  SETTABLEKS R37 R36 K193 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K253 [">> #CheckboxLabel"]
  DUPTABLE R37 K39 [{"TextColor3"}]
  LOADK R38 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K28 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K16 [Enum.Font.SourceSans]
  DUPTABLE R19 K20 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K21 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K18 ["BackgroundTransparency"]
  LOADK R20 K22 ["$BorderNone"]
  SETTABLEKS R20 R19 K19 ["BorderSizePixel"]
  NEWTABLE R20 0 9
  MOVE R21 R2
  LOADK R22 K17 [".Role-Surface"]
  DUPTABLE R23 K252 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K164 ["AutoButtonColor"]
  LOADK R24 K21 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K18 ["BackgroundTransparency"]
  LOADK R24 K22 ["$BorderNone"]
  SETTABLEKS R24 R23 K19 ["BorderSizePixel"]
  LOADN R24 1
  SETTABLEKS R24 R23 K70 ["LayoutOrder"]
  LOADK R24 K167 [""]
  SETTABLEKS R24 R23 K165 ["Text"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K18 ["BackgroundTransparency"]
  DUPTABLE R24 K254 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R25 K21 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K18 ["BackgroundTransparency"]
  LOADK R25 K22 ["$BorderNone"]
  SETTABLEKS R25 R24 K19 ["BorderSizePixel"]
  LOADK R25 K31 ["$FontWeight400"]
  SETTABLEKS R25 R24 K14 ["Font"]
  LOADN R25 2
  SETTABLEKS R25 R24 K70 ["LayoutOrder"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K19 ["BorderSizePixel"]
  DUPTABLE R25 K20 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R26 K21 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K18 ["BackgroundTransparency"]
  LOADK R26 K22 ["$BorderNone"]
  SETTABLEKS R26 R25 K19 ["BorderSizePixel"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K0 ["script"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K17 [".Role-Surface"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K62 ["::UIListLayout"]
  DUPTABLE R34 K258 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R35 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K63 ["FillDirection"]
  LOADK R35 K73 ["$GlobalSpace100"]
  SETTABLEKS R35 R34 K64 ["Padding"]
  GETIMPORT R35 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K65 ["SortOrder"]
  GETIMPORT R35 K260 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K257 ["VerticalAlignment"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K19 ["BorderSizePixel"]
  DUPTABLE R31 K43 [{"Size"}]
  LOADK R32 K175 ["$IconSmall"]
  SETTABLEKS R32 R31 K42 ["Size"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K53 [".Small"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K18 ["BackgroundTransparency"]
  DUPTABLE R31 K230 [{"TextSize"}]
  LOADK R32 K94 ["$FontSize150"]
  SETTABLEKS R32 R31 K29 ["TextSize"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K127 [".Medium"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K18 ["BackgroundTransparency"]
  DUPTABLE R32 K230 [{"TextSize"}]
  LOADK R33 K229 ["$FontSize200"]
  SETTABLEKS R33 R32 K29 ["TextSize"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K54 [".Large"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K17 [".Role-Surface"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K62 ["::UIListLayout"]
  DUPTABLE R37 K258 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R38 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R38 R37 K63 ["FillDirection"]
  LOADK R38 K60 ["$GlobalSpace150"]
  SETTABLEKS R38 R37 K64 ["Padding"]
  GETIMPORT R38 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R38 R37 K65 ["SortOrder"]
  GETIMPORT R38 K260 [Enum.VerticalAlignment.Center]
  SETTABLEKS R38 R37 K257 ["VerticalAlignment"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K19 ["BorderSizePixel"]
  DUPTABLE R34 K43 [{"Size"}]
  LOADK R35 K173 ["$IconLarge"]
  SETTABLEKS R35 R34 K42 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K18 ["BackgroundTransparency"]
  DUPTABLE R35 K230 [{"TextSize"}]
  LOADK R36 K231 ["$FontSize300"]
  SETTABLEKS R36 R35 K29 ["TextSize"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K181 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 4
  MOVE R32 R2
  LOADK R33 K19 ["BorderSizePixel"]
  DUPTABLE R34 K261 [{"Image"}]
  LOADK R35 K20 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R35 R34 K193 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K21 ["$BackgroundTransparent"]
  DUPTABLE R35 K261 [{"Image"}]
  LOADK R36 K22 ["$BorderNone"]
  SETTABLEKS R36 R35 K193 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K23 [".Role-Surface100"]
  DUPTABLE R36 K261 [{"Image"}]
  LOADK R37 K24 ["BackgroundColor3"]
  SETTABLEKS R37 R36 K193 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K18 ["BackgroundTransparency"]
  DUPTABLE R37 K39 [{"TextColor3"}]
  LOADK R38 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R38 R37 K28 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K100 [".State-Disabled"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K19 ["BorderSizePixel"]
  DUPTABLE R35 K261 [{"Image"}]
  LOADK R36 K25 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R36 R35 K193 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K23 [".Role-Surface100"]
  DUPTABLE R36 K261 [{"Image"}]
  LOADK R37 K26 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R37 R36 K193 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K18 ["BackgroundTransparency"]
  DUPTABLE R37 K39 [{"TextColor3"}]
  LOADK R38 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R38 R37 K28 ["TextColor3"]
  CALL R35 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K27 [".Text-Label"]
  DUPTABLE R20 K284 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K164 ["AutoButtonColor"]
  LOADK R21 K22 ["$BorderNone"]
  SETTABLEKS R21 R20 K19 ["BorderSizePixel"]
  LOADK R21 K21 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K18 ["BackgroundTransparency"]
  LOADK R21 K167 [""]
  SETTABLEKS R21 R20 K165 ["Text"]
  NEWTABLE R21 0 8
  MOVE R22 R2
  LOADK R23 K29 ["TextSize"]
  DUPTABLE R24 K286 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R25 K22 ["$BorderNone"]
  SETTABLEKS R25 R24 K19 ["BorderSizePixel"]
  LOADK R25 K21 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K18 ["BackgroundTransparency"]
  LOADN R25 1
  SETTABLEKS R25 R24 K70 ["LayoutOrder"]
  LOADK R25 K173 ["$IconLarge"]
  SETTABLEKS R25 R24 K42 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K31 ["$FontWeight400"]
  DUPTABLE R25 K288 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R26 K116 [Vector2.new]
  LOADN R27 1
  LOADK R28 K117 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K107 ["AnchorPoint"]
  GETIMPORT R26 K121 [UDim2.fromScale]
  LOADN R27 1
  LOADK R28 K117 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K110 ["Position"]
  LOADK R26 K22 ["$BorderNone"]
  SETTABLEKS R26 R25 K19 ["BorderSizePixel"]
  LOADN R26 1
  SETTABLEKS R26 R25 K18 ["BackgroundTransparency"]
  LOADK R26 K33 ["$FontSize100"]
  SETTABLEKS R26 R25 K193 ["Image"]
  LOADN R26 3
  SETTABLEKS R26 R25 K70 ["LayoutOrder"]
  LOADK R26 K175 ["$IconSmall"]
  SETTABLEKS R26 R25 K42 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K34 [".Text-Title"]
  DUPTABLE R26 K189 [{"LayoutOrder", "Size"}]
  LOADN R27 3
  SETTABLEKS R27 R26 K70 ["LayoutOrder"]
  LOADK R27 K175 ["$IconSmall"]
  SETTABLEKS R27 R26 K42 ["Size"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K38 [">> TextLabel"]
  DUPTABLE R27 K291 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K18 ["BackgroundTransparency"]
  LOADK R28 K31 ["$FontWeight400"]
  SETTABLEKS R28 R27 K14 ["Font"]
  LOADK R28 K94 ["$FontSize150"]
  SETTABLEKS R28 R27 K29 ["TextSize"]
  LOADN R28 2
  SETTABLEKS R28 R27 K70 ["LayoutOrder"]
  LOADK R28 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K28 ["TextColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K53 [".Small"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K29 ["TextSize"]
  DUPTABLE R32 K43 [{"Size"}]
  LOADK R33 K175 ["$IconSmall"]
  SETTABLEKS R33 R32 K42 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K38 [">> TextLabel"]
  DUPTABLE R33 K230 [{"TextSize"}]
  LOADK R34 K33 ["$FontSize100"]
  SETTABLEKS R34 R33 K29 ["TextSize"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K36 [".TooltipBackground"]
  DUPTABLE R29 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K37 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R30 R29 K24 ["BackgroundColor3"]
  LOADK R30 K38 [">> TextLabel"]
  SETTABLEKS R30 R29 K18 ["BackgroundTransparency"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K95 [".State-Selected"]
  DUPTABLE R30 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K97 ["$SemanticColorStatesSelected"]
  SETTABLEKS R31 R30 K24 ["BackgroundColor3"]
  LOADK R31 K98 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R31 R30 K18 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K100 [".State-Disabled"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K29 ["TextSize"]
  DUPTABLE R35 K179 [{"ImageTransparency"}]
  LOADK R36 K180 ["$IconDisabled"]
  SETTABLEKS R36 R35 K178 ["ImageTransparency"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K38 [">> TextLabel"]
  DUPTABLE R36 K39 [{"TextColor3"}]
  LOADK R37 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K28 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K39 [{"TextColor3"}]
  DUPTABLE R21 K43 [{"Size"}]
  GETIMPORT R22 K46 [UDim2.new]
  LOADN R23 0
  LOADN R24 90
  LOADN R25 0
  LOADN R26 20
  CALL R22 4 1
  SETTABLEKS R22 R21 K42 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K40 ["$SemanticColorContentStandardInverse"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 6
  MOVE R24 R2
  LOADK R25 K233 ["::UIStroke"]
  DUPTABLE R26 K297 [{"Thickness"}]
  LOADK R27 K22 ["$BorderNone"]
  SETTABLEKS R27 R26 K235 ["Thickness"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K42 ["Size"]
  DUPTABLE R27 K230 [{"TextSize"}]
  LOADK R28 K94 ["$FontSize150"]
  SETTABLEKS R28 R27 K29 ["TextSize"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K181 [".State-Default"]
  DUPTABLE R28 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K43 [{"Size"}]
  SETTABLEKS R29 R28 K24 ["BackgroundColor3"]
  LOADK R29 K44 ["UDim2"]
  SETTABLEKS R29 R28 K18 ["BackgroundTransparency"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K42 ["Size"]
  DUPTABLE R32 K39 [{"TextColor3"}]
  LOADK R33 K32 ["$SemanticColorContentMuted"]
  SETTABLEKS R33 R32 K28 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K45 ["new"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K233 ["::UIStroke"]
  DUPTABLE R33 K302 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R34 K238 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R34 R33 K234 ["ApplyStrokeMode"]
  LOADK R34 K47 ["> Frame"]
  SETTABLEKS R34 R33 K203 ["Color"]
  LOADK R34 K239 ["$BorderMedium"]
  SETTABLEKS R34 R33 K235 ["Thickness"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K42 ["Size"]
  DUPTABLE R34 K39 [{"TextColor3"}]
  LOADK R35 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K28 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K48 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R30 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K49 ["$SemanticColorDivider"]
  SETTABLEKS R31 R30 K24 ["BackgroundColor3"]
  LOADK R31 K50 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R31 R30 K18 ["BackgroundTransparency"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K42 ["Size"]
  DUPTABLE R34 K39 [{"TextColor3"}]
  LOADK R35 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K28 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K51 [".Role-DividerV"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K233 ["::UIStroke"]
  DUPTABLE R39 K308 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R40 K238 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R40 R39 K234 ["ApplyStrokeMode"]
  LOADK R40 K104 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R40 R39 K203 ["Color"]
  LOADK R40 K105 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R40 R39 K205 ["Transparency"]
  LOADK R40 K239 ["$BorderMedium"]
  SETTABLEKS R40 R39 K235 ["Thickness"]
  CALL R37 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K100 [".State-Disabled"]
  DUPTABLE R31 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K43 [{"Size"}]
  SETTABLEKS R32 R31 K24 ["BackgroundColor3"]
  LOADK R32 K44 ["UDim2"]
  SETTABLEKS R32 R31 K18 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K42 ["Size"]
  DUPTABLE R35 K39 [{"TextColor3"}]
  LOADK R36 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R36 R35 K28 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETLIST R4 R5 16 [33]
  MOVE R5 R2
  LOADK R6 K53 [".Small"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 2
  MOVE R9 R2
  LOADK R10 K190 ["> TextButton"]
  DUPTABLE R11 K43 [{"Size"}]
  GETIMPORT R12 K46 [UDim2.new]
  LOADN R13 0
  LOADN R14 16
  LOADN R15 0
  LOADN R16 8
  CALL R12 4 1
  SETTABLEKS R12 R11 K42 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K54 [".Large"]
  DUPTABLE R15 K43 [{"Size"}]
  GETIMPORT R16 K46 [UDim2.new]
  LOADN R17 0
  LOADN R18 16
  LOADN R19 0
  LOADN R20 8
  CALL R16 4 1
  SETTABLEKS R16 R15 K42 ["Size"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K181 [".State-Default"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K55 [".RibbonButton-Divider"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 3
  MOVE R18 R2
  LOADK R19 K56 ["::UIPadding"]
  DUPTABLE R20 K261 [{"Image"}]
  LOADK R21 K57 ["PaddingLeft"]
  SETTABLEKS R21 R20 K193 ["Image"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K58 ["PaddingRight"]
  DUPTABLE R21 K261 [{"Image"}]
  LOADK R22 K59 [{"PaddingLeft", "PaddingRight"}]
  SETTABLEKS R22 R21 K193 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K60 ["$GlobalSpace150"]
  DUPTABLE R22 K261 [{"Image"}]
  LOADK R23 K61 [".X-RowSpace50"]
  SETTABLEKS R23 R22 K193 ["Image"]
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K62 ["::UIListLayout"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K56 ["::UIPadding"]
  DUPTABLE R21 K261 [{"Image"}]
  LOADK R22 K63 ["FillDirection"]
  SETTABLEKS R22 R21 K193 ["Image"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K58 ["PaddingRight"]
  DUPTABLE R22 K261 [{"Image"}]
  LOADK R23 K64 ["Padding"]
  SETTABLEKS R23 R22 K193 ["Image"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K60 ["$GlobalSpace150"]
  DUPTABLE R23 K261 [{"Image"}]
  LOADK R24 K65 ["SortOrder"]
  SETTABLEKS R24 R23 K193 ["Image"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K66 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R8 K200 [{"BackgroundTransparency"}]
  LOADK R9 K21 ["$BackgroundTransparent"]
  SETTABLEKS R9 R8 K18 ["BackgroundTransparency"]
  NEWTABLE R9 0 3
  MOVE R10 R2
  LOADK R11 K67 ["Horizontal"]
  DUPTABLE R12 K133 [{"CornerRadius"}]
  LOADK R13 K138 ["$GlobalRadiusMedium"]
  SETTABLEKS R13 R12 K132 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K68 [Enum.FillDirection.Horizontal]
  DUPTABLE R13 K236 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R14 K238 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R14 R13 K234 ["ApplyStrokeMode"]
  LOADK R14 K49 ["$SemanticColorDivider"]
  SETTABLEKS R14 R13 K203 ["Color"]
  LOADK R14 K239 ["$BorderMedium"]
  SETTABLEKS R14 R13 K235 ["Thickness"]
  LOADK R14 K50 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R14 R13 K205 ["Transparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K69 ["$GlobalSpace50"]
  DUPTABLE R14 K200 [{"BackgroundTransparency"}]
  LOADK R15 K21 ["$BackgroundTransparent"]
  SETTABLEKS R15 R14 K18 ["BackgroundTransparency"]
  NEWTABLE R15 0 3
  MOVE R16 R2
  LOADK R17 K67 ["Horizontal"]
  DUPTABLE R18 K133 [{"CornerRadius"}]
  LOADK R19 K138 ["$GlobalRadiusMedium"]
  SETTABLEKS R19 R18 K132 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K70 ["LayoutOrder"]
  DUPTABLE R19 K20 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R20 K21 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K18 ["BackgroundTransparency"]
  LOADK R20 K22 ["$BorderNone"]
  SETTABLEKS R20 R19 K19 ["BorderSizePixel"]
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K183 [":hover"]
  DUPTABLE R23 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K104 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R24 R23 K24 ["BackgroundColor3"]
  LOADK R24 K105 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R24 R23 K18 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K71 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R24 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R25 K187 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R25 R24 K24 ["BackgroundColor3"]
  LOADK R25 K186 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R25 R24 K18 ["BackgroundTransparency"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K72 [".X-RowSpace100"]
  DUPTABLE R20 K329 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R21 K94 ["$FontSize150"]
  SETTABLEKS R21 R20 K29 ["TextSize"]
  LOADB R21 0
  SETTABLEKS R21 R20 K164 ["AutoButtonColor"]
  LOADK R21 K22 ["$BorderNone"]
  SETTABLEKS R21 R20 K19 ["BorderSizePixel"]
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K56 ["::UIPadding"]
  DUPTABLE R24 K59 [{"PaddingLeft", "PaddingRight"}]
  LOADK R25 K60 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K57 ["PaddingLeft"]
  LOADK R25 K60 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K58 ["PaddingRight"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K181 [".State-Default"]
  DUPTABLE R25 K330 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R26 K21 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K18 ["BackgroundTransparency"]
  LOADK R26 K35 ["$FontWeight700"]
  SETTABLEKS R26 R25 K14 ["Font"]
  LOADK R26 K32 ["$SemanticColorContentMuted"]
  SETTABLEKS R26 R25 K28 ["TextColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K95 [".State-Selected"]
  DUPTABLE R26 K96 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R27 K97 ["$SemanticColorStatesSelected"]
  SETTABLEKS R27 R26 K24 ["BackgroundColor3"]
  LOADK R27 K98 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R27 R26 K18 ["BackgroundTransparency"]
  LOADK R27 K35 ["$FontWeight700"]
  SETTABLEKS R27 R26 K14 ["Font"]
  LOADK R27 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R27 R26 K28 ["TextColor3"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K75 [".X-RowSpace200"]
  DUPTABLE R9 K332 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R10 K335 [Color3.fromHex]
  LOADK R11 K80 ["$GlobalSpace25"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["BackgroundColor3"]
  LOADK R10 K201 ["$BackgroundNonTransparent"]
  SETTABLEKS R10 R9 K18 ["BackgroundTransparency"]
  GETIMPORT R10 K46 [UDim2.new]
  LOADN R11 0
  LOADN R12 40
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K42 ["Size"]
  NEWTABLE R10 0 6
  MOVE R11 R2
  LOADK R12 K81 [".X-ColumnSpace50"]
  DUPTABLE R13 K133 [{"CornerRadius"}]
  LOADK R14 K82 [".X-ColumnSpace100"]
  SETTABLEKS R14 R13 K132 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K56 ["::UIPadding"]
  DUPTABLE R14 K339 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R15 K80 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K85 ["PaddingBottom"]
  LOADK R15 K80 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K57 ["PaddingLeft"]
  LOADK R15 K80 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K58 ["PaddingRight"]
  LOADK R15 K80 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K84 ["PaddingTop"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K62 ["::UIListLayout"]
  DUPTABLE R15 K341 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R16 K79 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K63 ["FillDirection"]
  GETIMPORT R16 K343 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K340 ["HorizontalAlignment"]
  GETIMPORT R16 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K65 ["SortOrder"]
  GETIMPORT R16 K260 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K257 ["VerticalAlignment"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K47 ["> Frame"]
  DUPTABLE R16 K344 [{"BackgroundColor3", "Size"}]
  LOADK R17 K89 [".X-MezzPaddingRight ::UIPadding"]
  SETTABLEKS R17 R16 K24 ["BackgroundColor3"]
  GETIMPORT R17 K46 [UDim2.new]
  LOADN R18 0
  LOADN R19 20
  LOADN R20 0
  LOADN R21 20
  CALL R17 4 1
  SETTABLEKS R17 R16 K42 ["Size"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K81 [".X-ColumnSpace50"]
  DUPTABLE R20 K133 [{"CornerRadius"}]
  LOADK R21 K82 [".X-ColumnSpace100"]
  SETTABLEKS R21 R20 K132 ["CornerRadius"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K95 [".State-Selected"]
  DUPTABLE R17 K346 [{"BackgroundColor3"}]
  GETIMPORT R18 K335 [Color3.fromHex]
  LOADK R19 K91 [".X-RowXS"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K24 ["BackgroundColor3"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K62 ["::UIListLayout"]
  DUPTABLE R21 K348 [{"HorizontalAlignment"}]
  GETIMPORT R22 K350 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R22 R21 K340 ["HorizontalAlignment"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K100 [".State-Disabled"]
  DUPTABLE R18 K200 [{"BackgroundTransparency"}]
  LOADK R19 K95 [".State-Selected"]
  SETTABLEKS R19 R18 K18 ["BackgroundTransparency"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K47 ["> Frame"]
  DUPTABLE R22 K200 [{"BackgroundTransparency"}]
  LOADK R23 K95 [".State-Selected"]
  SETTABLEKS R23 R22 K18 ["BackgroundTransparency"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K96 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  DUPTABLE R10 K354 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K353 ["Active"]
  LOADB R11 0
  SETTABLEKS R11 R10 K164 ["AutoButtonColor"]
  GETIMPORT R11 K116 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K107 ["AnchorPoint"]
  GETIMPORT R11 K121 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K110 ["Position"]
  LOADK R11 K167 [""]
  SETTABLEKS R11 R10 K165 ["Text"]
  LOADN R11 2
  SETTABLEKS R11 R10 K215 ["ZIndex"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K99 ["$SemanticColorContentStandard"]
  DUPTABLE R11 K356 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R12 K116 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K107 ["AnchorPoint"]
  GETIMPORT R12 K46 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  CALL R12 4 1
  SETTABLEKS R12 R11 K110 ["Position"]
  GETIMPORT R12 K46 [UDim2.new]
  LOADN R13 0
  LOADN R14 22
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K42 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K202 ["::UIGradient"]
  DUPTABLE R15 K206 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R16 K358 [ColorSequence.new]
  GETIMPORT R17 K335 [Color3.fromHex]
  LOADK R18 K103 [{"BackgroundColor3", "BackgroundTransparency"}]
  CALL R17 1 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K203 ["Color"]
  LOADN R16 180
  SETTABLEKS R16 R15 K204 ["Rotation"]
  GETIMPORT R16 K361 [NumberSequence.new]
  NEWTABLE R17 0 3
  GETIMPORT R18 K363 [NumberSequenceKeypoint.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  GETIMPORT R19 K363 [NumberSequenceKeypoint.new]
  LOADK R20 K117 [0.5]
  LOADN R21 0
  CALL R19 2 1
  GETIMPORT R20 K363 [NumberSequenceKeypoint.new]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R16 1 1
  SETTABLEKS R16 R15 K205 ["Transparency"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K108 ["AutomaticCanvasSize"]
  DUPTABLE R12 K43 [{"Size"}]
  GETIMPORT R13 K46 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 84
  CALL R13 4 1
  SETTABLEKS R13 R12 K42 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K109 ["AutomaticSize"]
  DUPTABLE R13 K43 [{"Size"}]
  GETIMPORT R14 K46 [UDim2.new]
  LOADN R15 1
  LOADN R16 224
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K42 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K110 ["Position"]
  DUPTABLE R14 K128 [{"AnchorPoint", "Position"}]
  GETIMPORT R15 K116 [Vector2.new]
  LOADN R16 0
  LOADK R17 K117 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K107 ["AnchorPoint"]
  GETIMPORT R15 K46 [UDim2.new]
  LOADN R16 0
  LOADN R17 165
  LOADK R18 K117 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K110 ["Position"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K111 ["ScrollingDirection"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K62 ["::UIListLayout"]
  DUPTABLE R19 K368 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R20 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K63 ["FillDirection"]
  GETIMPORT R20 K343 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K340 ["HorizontalAlignment"]
  GETIMPORT R20 K71 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K65 ["SortOrder"]
  GETIMPORT R20 K260 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K257 ["VerticalAlignment"]
  LOADK R20 K73 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K64 ["Padding"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K168 ["> TextLabel"]
  DUPTABLE R20 K291 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R21 K21 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K18 ["BackgroundTransparency"]
  LOADK R21 K31 ["$FontWeight400"]
  SETTABLEKS R21 R20 K14 ["Font"]
  LOADK R21 K94 ["$FontSize150"]
  SETTABLEKS R21 R20 K29 ["TextSize"]
  LOADN R21 0
  SETTABLEKS R21 R20 K70 ["LayoutOrder"]
  LOADK R21 K99 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K28 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K100 [".State-Disabled"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K168 ["> TextLabel"]
  DUPTABLE R25 K39 [{"TextColor3"}]
  LOADK R26 K101 ["$SemanticColorContentDisabled"]
  SETTABLEKS R26 R25 K28 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R4 R5 -1 [49]
  MOVE R5 R3
  LOADK R6 K113 ["HorizontalScrollBarInset"]
  MOVE R7 R4
  DUPTABLE R8 K371 [{"Size", "SizeDense"}]
  GETIMPORT R9 K46 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K42 ["Size"]
  GETIMPORT R9 K46 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K370 ["SizeDense"]
  CALL R5 3 -1
  RETURN R5 -1
