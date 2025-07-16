MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["StyleConstants"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K11 ["Styling"]
  GETTABLEKS R3 R4 K12 ["createStyleRule"]
  GETTABLEKS R5 R1 K11 ["Styling"]
  GETTABLEKS R4 R5 K13 ["createStyleSheet"]
  NEWTABLE R5 0 46
  MOVE R6 R3
  LOADK R7 K14 ["ImageButton"]
  DUPTABLE R8 K16 [{"Size"}]
  GETIMPORT R9 K19 [UDim2.fromOffset]
  LOADN R10 28
  LOADN R11 28
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["Size"]
  NEWTABLE R9 0 7
  MOVE R10 R3
  LOADK R11 K20 [".ClearTextIcon"]
  DUPTABLE R12 K22 [{"Image"}]
  LOADK R13 K23 ["$ClearText"]
  SETTABLEKS R13 R12 K21 ["Image"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K24 [">ImageLabel .MatchCaseIcon"]
  DUPTABLE R13 K22 [{"Image"}]
  LOADK R14 K25 ["$MatchCase"]
  SETTABLEKS R14 R13 K21 ["Image"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K26 [">ImageLabel .MatchWholeWordIcon"]
  DUPTABLE R14 K22 [{"Image"}]
  LOADK R15 K27 ["$MatchWholeWord"]
  SETTABLEKS R15 R14 K21 ["Image"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K28 [">ImageLabel .RegularExpressionIcon"]
  DUPTABLE R15 K22 [{"Image"}]
  LOADK R16 K29 ["$RegularExpression"]
  SETTABLEKS R16 R15 K21 ["Image"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K30 [">ImageLabel .FindPreviousIcon"]
  DUPTABLE R16 K22 [{"Image"}]
  LOADK R17 K31 ["$ArrowUp"]
  SETTABLEKS R17 R16 K21 ["Image"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K32 [">ImageLabel .FindNextIcon"]
  DUPTABLE R17 K22 [{"Image"}]
  LOADK R18 K33 ["$ArrowDown"]
  SETTABLEKS R18 R17 K21 ["Image"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K34 [">ImageLabel .ThreeDotsIcon"]
  DUPTABLE R18 K22 [{"Image"}]
  LOADK R19 K35 ["$ThreeDots"]
  SETTABLEKS R19 R18 K21 ["Image"]
  CALL R16 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R3
  LOADK R8 K36 ["ImageLabel"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 3
  MOVE R11 R3
  LOADK R12 K37 [".CheckboxOffIcon"]
  DUPTABLE R13 K22 [{"Image"}]
  LOADK R14 K38 ["$CheckboxOff"]
  SETTABLEKS R14 R13 K21 ["Image"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K39 [".CheckboxOnIcon"]
  DUPTABLE R14 K22 [{"Image"}]
  LOADK R15 K40 ["$CheckboxOn"]
  SETTABLEKS R15 R14 K21 ["Image"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K41 [".FindBarSearchIcon"]
  DUPTABLE R15 K22 [{"Image"}]
  LOADK R16 K42 ["$FindBarSearchIcon"]
  SETTABLEKS R16 R15 K21 ["Image"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R3
  LOADK R9 K43 [".FindReplaceAll-Hovered"]
  DUPTABLE R10 K46 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R11 K47 ["$SemanticColorStatesHover"]
  SETTABLEKS R11 R10 K44 ["BackgroundColor3"]
  LOADK R11 K48 ["$SemanticColorStatesHoverTransparency"]
  SETTABLEKS R11 R10 K45 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K49 [".FindReplaceAll-NotHovered"]
  DUPTABLE R11 K50 [{"BackgroundTransparency"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K45 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K51 [".FindReplaceAll-ResultRowNode-Pill"]
  DUPTABLE R12 K53 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R13 K54 ["$SemanticColorShift300"]
  SETTABLEKS R13 R12 K44 ["BackgroundColor3"]
  LOADK R13 K55 ["$SemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R13 R12 K45 ["BackgroundTransparency"]
  LOADK R13 K56 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R13 R12 K52 ["TextColor3"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K57 ["::UICorner"]
  DUPTABLE R16 K59 [{"CornerRadius"}]
  GETIMPORT R17 K62 [UDim.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K58 ["CornerRadius"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K63 [".FindReplaceAll-ResultRowNode ::UICorner"]
  DUPTABLE R13 K59 [{"CornerRadius"}]
  GETIMPORT R14 K62 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R2 K64 ["radiusSmall"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K58 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K65 [".FindReplaceAll-ScrollingFrame"]
  DUPTABLE R14 K71 [{"BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  LOADK R15 K72 ["$BottomImage"]
  SETTABLEKS R15 R14 K66 ["BottomImage"]
  LOADK R15 K73 ["$MidImage"]
  SETTABLEKS R15 R14 K67 ["MidImage"]
  LOADK R15 K74 ["$TopImage"]
  SETTABLEKS R15 R14 K68 ["TopImage"]
  LOADK R15 K75 ["$ColorActionStandardBackground"]
  SETTABLEKS R15 R14 K69 ["ScrollBarImageColor3"]
  LOADK R15 K76 ["$ColorActionStandardBackgroundTransparency"]
  SETTABLEKS R15 R14 K70 ["ScrollBarImageTransparency"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K77 [".FindReplaceAll-Content-Default"]
  DUPTABLE R15 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R16 K80 ["$SemanticColorContentDefault"]
  SETTABLEKS R16 R15 K78 ["ImageColor3"]
  LOADK R16 K80 ["$SemanticColorContentDefault"]
  SETTABLEKS R16 R15 K52 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K81 [".FindReplaceAll-Content-Emphasis"]
  DUPTABLE R16 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R17 K56 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R17 R16 K78 ["ImageColor3"]
  LOADK R17 K56 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R17 R16 K52 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K82 [".FindReplaceAll-Selected"]
  DUPTABLE R17 K46 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K83 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R18 R17 K44 ["BackgroundColor3"]
  LOADK R18 K84 [0.76]
  SETTABLEKS R18 R17 K45 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K85 [".FindReplaceAll-NotSelected"]
  DUPTABLE R18 K50 [{"BackgroundTransparency"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K45 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K86 [".FindReplaceAll-BG-Surface0"]
  DUPTABLE R19 K46 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K87 ["$SemanticColorSurface0"]
  SETTABLEKS R20 R19 K44 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K45 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K88 [".FindReplaceAll-BG-Surface100"]
  DUPTABLE R20 K46 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K89 ["$SemanticColorSurface100"]
  SETTABLEKS R21 R20 K44 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K45 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K90 [".FindReplaceAll-BG-Shift300"]
  DUPTABLE R21 K46 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K54 ["$SemanticColorShift300"]
  SETTABLEKS R22 R21 K44 ["BackgroundColor3"]
  LOADK R22 K91 ["$SemanticColorShift300Transparency"]
  SETTABLEKS R22 R21 K45 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K92 [".FindReplaceAll-BG-Input"]
  DUPTABLE R22 K46 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K93 ["$SemanticColorComponentInputFill"]
  SETTABLEKS R23 R22 K44 ["BackgroundColor3"]
  LOADK R23 K94 ["$SemanticColorComponentInputFillTransparency"]
  SETTABLEKS R23 R22 K45 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K95 [".FindReplaceAll-Button"]
  DUPTABLE R23 K98 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K96 ["AutoButtonColor"]
  LOADN R24 1
  SETTABLEKS R24 R23 K45 ["BackgroundTransparency"]
  LOADK R24 K99 [""]
  SETTABLEKS R24 R23 K97 ["Text"]
  CALL R21 2 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R3
  LOADK R7 K100 [".FindReplaceAll-GrowX"]
  DUPTABLE R8 K16 [{"Size"}]
  GETIMPORT R9 K102 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["Size"]
  NEWTABLE R9 0 1
  MOVE R10 R3
  LOADK R11 K103 ["::UIFlexItem"]
  DUPTABLE R12 K105 [{"FlexMode"}]
  GETIMPORT R13 K109 [Enum.UIFlexMode.Grow]
  SETTABLEKS R13 R12 K104 ["FlexMode"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R3
  LOADK R8 K110 [".FindReplaceAll-ShrinkX"]
  DUPTABLE R9 K112 [{"AutomaticSize"}]
  GETIMPORT R10 K114 [Enum.AutomaticSize.X]
  SETTABLEKS R10 R9 K111 ["AutomaticSize"]
  NEWTABLE R10 0 1
  MOVE R11 R3
  LOADK R12 K103 ["::UIFlexItem"]
  DUPTABLE R13 K105 [{"FlexMode"}]
  GETIMPORT R14 K116 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R14 R13 K104 ["FlexMode"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R3
  LOADK R9 K117 [".FindReplaceAll-FillX"]
  DUPTABLE R10 K16 [{"Size"}]
  GETIMPORT R11 K102 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Size"]
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K103 ["::UIFlexItem"]
  DUPTABLE R14 K105 [{"FlexMode"}]
  GETIMPORT R15 K119 [Enum.UIFlexMode.Fill]
  SETTABLEKS R15 R14 K104 ["FlexMode"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K120 [".FindReplaceAll-SidePadS ::UIPadding"]
  DUPTABLE R11 K123 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K62 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K121 ["PaddingLeft"]
  GETIMPORT R12 K62 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K122 ["PaddingRight"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K124 [".FindReplaceAll-SidePadM ::UIPadding"]
  DUPTABLE R12 K123 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R13 K62 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K121 ["PaddingLeft"]
  GETIMPORT R13 K62 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K122 ["PaddingRight"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K125 [".FindReplaceAll-XColumnS"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R3
  LOADK R16 K126 ["::UIListLayout"]
  DUPTABLE R17 K130 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K132 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K127 ["FillDirection"]
  GETIMPORT R18 K62 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K128 ["Padding"]
  GETIMPORT R18 K134 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K129 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K135 [".FindReplaceAll-XPad ::UIPadding"]
  DUPTABLE R14 K138 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K62 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K121 ["PaddingLeft"]
  GETIMPORT R15 K62 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K122 ["PaddingRight"]
  GETIMPORT R15 K62 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K136 ["PaddingTop"]
  GETIMPORT R15 K62 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K137 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K139 [".FindReplaceAll-PadRight ::UIPadding"]
  DUPTABLE R15 K140 [{"PaddingRight"}]
  GETIMPORT R16 K62 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K122 ["PaddingRight"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K141 [".FindReplaceAll-PadLeftS ::UIPadding"]
  DUPTABLE R16 K142 [{"PaddingLeft"}]
  GETIMPORT R17 K62 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K121 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K143 [".FindReplaceAll-Content-Disabled"]
  DUPTABLE R17 K144 [{"TextColor3"}]
  LOADK R18 K145 ["$SemanticColorContentDisabled"]
  SETTABLEKS R18 R17 K52 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K146 [".FindReplaceAll-Content-Muted"]
  DUPTABLE R18 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R19 K147 ["$SemanticColorContentMuted"]
  SETTABLEKS R19 R18 K78 ["ImageColor3"]
  LOADK R19 K147 ["$SemanticColorContentMuted"]
  SETTABLEKS R19 R18 K52 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K148 [".FindReplaceAll-Content-PrimaryBrandFill"]
  DUPTABLE R19 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R20 K83 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R20 R19 K78 ["ImageColor3"]
  LOADK R20 K83 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R20 R19 K52 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K149 [".FindReplaceAll-Content-Standard"]
  DUPTABLE R20 K150 [{"ImageColor3"}]
  LOADK R21 K151 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K78 ["ImageColor3"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K152 [".FindReplaceAll-Content-Surface-Outline"]
  DUPTABLE R21 K154 [{"ImageColor3", "ImageTransparency"}]
  LOADK R22 K155 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R22 R21 K78 ["ImageColor3"]
  LOADK R22 K55 ["$SemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R22 R21 K153 ["ImageTransparency"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K156 [".FindReplaceAll-Content-Surface-Outline-No-Transparency"]
  DUPTABLE R22 K150 [{"ImageColor3"}]
  LOADK R23 K155 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R23 R22 K78 ["ImageColor3"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K157 [".FindReplaceAll-Text-Size-12"]
  DUPTABLE R23 K159 [{"TextSize"}]
  LOADK R24 K160 [15.084]
  SETTABLEKS R24 R23 K158 ["TextSize"]
  CALL R21 2 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R3
  LOADK R7 K161 [".FindReplaceAll-Text-Size-14"]
  DUPTABLE R8 K159 [{"TextSize"}]
  LOADK R9 K162 [17.598]
  SETTABLEKS R9 R8 K158 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R3
  LOADK R8 K163 [".FindReplaceAll-Text-Size-20"]
  DUPTABLE R9 K159 [{"TextSize"}]
  LOADK R10 K164 [25.14]
  SETTABLEKS R10 R9 K158 ["TextSize"]
  CALL R7 2 1
  MOVE R8 R3
  LOADK R9 K165 [".FindReplaceAll-View"]
  DUPTABLE R10 K166 [{"BackgroundTransparency", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K45 ["BackgroundTransparency"]
  GETIMPORT R11 K102 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Size"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K167 [".FindReplaceAll-X-RowS"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K126 ["::UIListLayout"]
  DUPTABLE R15 K130 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K169 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K127 ["FillDirection"]
  GETIMPORT R16 K62 [UDim.new]
  LOADN R17 0
  LOADN R18 5
  CALL R16 2 1
  SETTABLEKS R16 R15 K128 ["Padding"]
  GETIMPORT R16 K134 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K129 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K170 [".FindReplaceAll-SessionView-ScrollingFrame"]
  DUPTABLE R12 K171 [{"ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  LOADK R13 K172 ["$SemanticColorActionSecondary"]
  SETTABLEKS R13 R12 K69 ["ScrollBarImageColor3"]
  LOADK R13 K173 ["$SemanticColorActionSecondaryTransparency"]
  SETTABLEKS R13 R12 K70 ["ScrollBarImageTransparency"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K174 [".FindReplaceAll-Square ::UIAspectRatioConstraint"]
  DUPTABLE R13 K176 [{"AspectRatio"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K175 ["AspectRatio"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K177 [".FindReplaceAll-Icon"]
  DUPTABLE R14 K166 [{"BackgroundTransparency", "Size"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K45 ["BackgroundTransparency"]
  GETIMPORT R15 K19 [UDim2.fromOffset]
  LOADN R16 16
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["Size"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K178 [".FindReplaceAll-ToggleButton"]
  DUPTABLE R15 K166 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K45 ["BackgroundTransparency"]
  GETIMPORT R16 K19 [UDim2.fromOffset]
  LOADN R17 24
  LOADN R18 24
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["Size"]
  NEWTABLE R16 0 1
  MOVE R17 R3
  LOADK R18 K179 [":: UICorner"]
  DUPTABLE R19 K59 [{"CornerRadius"}]
  GETIMPORT R20 K62 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K58 ["CornerRadius"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K180 [".FindReplaceAll-Rectangle ::UIAspectRatioConstraint"]
  DUPTABLE R16 K176 [{"AspectRatio"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K175 ["AspectRatio"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K181 [">> .FindReplaceAll-StandardText"]
  DUPTABLE R17 K183 [{"Font", "TextColor3", "TextSize"}]
  GETTABLEKS R18 R2 K184 ["defaultFont"]
  SETTABLEKS R18 R17 K182 ["Font"]
  LOADK R18 K151 ["$SemanticColorContentStandard"]
  SETTABLEKS R18 R17 K52 ["TextColor3"]
  LOADK R18 K162 [17.598]
  SETTABLEKS R18 R17 K158 ["TextSize"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K185 ["TextLabel"]
  DUPTABLE R18 K186 [{"Font"}]
  GETTABLEKS R19 R2 K184 ["defaultFont"]
  SETTABLEKS R19 R18 K182 ["Font"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K187 ["TextButton"]
  DUPTABLE R19 K186 [{"Font"}]
  GETTABLEKS R20 R2 K184 ["defaultFont"]
  SETTABLEKS R20 R19 K182 ["Font"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K188 ["#MainWidget"]
  DUPTABLE R20 K190 [{"BorderSizePixel", "BackgroundColor3"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K189 ["BorderSizePixel"]
  LOADK R21 K191 ["$BackgroundDefault"]
  SETTABLEKS R21 R20 K44 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K192 ["#ResultsContainer"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R3
  LOADK R24 K193 [":: UIFlexItem"]
  DUPTABLE R25 K105 [{"FlexMode"}]
  GETIMPORT R26 K119 [Enum.UIFlexMode.Fill]
  SETTABLEKS R26 R25 K104 ["FlexMode"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R5 R6 -1 [33]
  NEWTABLE R6 0 0
  MOVE R7 R4
  LOADK R8 K194 ["FindReplaceAllPlugin"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
