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
  NEWTABLE R4 0 56
  MOVE R5 R2
  LOADK R6 K10 [".Role-Surface"]
  DUPTABLE R7 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R8 K14 ["$BackgroundTransparent"]
  SETTABLEKS R8 R7 K11 ["BackgroundTransparency"]
  LOADK R8 K15 ["$BorderNone"]
  SETTABLEKS R8 R7 K12 ["BorderSizePixel"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K16 [".Role-Surface100"]
  DUPTABLE R8 K18 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R9 K19 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R9 R8 K17 ["BackgroundColor3"]
  LOADK R9 K15 ["$BorderNone"]
  SETTABLEKS R9 R8 K12 ["BorderSizePixel"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 [".Text-Label"]
  DUPTABLE R9 K24 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R10 K25 ["$FontWeight400"]
  SETTABLEKS R10 R9 K21 ["Font"]
  LOADK R10 K26 ["$SemanticColorContentMuted"]
  SETTABLEKS R10 R9 K22 ["TextColor3"]
  LOADK R10 K27 ["$FontSize100"]
  SETTABLEKS R10 R9 K23 ["TextSize"]
  LOADK R10 K15 ["$BorderNone"]
  SETTABLEKS R10 R9 K12 ["BorderSizePixel"]
  LOADK R10 K14 ["$BackgroundTransparent"]
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K28 [".Text-Title"]
  DUPTABLE R10 K24 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R11 K29 ["$FontWeight700"]
  SETTABLEKS R11 R10 K21 ["Font"]
  LOADK R11 K26 ["$SemanticColorContentMuted"]
  SETTABLEKS R11 R10 K22 ["TextColor3"]
  LOADK R11 K27 ["$FontSize100"]
  SETTABLEKS R11 R10 K23 ["TextSize"]
  LOADK R11 K15 ["$BorderNone"]
  SETTABLEKS R11 R10 K12 ["BorderSizePixel"]
  LOADK R11 K14 ["$BackgroundTransparent"]
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 [".TooltipBackground"]
  DUPTABLE R11 K18 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R12 K31 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R12 R11 K17 ["BackgroundColor3"]
  LOADK R12 K15 ["$BorderNone"]
  SETTABLEKS R12 R11 K12 ["BorderSizePixel"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K32 [">> TextLabel"]
  DUPTABLE R15 K33 [{"TextColor3"}]
  LOADK R16 K34 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R16 R15 K22 ["TextColor3"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K35 [".Role-DividerH"]
  DUPTABLE R12 K37 [{"Size"}]
  GETIMPORT R13 K40 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K36 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K41 ["> Frame"]
  DUPTABLE R16 K42 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R17 K43 ["$SemanticColorDivider"]
  SETTABLEKS R17 R16 K17 ["BackgroundColor3"]
  LOADK R17 K44 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R17 R16 K11 ["BackgroundTransparency"]
  LOADK R17 K15 ["$BorderNone"]
  SETTABLEKS R17 R16 K12 ["BorderSizePixel"]
  GETIMPORT R17 K40 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 1
  CALL R17 4 1
  SETTABLEKS R17 R16 K36 ["Size"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K45 [".Role-DividerV"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 4
  MOVE R15 R2
  LOADK R16 K41 ["> Frame"]
  DUPTABLE R17 K46 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R18 K43 ["$SemanticColorDivider"]
  SETTABLEKS R18 R17 K17 ["BackgroundColor3"]
  LOADK R18 K44 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R18 R17 K11 ["BackgroundTransparency"]
  LOADK R18 K15 ["$BorderNone"]
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K47 [".Small"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K41 ["> Frame"]
  DUPTABLE R22 K37 [{"Size"}]
  GETIMPORT R23 K40 [UDim2.new]
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  LOADN R27 28
  CALL R23 4 1
  SETTABLEKS R23 R22 K36 ["Size"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K48 [".Large"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K41 ["> Frame"]
  DUPTABLE R23 K37 [{"Size"}]
  GETIMPORT R24 K40 [UDim2.new]
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  LOADN R28 64
  CALL R24 4 1
  SETTABLEKS R24 R23 K36 ["Size"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K49 [".RibbonButton-Divider"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K50 ["::UIPadding"]
  DUPTABLE R24 K53 [{"PaddingLeft", "PaddingRight"}]
  LOADK R25 K54 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K51 ["PaddingLeft"]
  LOADK R25 K54 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K52 ["PaddingRight"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K55 [".X-RowSpace50"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K56 ["::UIListLayout"]
  DUPTABLE R18 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K57 ["FillDirection"]
  LOADK R19 K64 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K58 ["Padding"]
  GETIMPORT R19 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K59 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K67 [".X-RowSpace100"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K56 ["::UIListLayout"]
  DUPTABLE R19 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K57 ["FillDirection"]
  LOADK R20 K68 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K58 ["Padding"]
  GETIMPORT R20 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K59 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K69 [".X-RowSpace150"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K56 ["::UIListLayout"]
  DUPTABLE R20 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K57 ["FillDirection"]
  LOADK R21 K54 ["$GlobalSpace150"]
  SETTABLEKS R21 R20 K58 ["Padding"]
  GETIMPORT R21 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K59 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K70 [".X-RowSpace200"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K56 ["::UIListLayout"]
  DUPTABLE R21 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K57 ["FillDirection"]
  LOADK R22 K71 ["$GlobalSpace200"]
  SETTABLEKS R22 R21 K58 ["Padding"]
  GETIMPORT R22 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K59 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K72 [".X-ColumnSpace25"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K56 ["::UIListLayout"]
  DUPTABLE R22 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K74 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K57 ["FillDirection"]
  LOADK R23 K75 ["$GlobalSpace25"]
  SETTABLEKS R23 R22 K58 ["Padding"]
  GETIMPORT R23 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K59 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K76 [".X-ColumnSpace50"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K56 ["::UIListLayout"]
  DUPTABLE R23 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K74 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K57 ["FillDirection"]
  LOADK R24 K64 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K58 ["Padding"]
  GETIMPORT R24 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K59 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K77 [".X-ColumnSpace100"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K56 ["::UIListLayout"]
  DUPTABLE R24 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R25 K74 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K57 ["FillDirection"]
  LOADK R25 K68 ["$GlobalSpace100"]
  SETTABLEKS R25 R24 K58 ["Padding"]
  GETIMPORT R25 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K59 ["SortOrder"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K78 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R21 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K54 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K51 ["PaddingLeft"]
  LOADK R22 K54 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K52 ["PaddingRight"]
  LOADK R22 K54 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K79 ["PaddingTop"]
  LOADK R22 K54 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K80 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K82 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R22 K83 [{"PaddingLeft"}]
  LOADK R23 K68 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K51 ["PaddingLeft"]
  CALL R20 2 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K84 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R7 K85 [{"PaddingRight"}]
  LOADK R8 K68 ["$GlobalSpace100"]
  SETTABLEKS R8 R7 K52 ["PaddingRight"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K86 [".X-RowXS"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K56 ["::UIListLayout"]
  DUPTABLE R12 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R13 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K57 ["FillDirection"]
  LOADK R13 K75 ["$GlobalSpace25"]
  SETTABLEKS R13 R12 K58 ["Padding"]
  GETIMPORT R13 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K59 ["SortOrder"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K87 [".Component-RibbonTab"]
  DUPTABLE R9 K88 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  LOADK R10 K14 ["$BackgroundTransparent"]
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  LOADK R10 K25 ["$FontWeight400"]
  SETTABLEKS R10 R9 K21 ["Font"]
  GETIMPORT R10 K40 [UDim2.new]
  LOADN R11 0
  LOADN R12 80
  LOADN R13 0
  LOADN R14 28
  CALL R10 4 1
  SETTABLEKS R10 R9 K36 ["Size"]
  LOADK R10 K26 ["$SemanticColorContentMuted"]
  SETTABLEKS R10 R9 K22 ["TextColor3"]
  LOADK R10 K89 ["$FontSize150"]
  SETTABLEKS R10 R9 K23 ["TextSize"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K90 [".State-Selected"]
  DUPTABLE R13 K91 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R14 K92 ["$SemanticColorStatesSelected"]
  SETTABLEKS R14 R13 K17 ["BackgroundColor3"]
  LOADK R14 K93 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R14 R13 K11 ["BackgroundTransparency"]
  LOADK R14 K29 ["$FontWeight700"]
  SETTABLEKS R14 R13 K21 ["Font"]
  LOADK R14 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R14 R13 K22 ["TextColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K95 [".State-Disabled"]
  DUPTABLE R14 K33 [{"TextColor3"}]
  LOADK R15 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R15 R14 K22 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K97 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R15 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R16 R15 K17 ["BackgroundColor3"]
  LOADK R16 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K101 [".Component-RibbonTabs"]
  DUPTABLE R10 K109 [{"AnchorPoint", "AutomaticCanvasSize", "AutomaticSize", "Position", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R11 K111 [Vector2.new]
  LOADK R12 K112 [0.5]
  LOADK R13 K112 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K102 ["AnchorPoint"]
  GETIMPORT R11 K114 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K103 ["AutomaticCanvasSize"]
  GETIMPORT R11 K114 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K104 ["AutomaticSize"]
  GETIMPORT R11 K116 [UDim2.fromScale]
  LOADK R12 K112 [0.5]
  LOADK R13 K112 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K105 ["Position"]
  GETIMPORT R11 K118 [Enum.ScrollingDirection.X]
  SETTABLEKS R11 R10 K106 ["ScrollingDirection"]
  LOADN R11 0
  SETTABLEKS R11 R10 K107 ["ScrollBarThickness"]
  GETIMPORT R11 K121 [Enum.ScrollBarInset.None]
  SETTABLEKS R11 R10 K108 ["HorizontalScrollBarInset"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K122 [".Medium"]
  DUPTABLE R14 K123 [{"AnchorPoint", "Position"}]
  GETIMPORT R15 K111 [Vector2.new]
  LOADN R16 1
  LOADK R17 K112 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K102 ["AnchorPoint"]
  GETIMPORT R15 K40 [UDim2.new]
  LOADN R16 1
  LOADN R17 242
  LOADK R18 K112 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K105 ["Position"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K47 [".Small"]
  DUPTABLE R15 K124 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R16 K111 [Vector2.new]
  LOADN R17 0
  LOADK R18 K112 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K102 ["AnchorPoint"]
  GETIMPORT R16 K125 [Enum.AutomaticSize.None]
  SETTABLEKS R16 R15 K104 ["AutomaticSize"]
  GETIMPORT R16 K40 [UDim2.new]
  LOADN R17 0
  LOADN R18 160
  LOADK R19 K112 [0.5]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K105 ["Position"]
  GETIMPORT R16 K40 [UDim2.new]
  LOADN R17 1
  LOADN R18 82
  LOADN R19 0
  LOADN R20 28
  CALL R16 4 1
  SETTABLEKS R16 R15 K36 ["Size"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K126 [".X-CornerXS ::UICorner"]
  DUPTABLE R11 K128 [{"CornerRadius"}]
  LOADK R12 K129 ["$GlobalRadiusXSmall"]
  SETTABLEKS R12 R11 K127 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K130 [".X-CornerS ::UICorner"]
  DUPTABLE R12 K128 [{"CornerRadius"}]
  LOADK R13 K131 ["$GlobalRadiusSmall"]
  SETTABLEKS R13 R12 K127 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K132 [".X-CornerM ::UICorner"]
  DUPTABLE R13 K128 [{"CornerRadius"}]
  LOADK R14 K133 ["$GlobalRadiusMedium"]
  SETTABLEKS R14 R13 K127 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K134 [".X-PadMezz :: UIPadding"]
  DUPTABLE R14 K83 [{"PaddingLeft"}]
  GETIMPORT R15 K136 [UDim.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K51 ["PaddingLeft"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K137 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R15 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K136 [UDim.new]
  LOADN R17 0
  LOADN R18 10
  CALL R16 2 1
  SETTABLEKS R16 R15 K51 ["PaddingLeft"]
  GETIMPORT R16 K136 [UDim.new]
  LOADN R17 0
  LOADN R18 10
  CALL R16 2 1
  SETTABLEKS R16 R15 K52 ["PaddingRight"]
  LOADK R16 K68 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K79 ["PaddingTop"]
  LOADK R16 K68 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K80 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K138 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R16 K83 [{"PaddingLeft"}]
  LOADK R17 K68 ["$GlobalSpace100"]
  SETTABLEKS R17 R16 K51 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K139 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R17 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R18 K75 ["$GlobalSpace25"]
  SETTABLEKS R18 R17 K51 ["PaddingLeft"]
  LOADK R18 K140 ["$GlobalSpace75"]
  SETTABLEKS R18 R17 K52 ["PaddingRight"]
  LOADK R18 K141 ["$GlobalSpace350"]
  SETTABLEKS R18 R17 K79 ["PaddingTop"]
  LOADK R18 K140 ["$GlobalSpace75"]
  SETTABLEKS R18 R17 K80 ["PaddingBottom"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K142 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R18 K143 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R19 K75 ["$GlobalSpace25"]
  SETTABLEKS R19 R18 K52 ["PaddingRight"]
  LOADK R19 K144 ["$GlobalSpace250"]
  SETTABLEKS R19 R18 K79 ["PaddingTop"]
  LOADK R19 K64 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K80 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K145 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R19 K83 [{"PaddingLeft"}]
  LOADK R20 K140 ["$GlobalSpace75"]
  SETTABLEKS R20 R19 K51 ["PaddingLeft"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K146 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R20 K147 [{"PaddingTop", "PaddingBottom"}]
  LOADK R21 K64 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K79 ["PaddingTop"]
  LOADK R21 K64 ["$GlobalSpace50"]
  SETTABLEKS R21 R20 K80 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K148 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R21 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K54 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K51 ["PaddingLeft"]
  LOADK R22 K68 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K52 ["PaddingRight"]
  LOADK R22 K54 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K79 ["PaddingTop"]
  LOADK R22 K54 ["$GlobalSpace150"]
  SETTABLEKS R22 R21 K80 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K149 [".X-PadTabMenu ::UIPadding"]
  DUPTABLE R22 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K68 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K51 ["PaddingLeft"]
  LOADK R23 K68 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K52 ["PaddingRight"]
  LOADK R23 K68 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K79 ["PaddingTop"]
  LOADK R23 K68 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K80 ["PaddingBottom"]
  CALL R20 2 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K150 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R7 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R8 K140 ["$GlobalSpace75"]
  SETTABLEKS R8 R7 K51 ["PaddingLeft"]
  LOADK R8 K140 ["$GlobalSpace75"]
  SETTABLEKS R8 R7 K52 ["PaddingRight"]
  LOADK R8 K140 ["$GlobalSpace75"]
  SETTABLEKS R8 R7 K79 ["PaddingTop"]
  LOADK R8 K140 ["$GlobalSpace75"]
  SETTABLEKS R8 R7 K80 ["PaddingBottom"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K151 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R8 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R9 K68 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K51 ["PaddingLeft"]
  LOADK R9 K68 ["$GlobalSpace100"]
  SETTABLEKS R9 R8 K52 ["PaddingRight"]
  LOADK R9 K64 ["$GlobalSpace50"]
  SETTABLEKS R9 R8 K79 ["PaddingTop"]
  LOADK R9 K64 ["$GlobalSpace50"]
  SETTABLEKS R9 R8 K80 ["PaddingBottom"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K152 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R9 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R10 K140 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K51 ["PaddingLeft"]
  LOADK R10 K140 ["$GlobalSpace75"]
  SETTABLEKS R10 R9 K52 ["PaddingRight"]
  LOADK R10 K64 ["$GlobalSpace50"]
  SETTABLEKS R10 R9 K79 ["PaddingTop"]
  LOADK R10 K64 ["$GlobalSpace50"]
  SETTABLEKS R10 R9 K80 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K153 [".X-RowSplitButton"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K56 ["::UIListLayout"]
  DUPTABLE R14 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K57 ["FillDirection"]
  LOADK R15 K75 ["$GlobalSpace25"]
  SETTABLEKS R15 R14 K58 ["Padding"]
  GETIMPORT R15 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K59 ["SortOrder"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K154 [".X-RowSplitButtonSmall"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K56 ["::UIListLayout"]
  DUPTABLE R15 K155 [{"FillDirection", "SortOrder"}]
  GETIMPORT R16 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K57 ["FillDirection"]
  GETIMPORT R16 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K59 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K156 [".X-RowSpinbox"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K56 ["::UIListLayout"]
  DUPTABLE R16 K60 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K57 ["FillDirection"]
  LOADK R17 K64 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K58 ["Padding"]
  GETIMPORT R17 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K59 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K157 [".X-PadSpinBox ::UIPadding"]
  DUPTABLE R13 K83 [{"PaddingLeft"}]
  LOADK R14 K68 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K51 ["PaddingLeft"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K158 [".Component-RibbonButton"]
  DUPTABLE R14 K161 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K159 ["AutoButtonColor"]
  LOADK R15 K14 ["$BackgroundTransparent"]
  SETTABLEKS R15 R14 K11 ["BackgroundTransparency"]
  LOADK R15 K15 ["$BorderNone"]
  SETTABLEKS R15 R14 K12 ["BorderSizePixel"]
  LOADK R15 K162 [""]
  SETTABLEKS R15 R14 K160 ["Text"]
  NEWTABLE R15 0 7
  MOVE R16 R2
  LOADK R17 K163 ["> TextLabel"]
  DUPTABLE R18 K164 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize"}]
  LOADK R19 K14 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K11 ["BackgroundTransparency"]
  LOADK R19 K25 ["$FontWeight400"]
  SETTABLEKS R19 R18 K21 ["Font"]
  LOADN R19 2
  SETTABLEKS R19 R18 K65 ["LayoutOrder"]
  LOADK R19 K26 ["$SemanticColorContentMuted"]
  SETTABLEKS R19 R18 K22 ["TextColor3"]
  LOADK R19 K27 ["$FontSize100"]
  SETTABLEKS R19 R18 K23 ["TextSize"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K165 [">> #RibbonToolButtonIcon"]
  DUPTABLE R19 K166 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R20 K14 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADK R20 K15 ["$BorderNone"]
  SETTABLEKS R20 R19 K12 ["BorderSizePixel"]
  LOADN R20 0
  SETTABLEKS R20 R19 K65 ["LayoutOrder"]
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K167 [".Icon-Large"]
  DUPTABLE R23 K37 [{"Size"}]
  LOADK R24 K168 ["$IconLarge"]
  SETTABLEKS R24 R23 K36 ["Size"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K169 [".Icon-Small"]
  DUPTABLE R24 K37 [{"Size"}]
  LOADK R25 K170 ["$IconSmall"]
  SETTABLEKS R25 R24 K36 ["Size"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K95 [".State-Disabled"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K171 [">> #RibbonTool"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K172 ["> #RibbonToolButtonIcon"]
  DUPTABLE R28 K174 [{"ImageTransparency"}]
  LOADK R29 K175 ["$IconDisabled"]
  SETTABLEKS R29 R28 K173 ["ImageTransparency"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K163 ["> TextLabel"]
  DUPTABLE R25 K33 [{"TextColor3"}]
  LOADK R26 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R26 R25 K22 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K176 [".State-Default"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K171 [">> #RibbonTool"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K177 [":hover"]
  DUPTABLE R29 K178 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R30 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R30 R29 K11 ["BackgroundTransparency"]
  LOADK R30 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R30 R29 K17 ["BackgroundColor3"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K179 [":pressed"]
  DUPTABLE R30 K178 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R31 K180 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R31 R30 K11 ["BackgroundTransparency"]
  LOADK R31 K181 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R31 R30 K17 ["BackgroundColor3"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K90 [".State-Selected"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K171 [">> #RibbonTool"]
  DUPTABLE R26 K178 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R27 K93 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R27 R26 K11 ["BackgroundTransparency"]
  LOADK R27 K92 ["$SemanticColorStatesSelected"]
  SETTABLEKS R27 R26 K17 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K182 [">> Frame .Component-SplitButtonDropdown"]
  DUPTABLE R23 K183 [{"LayoutOrder", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K65 ["LayoutOrder"]
  GETIMPORT R24 K40 [UDim2.new]
  LOADN R25 0
  LOADN R26 12
  LOADN R27 0
  LOADN R28 40
  CALL R24 4 1
  SETTABLEKS R24 R23 K36 ["Size"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K47 [".Small"]
  DUPTABLE R27 K37 [{"Size"}]
  GETIMPORT R28 K40 [UDim2.new]
  LOADN R29 0
  LOADN R30 6
  LOADN R31 0
  LOADN R32 28
  CALL R28 4 1
  SETTABLEKS R28 R27 K36 ["Size"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K184 ["> TextButton"]
  DUPTABLE R28 K185 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R29 K136 [UDim.new]
  LOADN R30 1
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K102 ["AnchorPoint"]
  LOADB R29 0
  SETTABLEKS R29 R28 K159 ["AutoButtonColor"]
  GETIMPORT R29 K40 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K105 ["Position"]
  LOADK R29 K162 [""]
  SETTABLEKS R29 R28 K160 ["Text"]
  LOADN R29 1
  SETTABLEKS R29 R28 K23 ["TextSize"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K186 ["> ImageLabel"]
  DUPTABLE R32 K188 [{"Image", "Size"}]
  LOADK R33 K189 ["$ArrowDownAngleSmall"]
  SETTABLEKS R33 R32 K187 ["Image"]
  GETIMPORT R33 K191 [UDim2.fromOffset]
  LOADN R34 6
  LOADN R35 6
  CALL R33 2 1
  SETTABLEKS R33 R32 K36 ["Size"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K47 [".Small"]
  DUPTABLE R36 K37 [{"Size"}]
  GETIMPORT R37 K191 [UDim2.fromOffset]
  LOADN R38 4
  LOADN R39 4
  CALL R37 2 1
  SETTABLEKS R37 R36 K36 ["Size"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K192 ["> Frame #StateLayer"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K193 [".State-Gradient-Hover"]
  DUPTABLE R28 K194 [{"BackgroundTransparency"}]
  LOADK R29 K195 ["$BackgroundNonTransparent"]
  SETTABLEKS R29 R28 K11 ["BackgroundTransparency"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K196 ["::UIGradient"]
  DUPTABLE R32 K200 [{"Color", "Rotation", "Transparency"}]
  LOADK R33 K201 ["$SemanticColorStateLayerHoverGradient"]
  SETTABLEKS R33 R32 K197 ["Color"]
  LOADK R33 K202 ["$SemanticColorStateLayerHoverGradientRotation"]
  SETTABLEKS R33 R32 K198 ["Rotation"]
  LOADK R33 K203 ["$SemanticColorStateLayerHoverGradientTransparency"]
  SETTABLEKS R33 R32 K199 ["Transparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K204 [".State-Gradient-Pressed"]
  DUPTABLE R29 K194 [{"BackgroundTransparency"}]
  LOADK R30 K195 ["$BackgroundNonTransparent"]
  SETTABLEKS R30 R29 K11 ["BackgroundTransparency"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K196 ["::UIGradient"]
  DUPTABLE R33 K200 [{"Color", "Rotation", "Transparency"}]
  LOADK R34 K205 ["$SemanticColorStateLayerPressGradient"]
  SETTABLEKS R34 R33 K197 ["Color"]
  LOADK R34 K206 ["$SemanticColorStateLayerPressGradientRotation"]
  SETTABLEKS R34 R33 K198 ["Rotation"]
  LOADK R34 K207 ["$SemanticColorStateLayerPressGradientTransparency"]
  SETTABLEKS R34 R33 K199 ["Transparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K208 [".Ribbon-More"]
  DUPTABLE R15 K210 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R16 K111 [Vector2.new]
  LOADN R17 1
  LOADK R18 K112 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K102 ["AnchorPoint"]
  GETIMPORT R16 K40 [UDim2.new]
  LOADN R17 1
  LOADN R18 248
  LOADK R19 K112 [0.5]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K105 ["Position"]
  LOADN R16 3
  SETTABLEKS R16 R15 K209 ["ZIndex"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K211 [".Component-Button"]
  DUPTABLE R16 K212 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R17 0
  SETTABLEKS R17 R16 K159 ["AutoButtonColor"]
  LOADK R17 K162 [""]
  SETTABLEKS R17 R16 K160 ["Text"]
  GETIMPORT R17 K40 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K36 ["Size"]
  NEWTABLE R17 0 4
  MOVE R18 R2
  LOADK R19 K213 ["> #StateLayer"]
  DUPTABLE R20 K37 [{"Size"}]
  GETIMPORT R21 K40 [UDim2.new]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  LOADN R25 28
  CALL R21 4 1
  SETTABLEKS R21 R20 K36 ["Size"]
  NEWTABLE R21 0 6
  MOVE R22 R2
  LOADK R23 K56 ["::UIListLayout"]
  DUPTABLE R24 K214 [{"Padding"}]
  LOADK R25 K64 ["$GlobalSpace50"]
  SETTABLEKS R25 R24 K58 ["Padding"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K215 [".X-PadButtonSmall ::UIPadding"]
  DUPTABLE R25 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R26 K54 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K51 ["PaddingLeft"]
  LOADK R26 K54 ["$GlobalSpace150"]
  SETTABLEKS R26 R25 K52 ["PaddingRight"]
  LOADK R26 K64 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K79 ["PaddingTop"]
  LOADK R26 K64 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K80 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K216 [".X-PadButtonLarge ::UIPadding"]
  DUPTABLE R26 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R27 K144 ["$GlobalSpace250"]
  SETTABLEKS R27 R26 K51 ["PaddingLeft"]
  LOADK R27 K144 ["$GlobalSpace250"]
  SETTABLEKS R27 R26 K52 ["PaddingRight"]
  LOADK R27 K54 ["$GlobalSpace150"]
  SETTABLEKS R27 R26 K79 ["PaddingTop"]
  LOADK R27 K54 ["$GlobalSpace150"]
  SETTABLEKS R27 R26 K80 ["PaddingBottom"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K217 [".X-PadButtonMedium ::UIPadding"]
  DUPTABLE R27 K81 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R28 K71 ["$GlobalSpace200"]
  SETTABLEKS R28 R27 K51 ["PaddingLeft"]
  LOADK R28 K71 ["$GlobalSpace200"]
  SETTABLEKS R28 R27 K52 ["PaddingRight"]
  LOADK R28 K68 ["$GlobalSpace100"]
  SETTABLEKS R28 R27 K79 ["PaddingTop"]
  LOADK R28 K68 ["$GlobalSpace100"]
  SETTABLEKS R28 R27 K80 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K218 ["> #ButtonIcon"]
  DUPTABLE R28 K219 [{"LayoutOrder"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K65 ["LayoutOrder"]
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K167 [".Icon-Large"]
  DUPTABLE R32 K37 [{"Size"}]
  LOADK R33 K168 ["$IconLarge"]
  SETTABLEKS R33 R32 K36 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K169 [".Icon-Small"]
  DUPTABLE R33 K37 [{"Size"}]
  LOADK R34 K170 ["$IconSmall"]
  SETTABLEKS R34 R33 K36 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K220 [".Right"]
  DUPTABLE R34 K219 [{"LayoutOrder"}]
  LOADN R35 3
  SETTABLEKS R35 R34 K65 ["LayoutOrder"]
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K221 ["> #ButtonText"]
  DUPTABLE R29 K222 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R30 K29 ["$FontWeight700"]
  SETTABLEKS R30 R29 K21 ["Font"]
  LOADK R30 K223 ["$FontSize200"]
  SETTABLEKS R30 R29 K23 ["TextSize"]
  LOADN R30 2
  SETTABLEKS R30 R29 K65 ["LayoutOrder"]
  LOADK R30 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R30 R29 K22 ["TextColor3"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K47 [".Small"]
  DUPTABLE R33 K224 [{"TextSize"}]
  LOADK R34 K89 ["$FontSize150"]
  SETTABLEKS R34 R33 K23 ["TextSize"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K48 [".Large"]
  DUPTABLE R34 K224 [{"TextSize"}]
  LOADK R35 K225 ["$FontSize300"]
  SETTABLEKS R35 R34 K23 ["TextSize"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K226 [".Outline"]
  DUPTABLE R21 K37 [{"Size"}]
  GETIMPORT R22 K40 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  LOADN R26 26
  CALL R22 4 1
  SETTABLEKS R22 R21 K36 ["Size"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K227 ["::UIStroke"]
  DUPTABLE R25 K230 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R26 K232 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K228 ["ApplyStrokeMode"]
  LOADK R26 K43 ["$SemanticColorDivider"]
  SETTABLEKS R26 R25 K197 ["Color"]
  LOADK R26 K233 ["$BorderMedium"]
  SETTABLEKS R26 R25 K229 ["Thickness"]
  LOADK R26 K44 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R26 R25 K199 ["Transparency"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K213 ["> #StateLayer"]
  DUPTABLE R26 K37 [{"Size"}]
  GETIMPORT R27 K40 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  LOADN R31 26
  CALL R27 4 1
  SETTABLEKS R27 R26 K36 ["Size"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K95 [".State-Disabled"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K234 [">> #ButtonIcon"]
  DUPTABLE R26 K174 [{"ImageTransparency"}]
  LOADK R27 K175 ["$IconDisabled"]
  SETTABLEKS R27 R26 K173 ["ImageTransparency"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K235 [">> #ButtonText"]
  DUPTABLE R27 K33 [{"TextColor3"}]
  LOADK R28 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R28 R27 K22 ["TextColor3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K176 [".State-Default"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K236 [":hover > #StateLayer"]
  DUPTABLE R27 K178 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R28 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  LOADK R28 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R28 R27 K17 ["BackgroundColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K237 [":pressed > #StateLayer"]
  DUPTABLE R28 K178 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K180 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R29 R28 K11 ["BackgroundTransparency"]
  LOADK R29 K181 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R29 R28 K17 ["BackgroundColor3"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K238 [".Component-RibbonCheckbox"]
  DUPTABLE R17 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R18 K14 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K11 ["BackgroundTransparency"]
  LOADK R18 K15 ["$BorderNone"]
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  NEWTABLE R18 0 9
  MOVE R19 R2
  LOADK R20 K239 [">> #CheckboxButton"]
  DUPTABLE R21 K240 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K159 ["AutoButtonColor"]
  LOADK R22 K14 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K11 ["BackgroundTransparency"]
  LOADK R22 K15 ["$BorderNone"]
  SETTABLEKS R22 R21 K12 ["BorderSizePixel"]
  LOADN R22 1
  SETTABLEKS R22 R21 K65 ["LayoutOrder"]
  LOADK R22 K162 [""]
  SETTABLEKS R22 R21 K160 ["Text"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K241 [">> #CheckboxLabel"]
  DUPTABLE R22 K242 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R23 K14 ["$BackgroundTransparent"]
  SETTABLEKS R23 R22 K11 ["BackgroundTransparency"]
  LOADK R23 K15 ["$BorderNone"]
  SETTABLEKS R23 R22 K12 ["BorderSizePixel"]
  LOADK R23 K25 ["$FontWeight400"]
  SETTABLEKS R23 R22 K21 ["Font"]
  LOADN R23 2
  SETTABLEKS R23 R22 K65 ["LayoutOrder"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K243 [">> #CheckboxIcon"]
  DUPTABLE R23 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R24 K14 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K11 ["BackgroundTransparency"]
  LOADK R24 K15 ["$BorderNone"]
  SETTABLEKS R24 R23 K12 ["BorderSizePixel"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K244 [".Small, .Medium"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K239 [">> #CheckboxButton"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K56 ["::UIListLayout"]
  DUPTABLE R32 K246 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R33 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K57 ["FillDirection"]
  LOADK R33 K68 ["$GlobalSpace100"]
  SETTABLEKS R33 R32 K58 ["Padding"]
  GETIMPORT R33 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K59 ["SortOrder"]
  GETIMPORT R33 K248 [Enum.VerticalAlignment.Center]
  SETTABLEKS R33 R32 K245 ["VerticalAlignment"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K243 [">> #CheckboxIcon"]
  DUPTABLE R29 K37 [{"Size"}]
  LOADK R30 K170 ["$IconSmall"]
  SETTABLEKS R30 R29 K36 ["Size"]
  CALL R27 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K47 [".Small"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K241 [">> #CheckboxLabel"]
  DUPTABLE R29 K224 [{"TextSize"}]
  LOADK R30 K89 ["$FontSize150"]
  SETTABLEKS R30 R29 K23 ["TextSize"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K122 [".Medium"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K241 [">> #CheckboxLabel"]
  DUPTABLE R30 K224 [{"TextSize"}]
  LOADK R31 K223 ["$FontSize200"]
  SETTABLEKS R31 R30 K23 ["TextSize"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K48 [".Large"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K239 [">> #CheckboxButton"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K56 ["::UIListLayout"]
  DUPTABLE R35 K246 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R36 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K57 ["FillDirection"]
  LOADK R36 K54 ["$GlobalSpace150"]
  SETTABLEKS R36 R35 K58 ["Padding"]
  GETIMPORT R36 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R36 R35 K59 ["SortOrder"]
  GETIMPORT R36 K248 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K245 ["VerticalAlignment"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K243 [">> #CheckboxIcon"]
  DUPTABLE R32 K37 [{"Size"}]
  LOADK R33 K168 ["$IconLarge"]
  SETTABLEKS R33 R32 K36 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K241 [">> #CheckboxLabel"]
  DUPTABLE R33 K224 [{"TextSize"}]
  LOADK R34 K225 ["$FontSize300"]
  SETTABLEKS R34 R33 K23 ["TextSize"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K176 [".State-Default"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 5
  MOVE R30 R2
  LOADK R31 K243 [">> #CheckboxIcon"]
  DUPTABLE R32 K249 [{"Image"}]
  LOADK R33 K250 ["$CheckboxOffDefault"]
  SETTABLEKS R33 R32 K187 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K251 [":hover >> #CheckboxIcon"]
  DUPTABLE R33 K249 [{"Image"}]
  LOADK R34 K252 ["$CheckboxOffHover"]
  SETTABLEKS R34 R33 K187 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K253 [".Checked >> #CheckboxIcon"]
  DUPTABLE R34 K249 [{"Image"}]
  LOADK R35 K254 ["$CheckboxCheckedDefault"]
  SETTABLEKS R35 R34 K187 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K255 [".Indeterminate >> #CheckboxIcon"]
  DUPTABLE R35 K249 [{"Image"}]
  LOADK R36 K0 ["script"]
  SETTABLEKS R36 R35 K187 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K241 [">> #CheckboxLabel"]
  DUPTABLE R36 K33 [{"TextColor3"}]
  LOADK R37 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K22 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K95 [".State-Disabled"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 4
  MOVE R31 R2
  LOADK R32 K243 [">> #CheckboxIcon"]
  DUPTABLE R33 K249 [{"Image"}]
  LOADK R34 K1 [script]
  SETTABLEKS R34 R33 K187 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K253 [".Checked >> #CheckboxIcon"]
  DUPTABLE R34 K249 [{"Image"}]
  LOADK R35 K2 ["Parent"]
  SETTABLEKS R35 R34 K187 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K255 [".Indeterminate >> #CheckboxIcon"]
  DUPTABLE R35 K249 [{"Image"}]
  LOADK R36 K3 ["require"]
  SETTABLEKS R36 R35 K187 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K241 [">> #CheckboxLabel"]
  DUPTABLE R36 K33 [{"TextColor3"}]
  LOADK R37 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K22 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K4 [require]
  DUPTABLE R18 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R19 K14 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K11 ["BackgroundTransparency"]
  LOADK R19 K15 ["$BorderNone"]
  SETTABLEKS R19 R18 K12 ["BorderSizePixel"]
  NEWTABLE R19 0 9
  MOVE R20 R2
  LOADK R21 K5 ["Packages"]
  DUPTABLE R22 K240 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K159 ["AutoButtonColor"]
  LOADK R23 K14 ["$BackgroundTransparent"]
  SETTABLEKS R23 R22 K11 ["BackgroundTransparency"]
  LOADK R23 K15 ["$BorderNone"]
  SETTABLEKS R23 R22 K12 ["BorderSizePixel"]
  LOADN R23 1
  SETTABLEKS R23 R22 K65 ["LayoutOrder"]
  LOADK R23 K162 [""]
  SETTABLEKS R23 R22 K160 ["Text"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K6 ["Framework"]
  DUPTABLE R23 K242 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R24 K14 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K11 ["BackgroundTransparency"]
  LOADK R24 K15 ["$BorderNone"]
  SETTABLEKS R24 R23 K12 ["BorderSizePixel"]
  LOADK R24 K25 ["$FontWeight400"]
  SETTABLEKS R24 R23 K21 ["Font"]
  LOADN R24 2
  SETTABLEKS R24 R23 K65 ["LayoutOrder"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K7 ["Styling"]
  DUPTABLE R24 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R25 K14 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K11 ["BackgroundTransparency"]
  LOADK R25 K15 ["$BorderNone"]
  SETTABLEKS R25 R24 K12 ["BorderSizePixel"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K244 [".Small, .Medium"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K5 ["Packages"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K56 ["::UIListLayout"]
  DUPTABLE R33 K246 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R34 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K57 ["FillDirection"]
  LOADK R34 K68 ["$GlobalSpace100"]
  SETTABLEKS R34 R33 K58 ["Padding"]
  GETIMPORT R34 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K59 ["SortOrder"]
  GETIMPORT R34 K248 [Enum.VerticalAlignment.Center]
  SETTABLEKS R34 R33 K245 ["VerticalAlignment"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K7 ["Styling"]
  DUPTABLE R30 K37 [{"Size"}]
  LOADK R31 K170 ["$IconSmall"]
  SETTABLEKS R31 R30 K36 ["Size"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K47 [".Small"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K6 ["Framework"]
  DUPTABLE R30 K224 [{"TextSize"}]
  LOADK R31 K89 ["$FontSize150"]
  SETTABLEKS R31 R30 K23 ["TextSize"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K122 [".Medium"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K6 ["Framework"]
  DUPTABLE R31 K224 [{"TextSize"}]
  LOADK R32 K223 ["$FontSize200"]
  SETTABLEKS R32 R31 K23 ["TextSize"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K48 [".Large"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K5 ["Packages"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K56 ["::UIListLayout"]
  DUPTABLE R36 K246 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R37 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R37 R36 K57 ["FillDirection"]
  LOADK R37 K54 ["$GlobalSpace150"]
  SETTABLEKS R37 R36 K58 ["Padding"]
  GETIMPORT R37 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K59 ["SortOrder"]
  GETIMPORT R37 K248 [Enum.VerticalAlignment.Center]
  SETTABLEKS R37 R36 K245 ["VerticalAlignment"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K7 ["Styling"]
  DUPTABLE R33 K37 [{"Size"}]
  LOADK R34 K168 ["$IconLarge"]
  SETTABLEKS R34 R33 K36 ["Size"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K6 ["Framework"]
  DUPTABLE R34 K224 [{"TextSize"}]
  LOADK R35 K225 ["$FontSize300"]
  SETTABLEKS R35 R34 K23 ["TextSize"]
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K176 [".State-Default"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 4
  MOVE R31 R2
  LOADK R32 K7 ["Styling"]
  DUPTABLE R33 K249 [{"Image"}]
  LOADK R34 K8 ["createStyleRule"]
  SETTABLEKS R34 R33 K187 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K9 ["createStyleSheet"]
  DUPTABLE R34 K249 [{"Image"}]
  LOADK R35 K10 [".Role-Surface"]
  SETTABLEKS R35 R34 K187 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K11 ["BackgroundTransparency"]
  DUPTABLE R35 K249 [{"Image"}]
  LOADK R36 K12 ["BorderSizePixel"]
  SETTABLEKS R36 R35 K187 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K6 ["Framework"]
  DUPTABLE R36 K33 [{"TextColor3"}]
  LOADK R37 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K22 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K95 [".State-Disabled"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K7 ["Styling"]
  DUPTABLE R34 K249 [{"Image"}]
  LOADK R35 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R35 R34 K187 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K11 ["BackgroundTransparency"]
  DUPTABLE R35 K249 [{"Image"}]
  LOADK R36 K14 ["$BackgroundTransparent"]
  SETTABLEKS R36 R35 K187 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K6 ["Framework"]
  DUPTABLE R36 K33 [{"TextColor3"}]
  LOADK R37 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R37 R36 K22 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K15 ["$BorderNone"]
  DUPTABLE R19 K272 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K159 ["AutoButtonColor"]
  LOADK R20 K15 ["$BorderNone"]
  SETTABLEKS R20 R19 K12 ["BorderSizePixel"]
  LOADK R20 K14 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADK R20 K162 [""]
  SETTABLEKS R20 R19 K160 ["Text"]
  NEWTABLE R20 0 8
  MOVE R21 R2
  LOADK R22 K17 ["BackgroundColor3"]
  DUPTABLE R23 K274 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R24 K15 ["$BorderNone"]
  SETTABLEKS R24 R23 K12 ["BorderSizePixel"]
  LOADK R24 K14 ["$BackgroundTransparent"]
  SETTABLEKS R24 R23 K11 ["BackgroundTransparency"]
  LOADN R24 1
  SETTABLEKS R24 R23 K65 ["LayoutOrder"]
  LOADK R24 K168 ["$IconLarge"]
  SETTABLEKS R24 R23 K36 ["Size"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K19 ["$DEPRECATED_MainBackground"]
  DUPTABLE R24 K276 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R25 K111 [Vector2.new]
  LOADN R26 1
  LOADK R27 K112 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K102 ["AnchorPoint"]
  GETIMPORT R25 K116 [UDim2.fromScale]
  LOADN R26 1
  LOADK R27 K112 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K105 ["Position"]
  LOADK R25 K15 ["$BorderNone"]
  SETTABLEKS R25 R24 K12 ["BorderSizePixel"]
  LOADN R25 1
  SETTABLEKS R25 R24 K11 ["BackgroundTransparency"]
  LOADK R25 K21 ["Font"]
  SETTABLEKS R25 R24 K187 ["Image"]
  LOADN R25 3
  SETTABLEKS R25 R24 K65 ["LayoutOrder"]
  LOADK R25 K170 ["$IconSmall"]
  SETTABLEKS R25 R24 K36 ["Size"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K22 ["TextColor3"]
  DUPTABLE R25 K183 [{"LayoutOrder", "Size"}]
  LOADN R26 3
  SETTABLEKS R26 R25 K65 ["LayoutOrder"]
  LOADK R26 K170 ["$IconSmall"]
  SETTABLEKS R26 R25 K36 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K32 [">> TextLabel"]
  DUPTABLE R26 K279 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R27 1
  SETTABLEKS R27 R26 K11 ["BackgroundTransparency"]
  LOADK R27 K25 ["$FontWeight400"]
  SETTABLEKS R27 R26 K21 ["Font"]
  LOADK R27 K89 ["$FontSize150"]
  SETTABLEKS R27 R26 K23 ["TextSize"]
  LOADN R27 2
  SETTABLEKS R27 R26 K65 ["LayoutOrder"]
  LOADK R27 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R27 R26 K22 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K47 [".Small"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K17 ["BackgroundColor3"]
  DUPTABLE R31 K37 [{"Size"}]
  LOADK R32 K170 ["$IconSmall"]
  SETTABLEKS R32 R31 K36 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K32 [">> TextLabel"]
  DUPTABLE R32 K224 [{"TextSize"}]
  LOADK R33 K27 ["$FontSize100"]
  SETTABLEKS R33 R32 K23 ["TextSize"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K24 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  DUPTABLE R28 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K25 ["$FontWeight400"]
  SETTABLEKS R29 R28 K17 ["BackgroundColor3"]
  LOADK R29 K26 ["$SemanticColorContentMuted"]
  SETTABLEKS R29 R28 K11 ["BackgroundTransparency"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K90 [".State-Selected"]
  DUPTABLE R29 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K92 ["$SemanticColorStatesSelected"]
  SETTABLEKS R30 R29 K17 ["BackgroundColor3"]
  LOADK R30 K93 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R30 R29 K11 ["BackgroundTransparency"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K95 [".State-Disabled"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K17 ["BackgroundColor3"]
  DUPTABLE R34 K174 [{"ImageTransparency"}]
  LOADK R35 K175 ["$IconDisabled"]
  SETTABLEKS R35 R34 K173 ["ImageTransparency"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K32 [">> TextLabel"]
  DUPTABLE R35 K33 [{"TextColor3"}]
  LOADK R36 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R36 R35 K22 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K27 ["$FontSize100"]
  DUPTABLE R20 K37 [{"Size"}]
  GETIMPORT R21 K40 [UDim2.new]
  LOADN R22 0
  LOADN R23 90
  LOADN R24 0
  LOADN R25 20
  CALL R21 4 1
  SETTABLEKS R21 R20 K36 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K28 [".Text-Title"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 6
  MOVE R23 R2
  LOADK R24 K227 ["::UIStroke"]
  DUPTABLE R25 K285 [{"Thickness"}]
  LOADK R26 K15 ["$BorderNone"]
  SETTABLEKS R26 R25 K229 ["Thickness"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K30 [".TooltipBackground"]
  DUPTABLE R26 K224 [{"TextSize"}]
  LOADK R27 K89 ["$FontSize150"]
  SETTABLEKS R27 R26 K23 ["TextSize"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K176 [".State-Default"]
  DUPTABLE R27 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K31 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R28 R27 K17 ["BackgroundColor3"]
  LOADK R28 K32 [">> TextLabel"]
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K30 [".TooltipBackground"]
  DUPTABLE R31 K33 [{"TextColor3"}]
  LOADK R32 K26 ["$SemanticColorContentMuted"]
  SETTABLEKS R32 R31 K22 ["TextColor3"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K33 [{"TextColor3"}]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K227 ["::UIStroke"]
  DUPTABLE R32 K290 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R33 K232 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R33 R32 K228 ["ApplyStrokeMode"]
  LOADK R33 K35 [".Role-DividerH"]
  SETTABLEKS R33 R32 K197 ["Color"]
  LOADK R33 K233 ["$BorderMedium"]
  SETTABLEKS R33 R32 K229 ["Thickness"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K30 [".TooltipBackground"]
  DUPTABLE R33 K33 [{"TextColor3"}]
  LOADK R34 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R34 R33 K22 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K36 ["Size"]
  DUPTABLE R29 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R30 K37 [{"Size"}]
  SETTABLEKS R30 R29 K17 ["BackgroundColor3"]
  LOADK R30 K38 ["UDim2"]
  SETTABLEKS R30 R29 K11 ["BackgroundTransparency"]
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K30 [".TooltipBackground"]
  DUPTABLE R33 K33 [{"TextColor3"}]
  LOADK R34 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R34 R33 K22 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K39 ["new"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K227 ["::UIStroke"]
  DUPTABLE R38 K296 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R39 K232 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R39 R38 K228 ["ApplyStrokeMode"]
  LOADK R39 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R39 R38 K197 ["Color"]
  LOADK R39 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R39 R38 K199 ["Transparency"]
  LOADK R39 K233 ["$BorderMedium"]
  SETTABLEKS R39 R38 K229 ["Thickness"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K95 [".State-Disabled"]
  DUPTABLE R30 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K31 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R31 R30 K17 ["BackgroundColor3"]
  LOADK R31 K32 [">> TextLabel"]
  SETTABLEKS R31 R30 K11 ["BackgroundTransparency"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K30 [".TooltipBackground"]
  DUPTABLE R34 K33 [{"TextColor3"}]
  LOADK R35 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R35 R34 K22 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K41 ["> Frame"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K184 ["> TextButton"]
  DUPTABLE R26 K37 [{"Size"}]
  GETIMPORT R27 K40 [UDim2.new]
  LOADN R28 0
  LOADN R29 16
  LOADN R30 0
  LOADN R31 8
  CALL R27 4 1
  SETTABLEKS R27 R26 K36 ["Size"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K42 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R30 K37 [{"Size"}]
  GETIMPORT R31 K40 [UDim2.new]
  LOADN R32 0
  LOADN R33 16
  LOADN R34 0
  LOADN R35 8
  CALL R31 4 1
  SETTABLEKS R31 R30 K36 ["Size"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K176 [".State-Default"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K43 ["$SemanticColorDivider"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 3
  MOVE R33 R2
  LOADK R34 K44 ["$SemanticColorDividerTransparency"]
  DUPTABLE R35 K249 [{"Image"}]
  LOADK R36 K45 [".Role-DividerV"]
  SETTABLEKS R36 R35 K187 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K46 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R36 K249 [{"Image"}]
  LOADK R37 K47 [".Small"]
  SETTABLEKS R37 R36 K187 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K48 [".Large"]
  DUPTABLE R37 K249 [{"Image"}]
  LOADK R38 K49 [".RibbonButton-Divider"]
  SETTABLEKS R38 R37 K187 ["Image"]
  CALL R35 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K50 ["::UIPadding"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K44 ["$SemanticColorDividerTransparency"]
  DUPTABLE R36 K249 [{"Image"}]
  LOADK R37 K51 ["PaddingLeft"]
  SETTABLEKS R37 R36 K187 ["Image"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K46 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R37 K249 [{"Image"}]
  LOADK R38 K52 ["PaddingRight"]
  SETTABLEKS R38 R37 K187 ["Image"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K48 [".Large"]
  DUPTABLE R38 K249 [{"Image"}]
  LOADK R39 K53 [{"PaddingLeft", "PaddingRight"}]
  SETTABLEKS R39 R38 K187 ["Image"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETLIST R4 R5 16 [33]
  MOVE R5 R2
  LOADK R6 K54 ["$GlobalSpace150"]
  DUPTABLE R7 K194 [{"BackgroundTransparency"}]
  LOADK R8 K14 ["$BackgroundTransparent"]
  SETTABLEKS R8 R7 K11 ["BackgroundTransparency"]
  NEWTABLE R8 0 3
  MOVE R9 R2
  LOADK R10 K55 [".X-RowSpace50"]
  DUPTABLE R11 K128 [{"CornerRadius"}]
  LOADK R12 K133 ["$GlobalRadiusMedium"]
  SETTABLEKS R12 R11 K127 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K56 ["::UIListLayout"]
  DUPTABLE R12 K230 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R13 K232 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R13 R12 K228 ["ApplyStrokeMode"]
  LOADK R13 K43 ["$SemanticColorDivider"]
  SETTABLEKS R13 R12 K197 ["Color"]
  LOADK R13 K233 ["$BorderMedium"]
  SETTABLEKS R13 R12 K229 ["Thickness"]
  LOADK R13 K44 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R13 R12 K199 ["Transparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K57 ["FillDirection"]
  DUPTABLE R13 K194 [{"BackgroundTransparency"}]
  LOADK R14 K14 ["$BackgroundTransparent"]
  SETTABLEKS R14 R13 K11 ["BackgroundTransparency"]
  NEWTABLE R14 0 3
  MOVE R15 R2
  LOADK R16 K55 [".X-RowSpace50"]
  DUPTABLE R17 K128 [{"CornerRadius"}]
  LOADK R18 K133 ["$GlobalRadiusMedium"]
  SETTABLEKS R18 R17 K127 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K58 ["Padding"]
  DUPTABLE R18 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R19 K14 ["$BackgroundTransparent"]
  SETTABLEKS R19 R18 K11 ["BackgroundTransparency"]
  LOADK R19 K15 ["$BorderNone"]
  SETTABLEKS R19 R18 K12 ["BorderSizePixel"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K177 [":hover"]
  DUPTABLE R22 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R23 R22 K17 ["BackgroundColor3"]
  LOADK R23 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R23 R22 K11 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K59 ["SortOrder"]
  DUPTABLE R23 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K181 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R24 R23 K17 ["BackgroundColor3"]
  LOADK R24 K180 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R24 R23 K11 ["BackgroundTransparency"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K60 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R19 K317 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R20 K89 ["$FontSize150"]
  SETTABLEKS R20 R19 K23 ["TextSize"]
  LOADB R20 0
  SETTABLEKS R20 R19 K159 ["AutoButtonColor"]
  LOADK R20 K15 ["$BorderNone"]
  SETTABLEKS R20 R19 K12 ["BorderSizePixel"]
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K50 ["::UIPadding"]
  DUPTABLE R23 K53 [{"PaddingLeft", "PaddingRight"}]
  LOADK R24 K54 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K51 ["PaddingLeft"]
  LOADK R24 K54 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K52 ["PaddingRight"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K176 [".State-Default"]
  DUPTABLE R24 K318 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R25 K14 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K11 ["BackgroundTransparency"]
  LOADK R25 K29 ["$FontWeight700"]
  SETTABLEKS R25 R24 K21 ["Font"]
  LOADK R25 K26 ["$SemanticColorContentMuted"]
  SETTABLEKS R25 R24 K22 ["TextColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K90 [".State-Selected"]
  DUPTABLE R25 K91 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R26 K92 ["$SemanticColorStatesSelected"]
  SETTABLEKS R26 R25 K17 ["BackgroundColor3"]
  LOADK R26 K93 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R26 R25 K11 ["BackgroundTransparency"]
  LOADK R26 K29 ["$FontWeight700"]
  SETTABLEKS R26 R25 K21 ["Font"]
  LOADK R26 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K22 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K63 [Enum.FillDirection.Horizontal]
  DUPTABLE R8 K320 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R9 K323 [Color3.fromHex]
  LOADK R10 K68 ["$GlobalSpace100"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K17 ["BackgroundColor3"]
  LOADK R9 K195 ["$BackgroundNonTransparent"]
  SETTABLEKS R9 R8 K11 ["BackgroundTransparency"]
  GETIMPORT R9 K40 [UDim2.new]
  LOADN R10 0
  LOADN R11 40
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K36 ["Size"]
  NEWTABLE R9 0 6
  MOVE R10 R2
  LOADK R11 K69 [".X-RowSpace150"]
  DUPTABLE R12 K128 [{"CornerRadius"}]
  LOADK R13 K70 [".X-RowSpace200"]
  SETTABLEKS R13 R12 K127 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K50 ["::UIPadding"]
  DUPTABLE R13 K327 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R14 K75 ["$GlobalSpace25"]
  SETTABLEKS R14 R13 K80 ["PaddingBottom"]
  LOADK R14 K75 ["$GlobalSpace25"]
  SETTABLEKS R14 R13 K51 ["PaddingLeft"]
  LOADK R14 K75 ["$GlobalSpace25"]
  SETTABLEKS R14 R13 K52 ["PaddingRight"]
  LOADK R14 K75 ["$GlobalSpace25"]
  SETTABLEKS R14 R13 K79 ["PaddingTop"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K56 ["::UIListLayout"]
  DUPTABLE R14 K329 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R15 K74 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K57 ["FillDirection"]
  GETIMPORT R15 K331 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K328 ["HorizontalAlignment"]
  GETIMPORT R15 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K59 ["SortOrder"]
  GETIMPORT R15 K248 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K245 ["VerticalAlignment"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K41 ["> Frame"]
  DUPTABLE R15 K332 [{"BackgroundColor3", "Size"}]
  LOADK R16 K77 [".X-ColumnSpace100"]
  SETTABLEKS R16 R15 K17 ["BackgroundColor3"]
  GETIMPORT R16 K40 [UDim2.new]
  LOADN R17 0
  LOADN R18 20
  LOADN R19 0
  LOADN R20 20
  CALL R16 4 1
  SETTABLEKS R16 R15 K36 ["Size"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K69 [".X-RowSpace150"]
  DUPTABLE R19 K128 [{"CornerRadius"}]
  LOADK R20 K70 [".X-RowSpace200"]
  SETTABLEKS R20 R19 K127 ["CornerRadius"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K90 [".State-Selected"]
  DUPTABLE R16 K334 [{"BackgroundColor3"}]
  GETIMPORT R17 K323 [Color3.fromHex]
  LOADK R18 K79 ["PaddingTop"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K17 ["BackgroundColor3"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K56 ["::UIListLayout"]
  DUPTABLE R20 K336 [{"HorizontalAlignment"}]
  GETIMPORT R21 K338 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R21 R20 K328 ["HorizontalAlignment"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K95 [".State-Disabled"]
  DUPTABLE R17 K194 [{"BackgroundTransparency"}]
  LOADK R18 K83 [{"PaddingLeft"}]
  SETTABLEKS R18 R17 K11 ["BackgroundTransparency"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K41 ["> Frame"]
  DUPTABLE R21 K194 [{"BackgroundTransparency"}]
  LOADK R22 K83 [{"PaddingLeft"}]
  SETTABLEKS R22 R21 K11 ["BackgroundTransparency"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K84 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R9 K342 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K341 ["Active"]
  LOADB R10 0
  SETTABLEKS R10 R9 K159 ["AutoButtonColor"]
  GETIMPORT R10 K111 [Vector2.new]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K102 ["AnchorPoint"]
  GETIMPORT R10 K116 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K105 ["Position"]
  LOADK R10 K162 [""]
  SETTABLEKS R10 R9 K160 ["Text"]
  LOADN R10 2
  SETTABLEKS R10 R9 K209 ["ZIndex"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K87 [".Component-RibbonTab"]
  DUPTABLE R10 K344 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R11 K111 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K102 ["AnchorPoint"]
  GETIMPORT R11 K40 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K105 ["Position"]
  GETIMPORT R11 K40 [UDim2.new]
  LOADN R12 0
  LOADN R13 22
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K36 ["Size"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K196 ["::UIGradient"]
  DUPTABLE R14 K200 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R15 K346 [ColorSequence.new]
  GETIMPORT R16 K323 [Color3.fromHex]
  LOADK R17 K91 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  CALL R16 1 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K197 ["Color"]
  LOADN R15 180
  SETTABLEKS R15 R14 K198 ["Rotation"]
  GETIMPORT R15 K349 [NumberSequence.new]
  NEWTABLE R16 0 3
  GETIMPORT R17 K351 [NumberSequenceKeypoint.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  GETIMPORT R18 K351 [NumberSequenceKeypoint.new]
  LOADK R19 K112 [0.5]
  LOADN R20 0
  CALL R18 2 1
  GETIMPORT R19 K351 [NumberSequenceKeypoint.new]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R15 1 1
  SETTABLEKS R15 R14 K199 ["Transparency"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K96 ["$SemanticColorContentDisabled"]
  DUPTABLE R11 K37 [{"Size"}]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 84
  CALL R12 4 1
  SETTABLEKS R12 R11 K36 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K97 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R12 K37 [{"Size"}]
  GETIMPORT R13 K40 [UDim2.new]
  LOADN R14 1
  LOADN R15 224
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K36 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R13 K123 [{"AnchorPoint", "Position"}]
  GETIMPORT R14 K111 [Vector2.new]
  LOADN R15 0
  LOADK R16 K112 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K102 ["AnchorPoint"]
  GETIMPORT R14 K40 [UDim2.new]
  LOADN R15 0
  LOADN R16 165
  LOADK R17 K112 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K105 ["Position"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K99 ["$SemanticColorStateLayerHover"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 3
  MOVE R16 R2
  LOADK R17 K56 ["::UIListLayout"]
  DUPTABLE R18 K356 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R19 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K57 ["FillDirection"]
  GETIMPORT R19 K331 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K328 ["HorizontalAlignment"]
  GETIMPORT R19 K66 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K59 ["SortOrder"]
  GETIMPORT R19 K248 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K245 ["VerticalAlignment"]
  LOADK R19 K68 ["$GlobalSpace100"]
  SETTABLEKS R19 R18 K58 ["Padding"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K163 ["> TextLabel"]
  DUPTABLE R19 K279 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R20 K14 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADK R20 K25 ["$FontWeight400"]
  SETTABLEKS R20 R19 K21 ["Font"]
  LOADK R20 K89 ["$FontSize150"]
  SETTABLEKS R20 R19 K23 ["TextSize"]
  LOADN R20 0
  SETTABLEKS R20 R19 K65 ["LayoutOrder"]
  LOADK R20 K94 ["$SemanticColorContentStandard"]
  SETTABLEKS R20 R19 K22 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K95 [".State-Disabled"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K163 ["> TextLabel"]
  DUPTABLE R24 K33 [{"TextColor3"}]
  LOADK R25 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R25 R24 K22 ["TextColor3"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R4 R5 -1 [49]
  MOVE R5 R3
  LOADK R6 K101 [".Component-RibbonTabs"]
  MOVE R7 R4
  DUPTABLE R8 K359 [{"Size", "SizeDense"}]
  GETIMPORT R9 K40 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K36 ["Size"]
  GETIMPORT R9 K40 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K358 ["SizeDense"]
  CALL R5 3 -1
  RETURN R5 -1
