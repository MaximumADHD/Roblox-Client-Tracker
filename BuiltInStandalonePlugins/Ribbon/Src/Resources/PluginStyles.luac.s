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
  NEWTABLE R4 0 53
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
  LOADK R8 K20 [".TooltipBackground"]
  DUPTABLE R9 K18 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R10 K21 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R10 R9 K17 ["BackgroundColor3"]
  LOADK R10 K15 ["$BorderNone"]
  SETTABLEKS R10 R9 K12 ["BorderSizePixel"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K22 [">> TextLabel"]
  DUPTABLE R13 K26 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R14 K27 ["$FontWeight400"]
  SETTABLEKS R14 R13 K23 ["Font"]
  LOADK R14 K28 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R14 R13 K24 ["TextColor3"]
  LOADK R14 K29 ["$FontSize100"]
  SETTABLEKS R14 R13 K25 ["TextSize"]
  LOADK R14 K15 ["$BorderNone"]
  SETTABLEKS R14 R13 K12 ["BorderSizePixel"]
  LOADK R14 K14 ["$BackgroundTransparent"]
  SETTABLEKS R14 R13 K11 ["BackgroundTransparency"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K30 [".Text-Title"]
  DUPTABLE R17 K31 [{"Font"}]
  LOADK R18 K32 ["$FontWeight700"]
  SETTABLEKS R18 R17 K23 ["Font"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K33 [".Role-DividerH"]
  DUPTABLE R10 K35 [{"Size"}]
  GETIMPORT R11 K38 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K34 ["Size"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K39 ["> Frame"]
  DUPTABLE R14 K40 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R15 K41 ["$SemanticColorDivider"]
  SETTABLEKS R15 R14 K17 ["BackgroundColor3"]
  LOADK R15 K42 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R15 R14 K11 ["BackgroundTransparency"]
  LOADK R15 K15 ["$BorderNone"]
  SETTABLEKS R15 R14 K12 ["BorderSizePixel"]
  GETIMPORT R15 K38 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K34 ["Size"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K43 [".Role-DividerV"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 4
  MOVE R13 R2
  LOADK R14 K39 ["> Frame"]
  DUPTABLE R15 K44 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R16 K41 ["$SemanticColorDivider"]
  SETTABLEKS R16 R15 K17 ["BackgroundColor3"]
  LOADK R16 K42 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  LOADK R16 K15 ["$BorderNone"]
  SETTABLEKS R16 R15 K12 ["BorderSizePixel"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K45 [".Small"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K39 ["> Frame"]
  DUPTABLE R20 K35 [{"Size"}]
  GETIMPORT R21 K38 [UDim2.new]
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  LOADN R25 28
  CALL R21 4 1
  SETTABLEKS R21 R20 K34 ["Size"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K46 [".Large"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K39 ["> Frame"]
  DUPTABLE R21 K35 [{"Size"}]
  GETIMPORT R22 K38 [UDim2.new]
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  LOADN R26 64
  CALL R22 4 1
  SETTABLEKS R22 R21 K34 ["Size"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K47 [".RibbonButton-Divider"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K48 ["::UIPadding"]
  DUPTABLE R22 K51 [{"PaddingLeft", "PaddingRight"}]
  LOADK R23 K52 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K49 ["PaddingLeft"]
  LOADK R23 K52 ["$GlobalSpace150"]
  SETTABLEKS R23 R22 K50 ["PaddingRight"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K53 [".X-RowSpace50"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K54 ["::UIListLayout"]
  DUPTABLE R16 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K55 ["FillDirection"]
  LOADK R17 K62 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K56 ["Padding"]
  GETIMPORT R17 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K57 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K65 [".X-RowSpace100"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K54 ["::UIListLayout"]
  DUPTABLE R17 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K55 ["FillDirection"]
  LOADK R18 K66 ["$GlobalSpace100"]
  SETTABLEKS R18 R17 K56 ["Padding"]
  GETIMPORT R18 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K57 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K67 [".X-RowSpace150"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K54 ["::UIListLayout"]
  DUPTABLE R18 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K55 ["FillDirection"]
  LOADK R19 K52 ["$GlobalSpace150"]
  SETTABLEKS R19 R18 K56 ["Padding"]
  GETIMPORT R19 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K57 ["SortOrder"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K68 [".X-RowSpace200"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K54 ["::UIListLayout"]
  DUPTABLE R19 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K55 ["FillDirection"]
  LOADK R20 K69 ["$GlobalSpace200"]
  SETTABLEKS R20 R19 K56 ["Padding"]
  GETIMPORT R20 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K57 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K70 [".X-ColumnSpace25"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K54 ["::UIListLayout"]
  DUPTABLE R20 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R21 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K55 ["FillDirection"]
  LOADK R21 K73 ["$GlobalSpace25"]
  SETTABLEKS R21 R20 K56 ["Padding"]
  GETIMPORT R21 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K57 ["SortOrder"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K74 [".X-ColumnSpace50"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K54 ["::UIListLayout"]
  DUPTABLE R21 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K55 ["FillDirection"]
  LOADK R22 K62 ["$GlobalSpace50"]
  SETTABLEKS R22 R21 K56 ["Padding"]
  GETIMPORT R22 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K57 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K75 [".X-ColumnSpace100"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K54 ["::UIListLayout"]
  DUPTABLE R22 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R23 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K55 ["FillDirection"]
  LOADK R23 K66 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K56 ["Padding"]
  GETIMPORT R23 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K57 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K76 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R19 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K52 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K49 ["PaddingLeft"]
  LOADK R20 K52 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K50 ["PaddingRight"]
  LOADK R20 K52 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K77 ["PaddingTop"]
  LOADK R20 K52 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K78 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K80 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R20 K81 [{"PaddingLeft"}]
  LOADK R21 K66 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K49 ["PaddingLeft"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K82 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R21 K83 [{"PaddingRight"}]
  LOADK R22 K66 ["$GlobalSpace100"]
  SETTABLEKS R22 R21 K50 ["PaddingRight"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K84 [".X-RowXS"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K54 ["::UIListLayout"]
  DUPTABLE R26 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K55 ["FillDirection"]
  LOADK R27 K73 ["$GlobalSpace25"]
  SETTABLEKS R27 R26 K56 ["Padding"]
  GETIMPORT R27 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K57 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETLIST R4 R5 16 [1]
  MOVE R5 R2
  LOADK R6 K85 [".Component-Tab"]
  DUPTABLE R7 K86 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  LOADK R8 K14 ["$BackgroundTransparent"]
  SETTABLEKS R8 R7 K11 ["BackgroundTransparency"]
  LOADK R8 K27 ["$FontWeight400"]
  SETTABLEKS R8 R7 K23 ["Font"]
  GETIMPORT R8 K38 [UDim2.new]
  LOADN R9 0
  LOADN R10 80
  LOADN R11 0
  LOADN R12 28
  CALL R8 4 1
  SETTABLEKS R8 R7 K34 ["Size"]
  LOADK R8 K87 ["$SemanticColorContentMuted"]
  SETTABLEKS R8 R7 K24 ["TextColor3"]
  LOADK R8 K88 ["$FontSize150"]
  SETTABLEKS R8 R7 K25 ["TextSize"]
  NEWTABLE R8 0 4
  MOVE R9 R2
  LOADK R10 K89 [".State-Selected"]
  DUPTABLE R11 K90 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R12 K91 ["$SemanticColorStatesSelected"]
  SETTABLEKS R12 R11 K17 ["BackgroundColor3"]
  LOADK R12 K92 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  LOADK R12 K32 ["$FontWeight700"]
  SETTABLEKS R12 R11 K23 ["Font"]
  LOADK R12 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R12 R11 K24 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K94 [".State-Disabled"]
  DUPTABLE R12 K95 [{"TextColor3"}]
  LOADK R13 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R13 R12 K24 ["TextColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K97 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R13 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R14 R13 K17 ["BackgroundColor3"]
  LOADK R14 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R14 R13 K11 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K101 [":: UIPadding"]
  DUPTABLE R14 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R15 K52 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K49 ["PaddingLeft"]
  LOADK R15 K52 ["$GlobalSpace150"]
  SETTABLEKS R15 R14 K50 ["PaddingRight"]
  LOADK R15 K62 ["$GlobalSpace50"]
  SETTABLEKS R15 R14 K77 ["PaddingTop"]
  LOADK R15 K62 ["$GlobalSpace50"]
  SETTABLEKS R15 R14 K78 ["PaddingBottom"]
  CALL R12 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K102 [".X-Float"]
  DUPTABLE R8 K105 [{"AnchorPoint", "Position"}]
  GETIMPORT R9 K107 [Vector2.new]
  LOADK R10 K108 [0.5]
  LOADK R11 K108 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K103 ["AnchorPoint"]
  GETIMPORT R9 K110 [UDim2.fromScale]
  LOADK R10 K108 [0.5]
  LOADK R11 K108 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K104 ["Position"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K111 [".X-CornerXS ::UICorner"]
  DUPTABLE R9 K113 [{"CornerRadius"}]
  LOADK R10 K114 ["$GlobalRadiusXSmall"]
  SETTABLEKS R10 R9 K112 ["CornerRadius"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K115 [".X-CornerS ::UICorner"]
  DUPTABLE R10 K113 [{"CornerRadius"}]
  LOADK R11 K116 ["$GlobalRadiusSmall"]
  SETTABLEKS R11 R10 K112 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K117 [".X-CornerM ::UICorner"]
  DUPTABLE R11 K113 [{"CornerRadius"}]
  LOADK R12 K118 ["$GlobalRadiusMedium"]
  SETTABLEKS R12 R11 K112 ["CornerRadius"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K119 [".X-PadMezz :: UIPadding"]
  DUPTABLE R12 K81 [{"PaddingLeft"}]
  GETIMPORT R13 K121 [UDim.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K49 ["PaddingLeft"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K122 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R13 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K121 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K49 ["PaddingLeft"]
  GETIMPORT R14 K121 [UDim.new]
  LOADN R15 0
  LOADN R16 10
  CALL R14 2 1
  SETTABLEKS R14 R13 K50 ["PaddingRight"]
  LOADK R14 K66 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K77 ["PaddingTop"]
  LOADK R14 K66 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K78 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K123 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R14 K81 [{"PaddingLeft"}]
  LOADK R15 K66 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K49 ["PaddingLeft"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K124 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R15 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K73 ["$GlobalSpace25"]
  SETTABLEKS R16 R15 K49 ["PaddingLeft"]
  LOADK R16 K125 ["$GlobalSpace75"]
  SETTABLEKS R16 R15 K50 ["PaddingRight"]
  LOADK R16 K126 ["$GlobalSpace350"]
  SETTABLEKS R16 R15 K77 ["PaddingTop"]
  LOADK R16 K125 ["$GlobalSpace75"]
  SETTABLEKS R16 R15 K78 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K127 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R16 K128 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R17 K73 ["$GlobalSpace25"]
  SETTABLEKS R17 R16 K50 ["PaddingRight"]
  LOADK R17 K129 ["$GlobalSpace250"]
  SETTABLEKS R17 R16 K77 ["PaddingTop"]
  LOADK R17 K62 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K78 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K130 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R17 K81 [{"PaddingLeft"}]
  LOADK R18 K125 ["$GlobalSpace75"]
  SETTABLEKS R18 R17 K49 ["PaddingLeft"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K131 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R18 K132 [{"PaddingTop", "PaddingBottom"}]
  LOADK R19 K62 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K77 ["PaddingTop"]
  LOADK R19 K62 ["$GlobalSpace50"]
  SETTABLEKS R19 R18 K78 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K133 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R19 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R20 K52 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K49 ["PaddingLeft"]
  LOADK R20 K66 ["$GlobalSpace100"]
  SETTABLEKS R20 R19 K50 ["PaddingRight"]
  LOADK R20 K52 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K77 ["PaddingTop"]
  LOADK R20 K52 ["$GlobalSpace150"]
  SETTABLEKS R20 R19 K78 ["PaddingBottom"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K134 [".X-PadTabMenu ::UIPadding"]
  DUPTABLE R20 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R21 K66 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K49 ["PaddingLeft"]
  LOADK R21 K66 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K50 ["PaddingRight"]
  LOADK R21 K66 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K77 ["PaddingTop"]
  LOADK R21 K66 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K78 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K135 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R21 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R22 K125 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K49 ["PaddingLeft"]
  LOADK R22 K125 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K50 ["PaddingRight"]
  LOADK R22 K125 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K77 ["PaddingTop"]
  LOADK R22 K125 ["$GlobalSpace75"]
  SETTABLEKS R22 R21 K78 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K136 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R22 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R23 K66 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K49 ["PaddingLeft"]
  LOADK R23 K66 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K50 ["PaddingRight"]
  LOADK R23 K62 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K77 ["PaddingTop"]
  LOADK R23 K62 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K78 ["PaddingBottom"]
  CALL R20 2 1
  SETLIST R4 R5 16 [17]
  MOVE R5 R2
  LOADK R6 K137 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R7 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R8 K125 ["$GlobalSpace75"]
  SETTABLEKS R8 R7 K49 ["PaddingLeft"]
  LOADK R8 K125 ["$GlobalSpace75"]
  SETTABLEKS R8 R7 K50 ["PaddingRight"]
  LOADK R8 K62 ["$GlobalSpace50"]
  SETTABLEKS R8 R7 K77 ["PaddingTop"]
  LOADK R8 K62 ["$GlobalSpace50"]
  SETTABLEKS R8 R7 K78 ["PaddingBottom"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K138 [".X-RowSplitButton"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K54 ["::UIListLayout"]
  DUPTABLE R12 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R13 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K55 ["FillDirection"]
  LOADK R13 K73 ["$GlobalSpace25"]
  SETTABLEKS R13 R12 K56 ["Padding"]
  GETIMPORT R13 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K57 ["SortOrder"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K139 [".X-RowSplitButtonSmall"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K54 ["::UIListLayout"]
  DUPTABLE R13 K140 [{"FillDirection", "SortOrder"}]
  GETIMPORT R14 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K55 ["FillDirection"]
  GETIMPORT R14 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K57 ["SortOrder"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K141 [".X-RowSpinbox"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K54 ["::UIListLayout"]
  DUPTABLE R14 K58 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K55 ["FillDirection"]
  LOADK R15 K62 ["$GlobalSpace50"]
  SETTABLEKS R15 R14 K56 ["Padding"]
  GETIMPORT R15 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K57 ["SortOrder"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K142 [".X-PadSpinBox ::UIPadding"]
  DUPTABLE R11 K81 [{"PaddingLeft"}]
  LOADK R12 K66 ["$GlobalSpace100"]
  SETTABLEKS R12 R11 K49 ["PaddingLeft"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K143 [".Component-RibbonButton"]
  DUPTABLE R12 K146 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K144 ["AutoButtonColor"]
  LOADK R13 K14 ["$BackgroundTransparent"]
  SETTABLEKS R13 R12 K11 ["BackgroundTransparency"]
  LOADK R13 K15 ["$BorderNone"]
  SETTABLEKS R13 R12 K12 ["BorderSizePixel"]
  LOADK R13 K147 [""]
  SETTABLEKS R13 R12 K145 ["Text"]
  NEWTABLE R13 0 7
  MOVE R14 R2
  LOADK R15 K148 ["> TextLabel"]
  DUPTABLE R16 K149 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize"}]
  LOADK R17 K14 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K11 ["BackgroundTransparency"]
  LOADK R17 K27 ["$FontWeight400"]
  SETTABLEKS R17 R16 K23 ["Font"]
  LOADN R17 2
  SETTABLEKS R17 R16 K63 ["LayoutOrder"]
  LOADK R17 K87 ["$SemanticColorContentMuted"]
  SETTABLEKS R17 R16 K24 ["TextColor3"]
  LOADK R17 K29 ["$FontSize100"]
  SETTABLEKS R17 R16 K25 ["TextSize"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K150 [">> #RibbonToolButtonIcon"]
  DUPTABLE R17 K151 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R18 K14 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K11 ["BackgroundTransparency"]
  LOADK R18 K15 ["$BorderNone"]
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  LOADN R18 0
  SETTABLEKS R18 R17 K63 ["LayoutOrder"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K152 [".Icon-Large"]
  DUPTABLE R21 K35 [{"Size"}]
  LOADK R22 K153 ["$IconLarge"]
  SETTABLEKS R22 R21 K34 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K154 [".Icon-Small"]
  DUPTABLE R22 K35 [{"Size"}]
  LOADK R23 K155 ["$IconSmall"]
  SETTABLEKS R23 R22 K34 ["Size"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K94 [".State-Disabled"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K156 [">> #RibbonTool"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K157 ["> #RibbonToolButtonIcon"]
  DUPTABLE R26 K159 [{"ImageTransparency"}]
  LOADK R27 K160 ["$IconDisabled"]
  SETTABLEKS R27 R26 K158 ["ImageTransparency"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K148 ["> TextLabel"]
  DUPTABLE R23 K95 [{"TextColor3"}]
  LOADK R24 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R24 R23 K24 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K161 [".State-Default"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K156 [">> #RibbonTool"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K162 [":hover"]
  DUPTABLE R27 K163 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R28 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  LOADK R28 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R28 R27 K17 ["BackgroundColor3"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K164 [":pressed"]
  DUPTABLE R28 K163 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R29 K165 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R29 R28 K11 ["BackgroundTransparency"]
  LOADK R29 K166 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R29 R28 K17 ["BackgroundColor3"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K89 [".State-Selected"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K156 [">> #RibbonTool"]
  DUPTABLE R24 K163 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R25 K92 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R25 R24 K11 ["BackgroundTransparency"]
  LOADK R25 K91 ["$SemanticColorStatesSelected"]
  SETTABLEKS R25 R24 K17 ["BackgroundColor3"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K167 [">> Frame .Component-SplitButtonDropdown"]
  DUPTABLE R21 K168 [{"LayoutOrder", "Size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K63 ["LayoutOrder"]
  GETIMPORT R22 K38 [UDim2.new]
  LOADN R23 0
  LOADN R24 12
  LOADN R25 0
  LOADN R26 40
  CALL R22 4 1
  SETTABLEKS R22 R21 K34 ["Size"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K45 [".Small"]
  DUPTABLE R25 K35 [{"Size"}]
  GETIMPORT R26 K38 [UDim2.new]
  LOADN R27 0
  LOADN R28 6
  LOADN R29 0
  LOADN R30 28
  CALL R26 4 1
  SETTABLEKS R26 R25 K34 ["Size"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K169 ["> TextButton"]
  DUPTABLE R26 K170 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R27 K121 [UDim.new]
  LOADN R28 1
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K103 ["AnchorPoint"]
  LOADB R27 0
  SETTABLEKS R27 R26 K144 ["AutoButtonColor"]
  GETIMPORT R27 K38 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K104 ["Position"]
  LOADK R27 K147 [""]
  SETTABLEKS R27 R26 K145 ["Text"]
  LOADN R27 1
  SETTABLEKS R27 R26 K25 ["TextSize"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K171 ["> ImageLabel"]
  DUPTABLE R30 K173 [{"Image", "Size"}]
  LOADK R31 K174 ["$ArrowDownAngleSmall"]
  SETTABLEKS R31 R30 K172 ["Image"]
  GETIMPORT R31 K176 [UDim2.fromOffset]
  LOADN R32 6
  LOADN R33 6
  CALL R31 2 1
  SETTABLEKS R31 R30 K34 ["Size"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K45 [".Small"]
  DUPTABLE R34 K35 [{"Size"}]
  GETIMPORT R35 K176 [UDim2.fromOffset]
  LOADN R36 4
  LOADN R37 4
  CALL R35 2 1
  SETTABLEKS R35 R34 K34 ["Size"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K177 ["> Frame #StateLayer"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K178 [".State-Gradient-Hover"]
  DUPTABLE R26 K179 [{"BackgroundTransparency"}]
  LOADK R27 K180 ["$BackgroundNonTransparent"]
  SETTABLEKS R27 R26 K11 ["BackgroundTransparency"]
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K181 ["::UIGradient"]
  DUPTABLE R30 K185 [{"Color", "Rotation", "Transparency"}]
  LOADK R31 K186 ["$SemanticColorStateLayerHoverGradient"]
  SETTABLEKS R31 R30 K182 ["Color"]
  LOADK R31 K187 ["$SemanticColorStateLayerHoverGradientRotation"]
  SETTABLEKS R31 R30 K183 ["Rotation"]
  LOADK R31 K188 ["$SemanticColorStateLayerHoverGradientTransparency"]
  SETTABLEKS R31 R30 K184 ["Transparency"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K189 [".State-Gradient-Pressed"]
  DUPTABLE R27 K179 [{"BackgroundTransparency"}]
  LOADK R28 K180 ["$BackgroundNonTransparent"]
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K181 ["::UIGradient"]
  DUPTABLE R31 K185 [{"Color", "Rotation", "Transparency"}]
  LOADK R32 K190 ["$SemanticColorStateLayerPressGradient"]
  SETTABLEKS R32 R31 K182 ["Color"]
  LOADK R32 K191 ["$SemanticColorStateLayerPressGradientRotation"]
  SETTABLEKS R32 R31 K183 ["Rotation"]
  LOADK R32 K192 ["$SemanticColorStateLayerPressGradientTransparency"]
  SETTABLEKS R32 R31 K184 ["Transparency"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K193 [".Ribbon-More"]
  DUPTABLE R13 K195 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R14 K107 [Vector2.new]
  LOADN R15 1
  LOADK R16 K108 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K103 ["AnchorPoint"]
  GETIMPORT R14 K38 [UDim2.new]
  LOADN R15 1
  LOADN R16 248
  LOADK R17 K108 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K104 ["Position"]
  LOADN R14 3
  SETTABLEKS R14 R13 K194 ["ZIndex"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K196 [".Component-Button"]
  DUPTABLE R14 K197 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K144 ["AutoButtonColor"]
  LOADK R15 K147 [""]
  SETTABLEKS R15 R14 K145 ["Text"]
  GETIMPORT R15 K38 [UDim2.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  LOADN R19 28
  CALL R15 4 1
  SETTABLEKS R15 R14 K34 ["Size"]
  NEWTABLE R15 0 4
  MOVE R16 R2
  LOADK R17 K198 ["> #StateLayer"]
  DUPTABLE R18 K35 [{"Size"}]
  GETIMPORT R19 K38 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  LOADN R23 28
  CALL R19 4 1
  SETTABLEKS R19 R18 K34 ["Size"]
  NEWTABLE R19 0 6
  MOVE R20 R2
  LOADK R21 K54 ["::UIListLayout"]
  DUPTABLE R22 K199 [{"Padding"}]
  LOADK R23 K62 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K56 ["Padding"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K200 [".X-PadButtonSmall ::UIPadding"]
  DUPTABLE R23 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R24 K52 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K49 ["PaddingLeft"]
  LOADK R24 K52 ["$GlobalSpace150"]
  SETTABLEKS R24 R23 K50 ["PaddingRight"]
  LOADK R24 K62 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K77 ["PaddingTop"]
  LOADK R24 K62 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K78 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K201 [".X-PadButtonLarge ::UIPadding"]
  DUPTABLE R24 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R25 K129 ["$GlobalSpace250"]
  SETTABLEKS R25 R24 K49 ["PaddingLeft"]
  LOADK R25 K129 ["$GlobalSpace250"]
  SETTABLEKS R25 R24 K50 ["PaddingRight"]
  LOADK R25 K52 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K77 ["PaddingTop"]
  LOADK R25 K52 ["$GlobalSpace150"]
  SETTABLEKS R25 R24 K78 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K202 [".X-PadButtonMedium ::UIPadding"]
  DUPTABLE R25 K79 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R26 K69 ["$GlobalSpace200"]
  SETTABLEKS R26 R25 K49 ["PaddingLeft"]
  LOADK R26 K69 ["$GlobalSpace200"]
  SETTABLEKS R26 R25 K50 ["PaddingRight"]
  LOADK R26 K66 ["$GlobalSpace100"]
  SETTABLEKS R26 R25 K77 ["PaddingTop"]
  LOADK R26 K66 ["$GlobalSpace100"]
  SETTABLEKS R26 R25 K78 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K203 ["> #ButtonIcon"]
  DUPTABLE R26 K204 [{"LayoutOrder"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K63 ["LayoutOrder"]
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K152 [".Icon-Large"]
  DUPTABLE R30 K35 [{"Size"}]
  LOADK R31 K153 ["$IconLarge"]
  SETTABLEKS R31 R30 K34 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K154 [".Icon-Small"]
  DUPTABLE R31 K35 [{"Size"}]
  LOADK R32 K155 ["$IconSmall"]
  SETTABLEKS R32 R31 K34 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K205 [".Right"]
  DUPTABLE R32 K204 [{"LayoutOrder"}]
  LOADN R33 3
  SETTABLEKS R33 R32 K63 ["LayoutOrder"]
  CALL R30 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K206 ["> #ButtonText"]
  DUPTABLE R27 K207 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R28 K32 ["$FontWeight700"]
  SETTABLEKS R28 R27 K23 ["Font"]
  LOADK R28 K208 ["$FontSize200"]
  SETTABLEKS R28 R27 K25 ["TextSize"]
  LOADN R28 2
  SETTABLEKS R28 R27 K63 ["LayoutOrder"]
  LOADK R28 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R28 R27 K24 ["TextColor3"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K45 [".Small"]
  DUPTABLE R31 K209 [{"TextSize"}]
  LOADK R32 K88 ["$FontSize150"]
  SETTABLEKS R32 R31 K25 ["TextSize"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K46 [".Large"]
  DUPTABLE R32 K209 [{"TextSize"}]
  LOADK R33 K210 ["$FontSize300"]
  SETTABLEKS R33 R32 K25 ["TextSize"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K211 [".Outline"]
  DUPTABLE R19 K35 [{"Size"}]
  GETIMPORT R20 K38 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  LOADN R24 26
  CALL R20 4 1
  SETTABLEKS R20 R19 K34 ["Size"]
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K212 ["::UIStroke"]
  DUPTABLE R23 K215 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R24 K217 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K213 ["ApplyStrokeMode"]
  LOADK R24 K41 ["$SemanticColorDivider"]
  SETTABLEKS R24 R23 K182 ["Color"]
  LOADK R24 K218 ["$BorderMedium"]
  SETTABLEKS R24 R23 K214 ["Thickness"]
  LOADK R24 K42 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R24 R23 K184 ["Transparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K198 ["> #StateLayer"]
  DUPTABLE R24 K35 [{"Size"}]
  GETIMPORT R25 K38 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  LOADN R29 26
  CALL R25 4 1
  SETTABLEKS R25 R24 K34 ["Size"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K94 [".State-Disabled"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K219 [">> #ButtonIcon"]
  DUPTABLE R24 K159 [{"ImageTransparency"}]
  LOADK R25 K160 ["$IconDisabled"]
  SETTABLEKS R25 R24 K158 ["ImageTransparency"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K220 [">> #ButtonText"]
  DUPTABLE R25 K95 [{"TextColor3"}]
  LOADK R26 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R26 R25 K24 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K161 [".State-Default"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K221 [":hover > #StateLayer"]
  DUPTABLE R25 K163 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R26 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R26 R25 K11 ["BackgroundTransparency"]
  LOADK R26 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R26 R25 K17 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K222 [":pressed > #StateLayer"]
  DUPTABLE R26 K163 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R27 K165 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R27 R26 K11 ["BackgroundTransparency"]
  LOADK R27 K166 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R27 R26 K17 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K223 [".Component-RibbonCheckbox"]
  DUPTABLE R15 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R16 K14 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  LOADK R16 K15 ["$BorderNone"]
  SETTABLEKS R16 R15 K12 ["BorderSizePixel"]
  NEWTABLE R16 0 9
  MOVE R17 R2
  LOADK R18 K224 [">> #CheckboxButton"]
  DUPTABLE R19 K225 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K144 ["AutoButtonColor"]
  LOADK R20 K14 ["$BackgroundTransparent"]
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADK R20 K15 ["$BorderNone"]
  SETTABLEKS R20 R19 K12 ["BorderSizePixel"]
  LOADN R20 1
  SETTABLEKS R20 R19 K63 ["LayoutOrder"]
  LOADK R20 K147 [""]
  SETTABLEKS R20 R19 K145 ["Text"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K226 [">> #CheckboxLabel"]
  DUPTABLE R20 K227 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R21 K14 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K11 ["BackgroundTransparency"]
  LOADK R21 K15 ["$BorderNone"]
  SETTABLEKS R21 R20 K12 ["BorderSizePixel"]
  LOADK R21 K27 ["$FontWeight400"]
  SETTABLEKS R21 R20 K23 ["Font"]
  LOADN R21 2
  SETTABLEKS R21 R20 K63 ["LayoutOrder"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K228 [">> #CheckboxIcon"]
  DUPTABLE R21 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R22 K14 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K11 ["BackgroundTransparency"]
  LOADK R22 K15 ["$BorderNone"]
  SETTABLEKS R22 R21 K12 ["BorderSizePixel"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K229 [".Small, .Medium"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 2
  MOVE R24 R2
  LOADK R25 K224 [">> #CheckboxButton"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K54 ["::UIListLayout"]
  DUPTABLE R30 K231 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R31 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K55 ["FillDirection"]
  LOADK R31 K66 ["$GlobalSpace100"]
  SETTABLEKS R31 R30 K56 ["Padding"]
  GETIMPORT R31 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K57 ["SortOrder"]
  GETIMPORT R31 K233 [Enum.VerticalAlignment.Center]
  SETTABLEKS R31 R30 K230 ["VerticalAlignment"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K228 [">> #CheckboxIcon"]
  DUPTABLE R27 K35 [{"Size"}]
  LOADK R28 K155 ["$IconSmall"]
  SETTABLEKS R28 R27 K34 ["Size"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K45 [".Small"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K226 [">> #CheckboxLabel"]
  DUPTABLE R27 K209 [{"TextSize"}]
  LOADK R28 K88 ["$FontSize150"]
  SETTABLEKS R28 R27 K25 ["TextSize"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K234 [".Medium"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K226 [">> #CheckboxLabel"]
  DUPTABLE R28 K209 [{"TextSize"}]
  LOADK R29 K208 ["$FontSize200"]
  SETTABLEKS R29 R28 K25 ["TextSize"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K46 [".Large"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 3
  MOVE R27 R2
  LOADK R28 K224 [">> #CheckboxButton"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K54 ["::UIListLayout"]
  DUPTABLE R33 K231 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R34 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K55 ["FillDirection"]
  LOADK R34 K52 ["$GlobalSpace150"]
  SETTABLEKS R34 R33 K56 ["Padding"]
  GETIMPORT R34 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K57 ["SortOrder"]
  GETIMPORT R34 K233 [Enum.VerticalAlignment.Center]
  SETTABLEKS R34 R33 K230 ["VerticalAlignment"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K228 [">> #CheckboxIcon"]
  DUPTABLE R30 K35 [{"Size"}]
  LOADK R31 K153 ["$IconLarge"]
  SETTABLEKS R31 R30 K34 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K226 [">> #CheckboxLabel"]
  DUPTABLE R31 K209 [{"TextSize"}]
  LOADK R32 K210 ["$FontSize300"]
  SETTABLEKS R32 R31 K25 ["TextSize"]
  CALL R29 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K161 [".State-Default"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 5
  MOVE R28 R2
  LOADK R29 K228 [">> #CheckboxIcon"]
  DUPTABLE R30 K235 [{"Image"}]
  LOADK R31 K236 ["$CheckboxOffDefault"]
  SETTABLEKS R31 R30 K172 ["Image"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K237 [":hover >> #CheckboxIcon"]
  DUPTABLE R31 K235 [{"Image"}]
  LOADK R32 K238 ["$CheckboxOffHover"]
  SETTABLEKS R32 R31 K172 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K239 [".Checked >> #CheckboxIcon"]
  DUPTABLE R32 K235 [{"Image"}]
  LOADK R33 K240 ["$CheckboxCheckedDefault"]
  SETTABLEKS R33 R32 K172 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K241 [".Indeterminate >> #CheckboxIcon"]
  DUPTABLE R33 K235 [{"Image"}]
  LOADK R34 K242 ["$CheckboxMixDefault"]
  SETTABLEKS R34 R33 K172 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K226 [">> #CheckboxLabel"]
  DUPTABLE R34 K95 [{"TextColor3"}]
  LOADK R35 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K24 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K94 [".State-Disabled"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 4
  MOVE R29 R2
  LOADK R30 K228 [">> #CheckboxIcon"]
  DUPTABLE R31 K235 [{"Image"}]
  LOADK R32 K243 ["$CheckboxOffDisabled"]
  SETTABLEKS R32 R31 K172 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K239 [".Checked >> #CheckboxIcon"]
  DUPTABLE R32 K235 [{"Image"}]
  LOADK R33 K244 ["$CheckboxCheckedDisabled"]
  SETTABLEKS R33 R32 K172 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K241 [".Indeterminate >> #CheckboxIcon"]
  DUPTABLE R33 K235 [{"Image"}]
  LOADK R34 K245 ["$CheckboxMixDisabled"]
  SETTABLEKS R34 R33 K172 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K226 [">> #CheckboxLabel"]
  DUPTABLE R34 K95 [{"TextColor3"}]
  LOADK R35 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R35 R34 K24 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K246 [".Component-RibbonRadioButton"]
  DUPTABLE R16 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R17 K14 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K11 ["BackgroundTransparency"]
  LOADK R17 K15 ["$BorderNone"]
  SETTABLEKS R17 R16 K12 ["BorderSizePixel"]
  NEWTABLE R17 0 9
  MOVE R18 R2
  LOADK R19 K247 [">> #RadioButton"]
  DUPTABLE R20 K225 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K144 ["AutoButtonColor"]
  LOADK R21 K14 ["$BackgroundTransparent"]
  SETTABLEKS R21 R20 K11 ["BackgroundTransparency"]
  LOADK R21 K15 ["$BorderNone"]
  SETTABLEKS R21 R20 K12 ["BorderSizePixel"]
  LOADN R21 1
  SETTABLEKS R21 R20 K63 ["LayoutOrder"]
  LOADK R21 K147 [""]
  SETTABLEKS R21 R20 K145 ["Text"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K248 [">> #RadioButtonLabel"]
  DUPTABLE R21 K227 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R22 K14 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K11 ["BackgroundTransparency"]
  LOADK R22 K15 ["$BorderNone"]
  SETTABLEKS R22 R21 K12 ["BorderSizePixel"]
  LOADK R22 K27 ["$FontWeight400"]
  SETTABLEKS R22 R21 K23 ["Font"]
  LOADN R22 2
  SETTABLEKS R22 R21 K63 ["LayoutOrder"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K249 [">> #RadioButtonIcon"]
  DUPTABLE R22 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R23 K14 ["$BackgroundTransparent"]
  SETTABLEKS R23 R22 K11 ["BackgroundTransparency"]
  LOADK R23 K15 ["$BorderNone"]
  SETTABLEKS R23 R22 K12 ["BorderSizePixel"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K229 [".Small, .Medium"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K247 [">> #RadioButton"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K54 ["::UIListLayout"]
  DUPTABLE R31 K231 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R32 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R32 R31 K55 ["FillDirection"]
  LOADK R32 K66 ["$GlobalSpace100"]
  SETTABLEKS R32 R31 K56 ["Padding"]
  GETIMPORT R32 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R32 R31 K57 ["SortOrder"]
  GETIMPORT R32 K233 [Enum.VerticalAlignment.Center]
  SETTABLEKS R32 R31 K230 ["VerticalAlignment"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K249 [">> #RadioButtonIcon"]
  DUPTABLE R28 K35 [{"Size"}]
  LOADK R29 K155 ["$IconSmall"]
  SETTABLEKS R29 R28 K34 ["Size"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K45 [".Small"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K248 [">> #RadioButtonLabel"]
  DUPTABLE R28 K209 [{"TextSize"}]
  LOADK R29 K88 ["$FontSize150"]
  SETTABLEKS R29 R28 K25 ["TextSize"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K234 [".Medium"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K248 [">> #RadioButtonLabel"]
  DUPTABLE R29 K209 [{"TextSize"}]
  LOADK R30 K208 ["$FontSize200"]
  SETTABLEKS R30 R29 K25 ["TextSize"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K46 [".Large"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 3
  MOVE R28 R2
  LOADK R29 K247 [">> #RadioButton"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K54 ["::UIListLayout"]
  DUPTABLE R34 K231 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R35 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K55 ["FillDirection"]
  LOADK R35 K52 ["$GlobalSpace150"]
  SETTABLEKS R35 R34 K56 ["Padding"]
  GETIMPORT R35 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K57 ["SortOrder"]
  GETIMPORT R35 K233 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K230 ["VerticalAlignment"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K249 [">> #RadioButtonIcon"]
  DUPTABLE R31 K35 [{"Size"}]
  LOADK R32 K153 ["$IconLarge"]
  SETTABLEKS R32 R31 K34 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K248 [">> #RadioButtonLabel"]
  DUPTABLE R32 K209 [{"TextSize"}]
  LOADK R33 K210 ["$FontSize300"]
  SETTABLEKS R33 R32 K25 ["TextSize"]
  CALL R30 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K161 [".State-Default"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 4
  MOVE R29 R2
  LOADK R30 K249 [">> #RadioButtonIcon"]
  DUPTABLE R31 K235 [{"Image"}]
  LOADK R32 K250 ["$RadioButtonUncheckedDefault"]
  SETTABLEKS R32 R31 K172 ["Image"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K251 [":hover >> #RadioButtonIcon"]
  DUPTABLE R32 K235 [{"Image"}]
  LOADK R33 K252 ["$RadioButtonUncheckedHover"]
  SETTABLEKS R33 R32 K172 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K253 [".Checked >> #RadioButtonIcon"]
  DUPTABLE R33 K235 [{"Image"}]
  LOADK R34 K254 ["$RadioButtonCheckedDefault"]
  SETTABLEKS R34 R33 K172 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K248 [">> #RadioButtonLabel"]
  DUPTABLE R34 K95 [{"TextColor3"}]
  LOADK R35 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R35 R34 K24 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K94 [".State-Disabled"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 3
  MOVE R30 R2
  LOADK R31 K249 [">> #RadioButtonIcon"]
  DUPTABLE R32 K235 [{"Image"}]
  LOADK R33 K255 ["$RadioButtonUncheckedDisabled"]
  SETTABLEKS R33 R32 K172 ["Image"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K253 [".Checked >> #RadioButtonIcon"]
  DUPTABLE R33 K235 [{"Image"}]
  LOADK R34 K0 ["script"]
  SETTABLEKS R34 R33 K172 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K248 [">> #RadioButtonLabel"]
  DUPTABLE R34 K95 [{"TextColor3"}]
  LOADK R35 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R35 R34 K24 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K1 [script]
  DUPTABLE R17 K258 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R18 0
  SETTABLEKS R18 R17 K144 ["AutoButtonColor"]
  LOADK R18 K15 ["$BorderNone"]
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  LOADK R18 K14 ["$BackgroundTransparent"]
  SETTABLEKS R18 R17 K11 ["BackgroundTransparency"]
  LOADK R18 K147 [""]
  SETTABLEKS R18 R17 K145 ["Text"]
  NEWTABLE R18 0 8
  MOVE R19 R2
  LOADK R20 K3 ["require"]
  DUPTABLE R21 K260 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R22 K15 ["$BorderNone"]
  SETTABLEKS R22 R21 K12 ["BorderSizePixel"]
  LOADK R22 K14 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K11 ["BackgroundTransparency"]
  LOADN R22 1
  SETTABLEKS R22 R21 K63 ["LayoutOrder"]
  LOADK R22 K153 ["$IconLarge"]
  SETTABLEKS R22 R21 K34 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K5 ["Packages"]
  DUPTABLE R22 K262 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R23 K107 [Vector2.new]
  LOADN R24 1
  LOADK R25 K108 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K103 ["AnchorPoint"]
  GETIMPORT R23 K110 [UDim2.fromScale]
  LOADN R24 1
  LOADK R25 K108 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K104 ["Position"]
  LOADK R23 K15 ["$BorderNone"]
  SETTABLEKS R23 R22 K12 ["BorderSizePixel"]
  LOADN R23 1
  SETTABLEKS R23 R22 K11 ["BackgroundTransparency"]
  LOADK R23 K7 ["Styling"]
  SETTABLEKS R23 R22 K172 ["Image"]
  LOADN R23 3
  SETTABLEKS R23 R22 K63 ["LayoutOrder"]
  LOADK R23 K155 ["$IconSmall"]
  SETTABLEKS R23 R22 K34 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K8 ["createStyleRule"]
  DUPTABLE R23 K168 [{"LayoutOrder", "Size"}]
  LOADN R24 3
  SETTABLEKS R24 R23 K63 ["LayoutOrder"]
  LOADK R24 K155 ["$IconSmall"]
  SETTABLEKS R24 R23 K34 ["Size"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K22 [">> TextLabel"]
  DUPTABLE R24 K265 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K11 ["BackgroundTransparency"]
  LOADK R25 K27 ["$FontWeight400"]
  SETTABLEKS R25 R24 K23 ["Font"]
  LOADK R25 K88 ["$FontSize150"]
  SETTABLEKS R25 R24 K25 ["TextSize"]
  LOADN R25 2
  SETTABLEKS R25 R24 K63 ["LayoutOrder"]
  LOADK R25 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R25 R24 K24 ["TextColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K45 [".Small"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K3 ["require"]
  DUPTABLE R29 K35 [{"Size"}]
  LOADK R30 K155 ["$IconSmall"]
  SETTABLEKS R30 R29 K34 ["Size"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K22 [">> TextLabel"]
  DUPTABLE R30 K209 [{"TextSize"}]
  LOADK R31 K29 ["$FontSize100"]
  SETTABLEKS R31 R30 K25 ["TextSize"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K10 [".Role-Surface"]
  DUPTABLE R26 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R27 K11 ["BackgroundTransparency"]
  SETTABLEKS R27 R26 K17 ["BackgroundColor3"]
  LOADK R27 K12 ["BorderSizePixel"]
  SETTABLEKS R27 R26 K11 ["BackgroundTransparency"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K89 [".State-Selected"]
  DUPTABLE R27 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K91 ["$SemanticColorStatesSelected"]
  SETTABLEKS R28 R27 K17 ["BackgroundColor3"]
  LOADK R28 K92 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K94 [".State-Disabled"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K3 ["require"]
  DUPTABLE R32 K159 [{"ImageTransparency"}]
  LOADK R33 K160 ["$IconDisabled"]
  SETTABLEKS R33 R32 K158 ["ImageTransparency"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K22 [">> TextLabel"]
  DUPTABLE R33 K95 [{"TextColor3"}]
  LOADK R34 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R34 R33 K24 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R18 K35 [{"Size"}]
  GETIMPORT R19 K38 [UDim2.new]
  LOADN R20 0
  LOADN R21 90
  LOADN R22 0
  LOADN R23 20
  CALL R19 4 1
  SETTABLEKS R19 R18 K34 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K14 ["$BackgroundTransparent"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 6
  MOVE R21 R2
  LOADK R22 K212 ["::UIStroke"]
  DUPTABLE R23 K271 [{"Thickness"}]
  LOADK R24 K15 ["$BorderNone"]
  SETTABLEKS R24 R23 K214 ["Thickness"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K16 [".Role-Surface100"]
  DUPTABLE R24 K209 [{"TextSize"}]
  LOADK R25 K88 ["$FontSize150"]
  SETTABLEKS R25 R24 K25 ["TextSize"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K161 [".State-Default"]
  DUPTABLE R25 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R26 K17 ["BackgroundColor3"]
  SETTABLEKS R26 R25 K17 ["BackgroundColor3"]
  LOADK R26 K18 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R26 R25 K11 ["BackgroundTransparency"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K16 [".Role-Surface100"]
  DUPTABLE R29 K95 [{"TextColor3"}]
  LOADK R30 K87 ["$SemanticColorContentMuted"]
  SETTABLEKS R30 R29 K24 ["TextColor3"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K19 ["$DEPRECATED_MainBackground"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K212 ["::UIStroke"]
  DUPTABLE R30 K276 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R31 K217 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R31 R30 K213 ["ApplyStrokeMode"]
  LOADK R31 K21 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R31 R30 K182 ["Color"]
  LOADK R31 K218 ["$BorderMedium"]
  SETTABLEKS R31 R30 K214 ["Thickness"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K16 [".Role-Surface100"]
  DUPTABLE R31 K95 [{"TextColor3"}]
  LOADK R32 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R32 R31 K24 ["TextColor3"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K22 [">> TextLabel"]
  DUPTABLE R27 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R28 K23 ["Font"]
  SETTABLEKS R28 R27 K17 ["BackgroundColor3"]
  LOADK R28 K24 ["TextColor3"]
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K16 [".Role-Surface100"]
  DUPTABLE R31 K95 [{"TextColor3"}]
  LOADK R32 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R32 R31 K24 ["TextColor3"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K25 ["TextSize"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K212 ["::UIStroke"]
  DUPTABLE R36 K282 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R37 K217 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R37 R36 K213 ["ApplyStrokeMode"]
  LOADK R37 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R37 R36 K182 ["Color"]
  LOADK R37 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R37 R36 K184 ["Transparency"]
  LOADK R37 K218 ["$BorderMedium"]
  SETTABLEKS R37 R36 K214 ["Thickness"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K94 [".State-Disabled"]
  DUPTABLE R28 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R29 K17 ["BackgroundColor3"]
  SETTABLEKS R29 R28 K17 ["BackgroundColor3"]
  LOADK R29 K18 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R29 R28 K11 ["BackgroundTransparency"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K16 [".Role-Surface100"]
  DUPTABLE R32 K95 [{"TextColor3"}]
  LOADK R33 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K24 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K27 ["$FontWeight400"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K169 ["> TextButton"]
  DUPTABLE R24 K35 [{"Size"}]
  GETIMPORT R25 K38 [UDim2.new]
  LOADN R26 0
  LOADN R27 16
  LOADN R28 0
  LOADN R29 8
  CALL R25 4 1
  SETTABLEKS R25 R24 K34 ["Size"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K28 ["$SemanticColorContentStandardInverse"]
  DUPTABLE R28 K35 [{"Size"}]
  GETIMPORT R29 K38 [UDim2.new]
  LOADN R30 0
  LOADN R31 16
  LOADN R32 0
  LOADN R33 8
  CALL R29 4 1
  SETTABLEKS R29 R28 K34 ["Size"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K161 [".State-Default"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K29 ["$FontSize100"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K30 [".Text-Title"]
  DUPTABLE R33 K235 [{"Image"}]
  LOADK R34 K31 [{"Font"}]
  SETTABLEKS R34 R33 K172 ["Image"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K32 ["$FontWeight700"]
  DUPTABLE R34 K235 [{"Image"}]
  LOADK R35 K33 [".Role-DividerH"]
  SETTABLEKS R35 R34 K172 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K34 ["Size"]
  DUPTABLE R35 K235 [{"Image"}]
  LOADK R36 K35 [{"Size"}]
  SETTABLEKS R36 R35 K172 ["Image"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K36 ["UDim2"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K30 [".Text-Title"]
  DUPTABLE R34 K235 [{"Image"}]
  LOADK R35 K37 ["new"]
  SETTABLEKS R35 R34 K172 ["Image"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K32 ["$FontWeight700"]
  DUPTABLE R35 K235 [{"Image"}]
  LOADK R36 K38 [UDim2.new]
  SETTABLEKS R36 R35 K172 ["Image"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K34 ["Size"]
  DUPTABLE R36 K235 [{"Image"}]
  LOADK R37 K39 ["> Frame"]
  SETTABLEKS R37 R36 K172 ["Image"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K40 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  DUPTABLE R21 K179 [{"BackgroundTransparency"}]
  LOADK R22 K14 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K11 ["BackgroundTransparency"]
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K41 ["$SemanticColorDivider"]
  DUPTABLE R25 K113 [{"CornerRadius"}]
  LOADK R26 K118 ["$GlobalRadiusMedium"]
  SETTABLEKS R26 R25 K112 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K42 ["$SemanticColorDividerTransparency"]
  DUPTABLE R26 K215 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R27 K217 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R27 R26 K213 ["ApplyStrokeMode"]
  LOADK R27 K41 ["$SemanticColorDivider"]
  SETTABLEKS R27 R26 K182 ["Color"]
  LOADK R27 K218 ["$BorderMedium"]
  SETTABLEKS R27 R26 K214 ["Thickness"]
  LOADK R27 K42 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R27 R26 K184 ["Transparency"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K43 [".Role-DividerV"]
  DUPTABLE R27 K179 [{"BackgroundTransparency"}]
  LOADK R28 K14 ["$BackgroundTransparent"]
  SETTABLEKS R28 R27 K11 ["BackgroundTransparency"]
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K41 ["$SemanticColorDivider"]
  DUPTABLE R31 K113 [{"CornerRadius"}]
  LOADK R32 K118 ["$GlobalRadiusMedium"]
  SETTABLEKS R32 R31 K112 ["CornerRadius"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K44 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  DUPTABLE R32 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R33 K14 ["$BackgroundTransparent"]
  SETTABLEKS R33 R32 K11 ["BackgroundTransparency"]
  LOADK R33 K15 ["$BorderNone"]
  SETTABLEKS R33 R32 K12 ["BorderSizePixel"]
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K162 [":hover"]
  DUPTABLE R36 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R37 K99 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R37 R36 K17 ["BackgroundColor3"]
  LOADK R37 K100 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R37 R36 K11 ["BackgroundTransparency"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K45 [".Small"]
  DUPTABLE R37 K98 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R38 K166 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R38 R37 K17 ["BackgroundColor3"]
  LOADK R38 K165 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R38 R37 K11 ["BackgroundTransparency"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K46 [".Large"]
  DUPTABLE R33 K303 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R34 K88 ["$FontSize150"]
  SETTABLEKS R34 R33 K25 ["TextSize"]
  LOADB R34 0
  SETTABLEKS R34 R33 K144 ["AutoButtonColor"]
  LOADK R34 K15 ["$BorderNone"]
  SETTABLEKS R34 R33 K12 ["BorderSizePixel"]
  NEWTABLE R34 0 3
  MOVE R35 R2
  LOADK R36 K48 ["::UIPadding"]
  DUPTABLE R37 K51 [{"PaddingLeft", "PaddingRight"}]
  LOADK R38 K52 ["$GlobalSpace150"]
  SETTABLEKS R38 R37 K49 ["PaddingLeft"]
  LOADK R38 K52 ["$GlobalSpace150"]
  SETTABLEKS R38 R37 K50 ["PaddingRight"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K161 [".State-Default"]
  DUPTABLE R38 K304 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R39 K14 ["$BackgroundTransparent"]
  SETTABLEKS R39 R38 K11 ["BackgroundTransparency"]
  LOADK R39 K32 ["$FontWeight700"]
  SETTABLEKS R39 R38 K23 ["Font"]
  LOADK R39 K87 ["$SemanticColorContentMuted"]
  SETTABLEKS R39 R38 K24 ["TextColor3"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K89 [".State-Selected"]
  DUPTABLE R39 K90 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R40 K91 ["$SemanticColorStatesSelected"]
  SETTABLEKS R40 R39 K17 ["BackgroundColor3"]
  LOADK R40 K92 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R40 R39 K11 ["BackgroundTransparency"]
  LOADK R40 K32 ["$FontWeight700"]
  SETTABLEKS R40 R39 K23 ["Font"]
  LOADK R40 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R40 R39 K24 ["TextColor3"]
  CALL R37 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K49 ["PaddingLeft"]
  DUPTABLE R22 K306 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R23 K309 [Color3.fromHex]
  LOADK R24 K54 ["::UIListLayout"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K17 ["BackgroundColor3"]
  LOADK R23 K180 ["$BackgroundNonTransparent"]
  SETTABLEKS R23 R22 K11 ["BackgroundTransparency"]
  GETIMPORT R23 K38 [UDim2.new]
  LOADN R24 0
  LOADN R25 40
  LOADN R26 0
  LOADN R27 24
  CALL R23 4 1
  SETTABLEKS R23 R22 K34 ["Size"]
  NEWTABLE R23 0 6
  MOVE R24 R2
  LOADK R25 K55 ["FillDirection"]
  DUPTABLE R26 K113 [{"CornerRadius"}]
  LOADK R27 K56 ["Padding"]
  SETTABLEKS R27 R26 K112 ["CornerRadius"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K48 ["::UIPadding"]
  DUPTABLE R27 K313 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R28 K73 ["$GlobalSpace25"]
  SETTABLEKS R28 R27 K78 ["PaddingBottom"]
  LOADK R28 K73 ["$GlobalSpace25"]
  SETTABLEKS R28 R27 K49 ["PaddingLeft"]
  LOADK R28 K73 ["$GlobalSpace25"]
  SETTABLEKS R28 R27 K50 ["PaddingRight"]
  LOADK R28 K73 ["$GlobalSpace25"]
  SETTABLEKS R28 R27 K77 ["PaddingTop"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K54 ["::UIListLayout"]
  DUPTABLE R28 K315 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R29 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R29 R28 K55 ["FillDirection"]
  GETIMPORT R29 K317 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R29 R28 K314 ["HorizontalAlignment"]
  GETIMPORT R29 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K57 ["SortOrder"]
  GETIMPORT R29 K233 [Enum.VerticalAlignment.Center]
  SETTABLEKS R29 R28 K230 ["VerticalAlignment"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K39 ["> Frame"]
  DUPTABLE R29 K318 [{"BackgroundColor3", "Size"}]
  LOADK R30 K63 ["LayoutOrder"]
  SETTABLEKS R30 R29 K17 ["BackgroundColor3"]
  GETIMPORT R30 K38 [UDim2.new]
  LOADN R31 0
  LOADN R32 20
  LOADN R33 0
  LOADN R34 20
  CALL R30 4 1
  SETTABLEKS R30 R29 K34 ["Size"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K55 ["FillDirection"]
  DUPTABLE R33 K113 [{"CornerRadius"}]
  LOADK R34 K56 ["Padding"]
  SETTABLEKS R34 R33 K112 ["CornerRadius"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K89 [".State-Selected"]
  DUPTABLE R30 K320 [{"BackgroundColor3"}]
  GETIMPORT R31 K309 [Color3.fromHex]
  LOADK R32 K65 [".X-RowSpace100"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K17 ["BackgroundColor3"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K54 ["::UIListLayout"]
  DUPTABLE R34 K322 [{"HorizontalAlignment"}]
  GETIMPORT R35 K324 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R35 R34 K314 ["HorizontalAlignment"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K94 [".State-Disabled"]
  DUPTABLE R31 K179 [{"BackgroundTransparency"}]
  LOADK R32 K69 ["$GlobalSpace200"]
  SETTABLEKS R32 R31 K11 ["BackgroundTransparency"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K39 ["> Frame"]
  DUPTABLE R35 K179 [{"BackgroundTransparency"}]
  LOADK R36 K69 ["$GlobalSpace200"]
  SETTABLEKS R36 R35 K11 ["BackgroundTransparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETLIST R4 R5 16 [33]
  MOVE R5 R2
  LOADK R6 K70 [".X-ColumnSpace25"]
  DUPTABLE R7 K328 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K327 ["Active"]
  LOADB R8 0
  SETTABLEKS R8 R7 K144 ["AutoButtonColor"]
  GETIMPORT R8 K107 [Vector2.new]
  LOADN R9 1
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K103 ["AnchorPoint"]
  GETIMPORT R8 K110 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K104 ["Position"]
  LOADK R8 K147 [""]
  SETTABLEKS R8 R7 K145 ["Text"]
  LOADN R8 2
  SETTABLEKS R8 R7 K194 ["ZIndex"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K73 ["$GlobalSpace25"]
  DUPTABLE R8 K330 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R9 K107 [Vector2.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K103 ["AnchorPoint"]
  GETIMPORT R9 K38 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  CALL R9 4 1
  SETTABLEKS R9 R8 K104 ["Position"]
  GETIMPORT R9 K38 [UDim2.new]
  LOADN R10 0
  LOADN R11 22
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K34 ["Size"]
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K181 ["::UIGradient"]
  DUPTABLE R12 K185 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R13 K332 [ColorSequence.new]
  GETIMPORT R14 K309 [Color3.fromHex]
  LOADK R15 K77 ["PaddingTop"]
  CALL R14 1 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K182 ["Color"]
  LOADN R13 180
  SETTABLEKS R13 R12 K183 ["Rotation"]
  GETIMPORT R13 K335 [NumberSequence.new]
  NEWTABLE R14 0 3
  GETIMPORT R15 K337 [NumberSequenceKeypoint.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  GETIMPORT R16 K337 [NumberSequenceKeypoint.new]
  LOADK R17 K108 [0.5]
  LOADN R18 0
  CALL R16 2 1
  GETIMPORT R17 K337 [NumberSequenceKeypoint.new]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R13 1 1
  SETTABLEKS R13 R12 K184 ["Transparency"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K82 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R9 K35 [{"Size"}]
  GETIMPORT R10 K38 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 84
  CALL R10 4 1
  SETTABLEKS R10 R9 K34 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K83 [{"PaddingRight"}]
  DUPTABLE R10 K35 [{"Size"}]
  GETIMPORT R11 K38 [UDim2.new]
  LOADN R12 1
  LOADN R13 224
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K34 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K84 [".X-RowXS"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 3
  MOVE R13 R2
  LOADK R14 K54 ["::UIListLayout"]
  DUPTABLE R15 K341 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R16 K61 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K55 ["FillDirection"]
  GETIMPORT R16 K317 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K314 ["HorizontalAlignment"]
  GETIMPORT R16 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K57 ["SortOrder"]
  GETIMPORT R16 K233 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K230 ["VerticalAlignment"]
  LOADK R16 K66 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K56 ["Padding"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K148 ["> TextLabel"]
  DUPTABLE R16 K265 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R17 K14 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K11 ["BackgroundTransparency"]
  LOADK R17 K27 ["$FontWeight400"]
  SETTABLEKS R17 R16 K23 ["Font"]
  LOADK R17 K88 ["$FontSize150"]
  SETTABLEKS R17 R16 K25 ["TextSize"]
  LOADN R17 0
  SETTABLEKS R17 R16 K63 ["LayoutOrder"]
  LOADK R17 K93 ["$SemanticColorContentStandard"]
  SETTABLEKS R17 R16 K24 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K94 [".State-Disabled"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K148 ["> TextLabel"]
  DUPTABLE R21 K95 [{"TextColor3"}]
  LOADK R22 K96 ["$SemanticColorContentDisabled"]
  SETTABLEKS R22 R21 K24 ["TextColor3"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R4 R5 -1 [49]
  MOVE R5 R3
  LOADK R6 K86 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  MOVE R7 R4
  DUPTABLE R8 K344 [{"Size", "SizeDense"}]
  GETIMPORT R9 K38 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K34 ["Size"]
  GETIMPORT R9 K38 [UDim2.new]
  LOADN R10 0
  LOADN R11 90
  LOADN R12 0
  LOADN R13 20
  CALL R9 4 1
  SETTABLEKS R9 R8 K343 ["SizeDense"]
  CALL R5 3 -1
  RETURN R5 -1
