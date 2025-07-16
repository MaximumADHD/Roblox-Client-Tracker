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
  NEWTABLE R5 0 44
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
  LOADK R9 K43 [".FindReplaceAll-ResultRowNode-Pill"]
  DUPTABLE R10 K47 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R11 K48 ["$SemanticColorShift300"]
  SETTABLEKS R11 R10 K44 ["BackgroundColor3"]
  LOADK R11 K49 ["$SemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R11 R10 K45 ["BackgroundTransparency"]
  LOADK R11 K50 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R11 R10 K46 ["TextColor3"]
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K51 ["::UICorner"]
  DUPTABLE R14 K53 [{"CornerRadius"}]
  GETIMPORT R15 K56 [UDim.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["CornerRadius"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K57 [".FindReplaceAll-ResultRowNode"]
  DUPTABLE R11 K61 [{"BackgroundTransparency", "BorderSizePixel", "AutoButtonColor", "Text"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K45 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K58 ["BorderSizePixel"]
  LOADB R12 0
  SETTABLEKS R12 R11 K59 ["AutoButtonColor"]
  LOADK R12 K62 [""]
  SETTABLEKS R12 R11 K60 ["Text"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K63 [".FindReplaceAll-ScrollingFrame"]
  DUPTABLE R12 K69 [{"BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  LOADK R13 K70 ["$BottomImage"]
  SETTABLEKS R13 R12 K64 ["BottomImage"]
  LOADK R13 K71 ["$MidImage"]
  SETTABLEKS R13 R12 K65 ["MidImage"]
  LOADK R13 K72 ["$TopImage"]
  SETTABLEKS R13 R12 K66 ["TopImage"]
  LOADK R13 K73 ["$ColorActionStandardBackground"]
  SETTABLEKS R13 R12 K67 ["ScrollBarImageColor3"]
  LOADK R13 K74 ["$ColorActionStandardBackgroundTransparency"]
  SETTABLEKS R13 R12 K68 ["ScrollBarImageTransparency"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K75 [".FindReplaceAll-Content-Default"]
  DUPTABLE R13 K77 [{"ImageColor3", "TextColor3"}]
  LOADK R14 K78 ["$SemanticColorContentDefault"]
  SETTABLEKS R14 R13 K76 ["ImageColor3"]
  LOADK R14 K78 ["$SemanticColorContentDefault"]
  SETTABLEKS R14 R13 K46 ["TextColor3"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K79 [".FindReplaceAll-Content-Emphasis"]
  DUPTABLE R14 K77 [{"ImageColor3", "TextColor3"}]
  LOADK R15 K50 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R15 R14 K76 ["ImageColor3"]
  LOADK R15 K50 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R15 R14 K46 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K80 [".FindReplaceAll-Hovered"]
  DUPTABLE R15 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K82 ["$SemanticColorStatesHover"]
  SETTABLEKS R16 R15 K44 ["BackgroundColor3"]
  LOADK R16 K83 ["$SemanticColorStatesHoverTransparency"]
  SETTABLEKS R16 R15 K45 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K84 [".FindReplaceAll-Selected"]
  DUPTABLE R16 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K85 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R17 R16 K44 ["BackgroundColor3"]
  LOADK R17 K86 [0.76]
  SETTABLEKS R17 R16 K45 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K87 [".FindReplaceAll-NotSelected"]
  DUPTABLE R17 K88 [{"BackgroundTransparency"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K45 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K89 [".FindReplaceAll-BG-Surface0"]
  DUPTABLE R18 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K90 ["$SemanticColorSurface0"]
  SETTABLEKS R19 R18 K44 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K45 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K91 [".FindReplaceAll-BG-Surface100"]
  DUPTABLE R19 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K92 ["$SemanticColorSurface100"]
  SETTABLEKS R20 R19 K44 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K45 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K93 [".FindReplaceAll-BG-Shift300"]
  DUPTABLE R20 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K48 ["$SemanticColorShift300"]
  SETTABLEKS R21 R20 K44 ["BackgroundColor3"]
  LOADK R21 K94 ["$SemanticColorShift300Transparency"]
  SETTABLEKS R21 R20 K45 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K95 [".FindReplaceAll-BG-Input"]
  DUPTABLE R21 K81 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K96 ["$SemanticColorComponentInputFill"]
  SETTABLEKS R22 R21 K44 ["BackgroundColor3"]
  LOADK R22 K97 ["$SemanticColorComponentInputFillTransparency"]
  SETTABLEKS R22 R21 K45 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K98 [".FindReplaceAll-Button"]
  DUPTABLE R22 K99 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K59 ["AutoButtonColor"]
  LOADN R23 1
  SETTABLEKS R23 R22 K45 ["BackgroundTransparency"]
  LOADK R23 K62 [""]
  SETTABLEKS R23 R22 K60 ["Text"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K100 [".FindReplaceAll-GrowX"]
  DUPTABLE R23 K16 [{"Size"}]
  GETIMPORT R24 K102 [UDim2.fromScale]
  LOADN R25 0
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K15 ["Size"]
  NEWTABLE R24 0 1
  MOVE R25 R3
  LOADK R26 K103 ["::UIFlexItem"]
  DUPTABLE R27 K105 [{"FlexMode"}]
  GETIMPORT R28 K109 [Enum.UIFlexMode.Grow]
  SETTABLEKS R28 R27 K104 ["FlexMode"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETLIST R5 R6 16 [1]
  MOVE R6 R3
  LOADK R7 K110 [".FindReplaceAll-ShrinkX"]
  DUPTABLE R8 K112 [{"AutomaticSize"}]
  GETIMPORT R9 K114 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K111 ["AutomaticSize"]
  NEWTABLE R9 0 1
  MOVE R10 R3
  LOADK R11 K103 ["::UIFlexItem"]
  DUPTABLE R12 K105 [{"FlexMode"}]
  GETIMPORT R13 K116 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R13 R12 K104 ["FlexMode"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R3
  LOADK R8 K117 [".FindReplaceAll-FillX"]
  DUPTABLE R9 K16 [{"Size"}]
  GETIMPORT R10 K102 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Size"]
  NEWTABLE R10 0 1
  MOVE R11 R3
  LOADK R12 K103 ["::UIFlexItem"]
  DUPTABLE R13 K105 [{"FlexMode"}]
  GETIMPORT R14 K119 [Enum.UIFlexMode.Fill]
  SETTABLEKS R14 R13 K104 ["FlexMode"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R3
  LOADK R9 K120 [".FindReplaceAll-SidePadS ::UIPadding"]
  DUPTABLE R10 K123 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K56 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K121 ["PaddingLeft"]
  GETIMPORT R11 K56 [UDim.new]
  LOADN R12 0
  LOADN R13 4
  CALL R11 2 1
  SETTABLEKS R11 R10 K122 ["PaddingRight"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K124 [".FindReplaceAll-SidePadM ::UIPadding"]
  DUPTABLE R11 K123 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K56 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K121 ["PaddingLeft"]
  GETIMPORT R12 K56 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K122 ["PaddingRight"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K125 [".FindReplaceAll-XColumnS"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K126 ["::UIListLayout"]
  DUPTABLE R16 K130 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K132 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K127 ["FillDirection"]
  GETIMPORT R17 K56 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K128 ["Padding"]
  GETIMPORT R17 K134 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K129 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K135 [".FindReplaceAll-TopPadM ::UIPadding"]
  DUPTABLE R13 K137 [{"PaddingTop"}]
  GETIMPORT R14 K56 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K136 ["PaddingTop"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K138 [".FindReplaceAll-XPad ::UIPadding"]
  DUPTABLE R14 K140 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K56 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K121 ["PaddingLeft"]
  GETIMPORT R15 K56 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K122 ["PaddingRight"]
  GETIMPORT R15 K56 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K136 ["PaddingTop"]
  GETIMPORT R15 K56 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K139 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K141 [".FindReplaceAll-PadRight ::UIPadding"]
  DUPTABLE R15 K142 [{"PaddingRight"}]
  GETIMPORT R16 K56 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K122 ["PaddingRight"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K143 [".FindReplaceAll-PadLeftS ::UIPadding"]
  DUPTABLE R16 K144 [{"PaddingLeft"}]
  GETIMPORT R17 K56 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K121 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K145 [".FindReplaceAll-Content-Disabled"]
  DUPTABLE R17 K146 [{"TextColor3"}]
  LOADK R18 K147 ["$SemanticColorContentDisabled"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K148 [".FindReplaceAll-Content-Muted"]
  DUPTABLE R18 K77 [{"ImageColor3", "TextColor3"}]
  LOADK R19 K149 ["$SemanticColorContentMuted"]
  SETTABLEKS R19 R18 K76 ["ImageColor3"]
  LOADK R19 K149 ["$SemanticColorContentMuted"]
  SETTABLEKS R19 R18 K46 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K150 [".FindReplaceAll-Content-PrimaryBrandFill"]
  DUPTABLE R19 K77 [{"ImageColor3", "TextColor3"}]
  LOADK R20 K85 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R20 R19 K76 ["ImageColor3"]
  LOADK R20 K85 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R20 R19 K46 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K151 [".FindReplaceAll-Content-Standard"]
  DUPTABLE R20 K152 [{"ImageColor3"}]
  LOADK R21 K153 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K76 ["ImageColor3"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K154 [".FindReplaceAll-Content-Surface-Outline"]
  DUPTABLE R21 K156 [{"ImageColor3", "ImageTransparency"}]
  LOADK R22 K157 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R22 R21 K76 ["ImageColor3"]
  LOADK R22 K49 ["$SemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R22 R21 K155 ["ImageTransparency"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K158 [".FindReplaceAll-Content-Surface-Outline-No-Transparency"]
  DUPTABLE R22 K152 [{"ImageColor3"}]
  LOADK R23 K157 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R23 R22 K76 ["ImageColor3"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K159 [".FindReplaceAll-Text-Size-12"]
  DUPTABLE R23 K161 [{"TextSize"}]
  LOADK R24 K162 [15.084]
  SETTABLEKS R24 R23 K160 ["TextSize"]
  CALL R21 2 1
  SETLIST R5 R6 16 [17]
  MOVE R6 R3
  LOADK R7 K163 [".FindReplaceAll-Text-Size-14"]
  DUPTABLE R8 K161 [{"TextSize"}]
  LOADK R9 K164 [17.598]
  SETTABLEKS R9 R8 K160 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R3
  LOADK R8 K165 [".FindReplaceAll-Text-Size-20"]
  DUPTABLE R9 K161 [{"TextSize"}]
  LOADK R10 K166 [25.14]
  SETTABLEKS R10 R9 K160 ["TextSize"]
  CALL R7 2 1
  MOVE R8 R3
  LOADK R9 K167 [".FindReplaceAll-View"]
  DUPTABLE R10 K168 [{"BackgroundTransparency", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K45 ["BackgroundTransparency"]
  GETIMPORT R11 K102 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Size"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K169 [".FindReplaceAll-X-RowS"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K126 ["::UIListLayout"]
  DUPTABLE R15 K130 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K171 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K127 ["FillDirection"]
  GETIMPORT R16 K56 [UDim.new]
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
  LOADK R11 K172 [".FindReplaceAll-SessionView-ScrollingFrame"]
  DUPTABLE R12 K173 [{"ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  LOADK R13 K174 ["$SemanticColorActionSecondary"]
  SETTABLEKS R13 R12 K67 ["ScrollBarImageColor3"]
  LOADK R13 K175 ["$SemanticColorActionSecondaryTransparency"]
  SETTABLEKS R13 R12 K68 ["ScrollBarImageTransparency"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K176 [".FindReplaceAll-Square ::UIAspectRatioConstraint"]
  DUPTABLE R13 K178 [{"AspectRatio"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K177 ["AspectRatio"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K179 [".FindReplaceAll-Icon"]
  DUPTABLE R14 K168 [{"BackgroundTransparency", "Size"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K45 ["BackgroundTransparency"]
  GETIMPORT R15 K19 [UDim2.fromOffset]
  LOADN R16 16
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["Size"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K180 [".FindReplaceAll-ToggleButton"]
  DUPTABLE R15 K168 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K45 ["BackgroundTransparency"]
  GETIMPORT R16 K19 [UDim2.fromOffset]
  LOADN R17 24
  LOADN R18 24
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["Size"]
  NEWTABLE R16 0 1
  MOVE R17 R3
  LOADK R18 K181 [":: UICorner"]
  DUPTABLE R19 K53 [{"CornerRadius"}]
  GETIMPORT R20 K56 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K52 ["CornerRadius"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K182 [".FindReplaceAll-Rectangle ::UIAspectRatioConstraint"]
  DUPTABLE R16 K178 [{"AspectRatio"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K177 ["AspectRatio"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K183 [">> .FindReplaceAll-StandardText"]
  DUPTABLE R17 K185 [{"Font", "TextColor3", "TextSize"}]
  GETTABLEKS R18 R2 K186 ["defaultFont"]
  SETTABLEKS R18 R17 K184 ["Font"]
  LOADK R18 K153 ["$SemanticColorContentStandard"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  LOADK R18 K164 [17.598]
  SETTABLEKS R18 R17 K160 ["TextSize"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K187 ["TextLabel"]
  DUPTABLE R18 K188 [{"Font"}]
  GETTABLEKS R19 R2 K186 ["defaultFont"]
  SETTABLEKS R19 R18 K184 ["Font"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K189 ["TextButton"]
  DUPTABLE R19 K188 [{"Font"}]
  GETTABLEKS R20 R2 K186 ["defaultFont"]
  SETTABLEKS R20 R19 K184 ["Font"]
  CALL R17 2 -1
  SETLIST R5 R6 -1 [33]
  NEWTABLE R6 0 0
  MOVE R7 R4
  LOADK R8 K190 ["FindReplaceAllPlugin"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
