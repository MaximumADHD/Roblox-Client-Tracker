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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["defineFlags"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K13 ["Styling"]
  GETTABLEKS R4 R5 K14 ["createStyleRule"]
  GETTABLEKS R6 R1 K13 ["Styling"]
  GETTABLEKS R5 R6 K15 ["createStyleSheet"]
  NEWTABLE R6 0 45
  MOVE R7 R4
  LOADK R8 K16 ["ImageButton"]
  DUPTABLE R9 K18 [{"Size"}]
  GETIMPORT R10 K21 [UDim2.fromOffset]
  LOADN R11 28
  LOADN R12 28
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["Size"]
  NEWTABLE R10 0 7
  MOVE R11 R4
  LOADK R12 K22 [".ClearTextIcon"]
  DUPTABLE R13 K24 [{"Image"}]
  LOADK R14 K25 ["$ClearText"]
  SETTABLEKS R14 R13 K23 ["Image"]
  CALL R11 2 1
  MOVE R12 R4
  LOADK R13 K26 [">ImageLabel .MatchCaseIcon"]
  DUPTABLE R14 K24 [{"Image"}]
  LOADK R15 K27 ["$MatchCase"]
  SETTABLEKS R15 R14 K23 ["Image"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K28 [">ImageLabel .MatchWholeWordIcon"]
  DUPTABLE R15 K24 [{"Image"}]
  LOADK R16 K29 ["$MatchWholeWord"]
  SETTABLEKS R16 R15 K23 ["Image"]
  CALL R13 2 1
  MOVE R14 R4
  LOADK R15 K30 [">ImageLabel .RegularExpressionIcon"]
  DUPTABLE R16 K24 [{"Image"}]
  LOADK R17 K31 ["$RegularExpression"]
  SETTABLEKS R17 R16 K23 ["Image"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K32 [">ImageLabel .FindPreviousIcon"]
  DUPTABLE R17 K24 [{"Image"}]
  LOADK R18 K33 ["$ArrowUp"]
  SETTABLEKS R18 R17 K23 ["Image"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K34 [">ImageLabel .FindNextIcon"]
  DUPTABLE R18 K24 [{"Image"}]
  LOADK R19 K35 ["$ArrowDown"]
  SETTABLEKS R19 R18 K23 ["Image"]
  CALL R16 2 1
  MOVE R17 R4
  LOADK R18 K36 [">ImageLabel .ThreeDotsIcon"]
  DUPTABLE R19 K24 [{"Image"}]
  LOADK R20 K37 ["$ThreeDots"]
  SETTABLEKS R20 R19 K23 ["Image"]
  CALL R17 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R4
  LOADK R9 K38 ["ImageLabel"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 3
  MOVE R12 R4
  LOADK R13 K39 [".CheckboxOffIcon"]
  DUPTABLE R14 K24 [{"Image"}]
  LOADK R15 K40 ["$CheckboxOff"]
  SETTABLEKS R15 R14 K23 ["Image"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K41 [".CheckboxOnIcon"]
  DUPTABLE R15 K24 [{"Image"}]
  LOADK R16 K42 ["$CheckboxOn"]
  SETTABLEKS R16 R15 K23 ["Image"]
  CALL R13 2 1
  MOVE R14 R4
  LOADK R15 K43 [".FindBarSearchIcon"]
  DUPTABLE R16 K24 [{"Image"}]
  LOADK R17 K44 ["$FindBarSearchIcon"]
  SETTABLEKS R17 R16 K23 ["Image"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R4
  LOADK R10 K45 [".FindReplaceAll-ResultRowNode-Pill"]
  DUPTABLE R11 K49 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R12 K50 ["$SemanticColorShift300"]
  SETTABLEKS R12 R11 K46 ["BackgroundColor3"]
  LOADK R12 K51 ["$SemanticColorShift300Transparency"]
  SETTABLEKS R12 R11 K47 ["BackgroundTransparency"]
  LOADK R12 K52 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R12 R11 K48 ["TextColor3"]
  NEWTABLE R12 0 1
  MOVE R13 R4
  LOADK R14 K53 ["::UICorner"]
  DUPTABLE R15 K55 [{"CornerRadius"}]
  GETIMPORT R16 K58 [UDim.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K54 ["CornerRadius"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R4
  LOADK R11 K59 [".FindReplaceAll-ResultRowNode"]
  DUPTABLE R12 K63 [{"BackgroundTransparency", "BorderSizePixel", "AutoButtonColor", "Text"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K47 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K60 ["BorderSizePixel"]
  LOADB R13 0
  SETTABLEKS R13 R12 K61 ["AutoButtonColor"]
  LOADK R13 K64 [""]
  SETTABLEKS R13 R12 K62 ["Text"]
  CALL R10 2 1
  MOVE R11 R4
  LOADK R12 K65 [".FindReplaceAll-ScrollingFrame"]
  DUPTABLE R13 K71 [{"BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  LOADK R14 K72 ["$BottomImage"]
  SETTABLEKS R14 R13 K66 ["BottomImage"]
  LOADK R14 K73 ["$MidImage"]
  SETTABLEKS R14 R13 K67 ["MidImage"]
  LOADK R14 K74 ["$TopImage"]
  SETTABLEKS R14 R13 K68 ["TopImage"]
  LOADK R14 K75 ["$ColorActionStandardBackground"]
  SETTABLEKS R14 R13 K69 ["ScrollBarImageColor3"]
  LOADK R14 K76 ["$ColorActionStandardBackgroundTransparency"]
  SETTABLEKS R14 R13 K70 ["ScrollBarImageTransparency"]
  CALL R11 2 1
  MOVE R12 R4
  LOADK R13 K77 [".FindReplaceAll-Content-Default"]
  DUPTABLE R14 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R15 K80 ["$SemanticColorContentDefault"]
  SETTABLEKS R15 R14 K78 ["ImageColor3"]
  LOADK R15 K80 ["$SemanticColorContentDefault"]
  SETTABLEKS R15 R14 K48 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K81 [".FindReplaceAll-Content-Emphasis"]
  DUPTABLE R15 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R16 K52 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R16 R15 K78 ["ImageColor3"]
  LOADK R16 K52 ["$SemanticColorContentEmphasis"]
  SETTABLEKS R16 R15 K48 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R4
  LOADK R15 K82 [".FindReplaceAll-Hovered"]
  DUPTABLE R16 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K84 ["$SemanticColorStatesHover"]
  SETTABLEKS R17 R16 K46 ["BackgroundColor3"]
  LOADK R17 K85 ["$SemanticColorStatesHoverTransparency"]
  SETTABLEKS R17 R16 K47 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K86 [".FindReplaceAll-Selected"]
  DUPTABLE R17 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K87 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R18 R17 K46 ["BackgroundColor3"]
  LOADK R18 K88 [0.76]
  SETTABLEKS R18 R17 K47 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K89 [".FindReplaceAll-NotSelected"]
  DUPTABLE R18 K90 [{"BackgroundTransparency"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K47 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R4
  LOADK R18 K91 [".FindReplaceAll-BG-Surface0"]
  DUPTABLE R19 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K92 ["$SemanticColorSurface0"]
  SETTABLEKS R20 R19 K46 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K47 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R4
  LOADK R19 K93 [".FindReplaceAll-BG-Surface100"]
  DUPTABLE R20 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K94 ["$SemanticColorSurface100"]
  SETTABLEKS R21 R20 K46 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K47 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R4
  LOADK R20 K95 [".FindReplaceAll-BG-Shift300"]
  DUPTABLE R21 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K50 ["$SemanticColorShift300"]
  SETTABLEKS R22 R21 K46 ["BackgroundColor3"]
  LOADK R22 K51 ["$SemanticColorShift300Transparency"]
  SETTABLEKS R22 R21 K47 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R4
  LOADK R21 K96 [".FindReplaceAll-BG-Input"]
  DUPTABLE R22 K83 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K97 ["$SemanticColorComponentInputFill"]
  SETTABLEKS R23 R22 K46 ["BackgroundColor3"]
  LOADK R23 K98 ["$SemanticColorComponentInputFillTransparency"]
  SETTABLEKS R23 R22 K47 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R4
  LOADK R22 K99 [".FindReplaceAll-Button"]
  DUPTABLE R23 K100 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K61 ["AutoButtonColor"]
  LOADN R24 1
  SETTABLEKS R24 R23 K47 ["BackgroundTransparency"]
  LOADK R24 K64 [""]
  SETTABLEKS R24 R23 K62 ["Text"]
  CALL R21 2 1
  MOVE R22 R4
  LOADK R23 K101 [".FindReplaceAll-GrowX"]
  DUPTABLE R24 K18 [{"Size"}]
  GETIMPORT R25 K103 [UDim2.fromScale]
  LOADN R26 0
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K17 ["Size"]
  NEWTABLE R25 0 1
  MOVE R26 R4
  LOADK R27 K104 ["::UIFlexItem"]
  DUPTABLE R28 K106 [{"FlexMode"}]
  GETIMPORT R29 K110 [Enum.UIFlexMode.Grow]
  SETTABLEKS R29 R28 K105 ["FlexMode"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  SETLIST R6 R7 16 [1]
  MOVE R7 R4
  LOADK R8 K111 [".FindReplaceAll-ShrinkX"]
  DUPTABLE R9 K113 [{"AutomaticSize"}]
  GETIMPORT R10 K115 [Enum.AutomaticSize.X]
  SETTABLEKS R10 R9 K112 ["AutomaticSize"]
  NEWTABLE R10 0 1
  MOVE R11 R4
  LOADK R12 K104 ["::UIFlexItem"]
  DUPTABLE R13 K106 [{"FlexMode"}]
  GETIMPORT R14 K117 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R14 R13 K105 ["FlexMode"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R4
  LOADK R9 K118 [".FindReplaceAll-FillX"]
  DUPTABLE R10 K18 [{"Size"}]
  GETIMPORT R11 K103 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Size"]
  NEWTABLE R11 0 1
  MOVE R12 R4
  LOADK R13 K104 ["::UIFlexItem"]
  DUPTABLE R14 K106 [{"FlexMode"}]
  GETIMPORT R15 K120 [Enum.UIFlexMode.Fill]
  SETTABLEKS R15 R14 K105 ["FlexMode"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R4
  LOADK R10 K121 [".FindReplaceAll-SidePadS ::UIPadding"]
  DUPTABLE R11 K124 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K58 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K122 ["PaddingLeft"]
  GETIMPORT R12 K58 [UDim.new]
  LOADN R13 0
  LOADN R14 4
  CALL R12 2 1
  SETTABLEKS R12 R11 K123 ["PaddingRight"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K125 [".FindReplaceAll-SidePadM ::UIPadding"]
  DUPTABLE R12 K124 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R13 K58 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K122 ["PaddingLeft"]
  GETIMPORT R13 K58 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K123 ["PaddingRight"]
  CALL R10 2 1
  MOVE R11 R4
  LOADK R12 K126 [".FindReplaceAll-XColumnS"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R4
  LOADK R16 K127 ["::UIListLayout"]
  DUPTABLE R17 K131 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K133 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K128 ["FillDirection"]
  GETIMPORT R18 K58 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K129 ["Padding"]
  GETIMPORT R18 K135 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K130 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R4
  LOADK R13 K136 [".FindReplaceAll-TopPadM ::UIPadding"]
  DUPTABLE R14 K138 [{"PaddingTop"}]
  GETIMPORT R15 K58 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K137 ["PaddingTop"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K139 [".FindReplaceAll-XPad ::UIPadding"]
  DUPTABLE R15 K141 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K58 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K122 ["PaddingLeft"]
  GETIMPORT R16 K58 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K123 ["PaddingRight"]
  GETIMPORT R16 K58 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K137 ["PaddingTop"]
  GETIMPORT R16 K58 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K140 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R4
  LOADK R15 K142 [".FindReplaceAll-PadRight ::UIPadding"]
  DUPTABLE R16 K143 [{"PaddingRight"}]
  GETIMPORT R17 K58 [UDim.new]
  LOADN R18 0
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K123 ["PaddingRight"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K144 [".FindReplaceAll-PadLeftS ::UIPadding"]
  DUPTABLE R17 K145 [{"PaddingLeft"}]
  GETIMPORT R18 K58 [UDim.new]
  LOADN R19 0
  LOADN R20 6
  CALL R18 2 1
  SETTABLEKS R18 R17 K122 ["PaddingLeft"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K146 [".FindReplaceAll-Content-Disabled"]
  DUPTABLE R18 K147 [{"TextColor3"}]
  LOADK R19 K148 ["$SemanticColorContentDisabled"]
  SETTABLEKS R19 R18 K48 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R4
  LOADK R18 K149 [".FindReplaceAll-Content-Muted"]
  DUPTABLE R19 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R20 K150 ["$SemanticColorContentMuted"]
  SETTABLEKS R20 R19 K78 ["ImageColor3"]
  LOADK R20 K150 ["$SemanticColorContentMuted"]
  SETTABLEKS R20 R19 K48 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R4
  LOADK R19 K151 [".FindReplaceAll-Content-PrimaryBrandFill"]
  DUPTABLE R20 K79 [{"ImageColor3", "TextColor3"}]
  LOADK R21 K87 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R21 R20 K78 ["ImageColor3"]
  LOADK R21 K87 ["$SemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R21 R20 K48 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R4
  LOADK R20 K152 [".FindReplaceAll-Content-Standard"]
  DUPTABLE R21 K153 [{"ImageColor3"}]
  LOADK R22 K154 ["$SemanticColorContentStandard"]
  SETTABLEKS R22 R21 K78 ["ImageColor3"]
  CALL R19 2 1
  MOVE R20 R4
  LOADK R21 K155 [".FindReplaceAll-Content-Surface-Outline"]
  DUPTABLE R22 K157 [{"ImageColor3", "ImageTransparency"}]
  LOADK R23 K158 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R23 R22 K78 ["ImageColor3"]
  LOADK R23 K159 ["$SemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R23 R22 K156 ["ImageTransparency"]
  CALL R20 2 1
  MOVE R21 R4
  LOADK R22 K160 [".FindReplaceAll-Content-Surface-Outline-No-Transparency"]
  DUPTABLE R23 K153 [{"ImageColor3"}]
  LOADK R24 K158 ["$SemanticColorSurfaceOutline"]
  SETTABLEKS R24 R23 K78 ["ImageColor3"]
  CALL R21 2 1
  MOVE R22 R4
  LOADK R23 K161 [".FindReplaceAll-Text-Size-12"]
  DUPTABLE R24 K163 [{"TextSize"}]
  LOADN R26 12
  GETTABLEKS R28 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R28 0 1
  JUMPIFNOT R28 [+3]
  GETTABLEKS R27 R2 K165 ["defaultFontScale"]
  JUMP [+1]
  LOADK R27 K166 [1.257]
  MUL R25 R26 R27
  SETTABLEKS R25 R24 K162 ["TextSize"]
  CALL R22 2 1
  SETLIST R6 R7 16 [17]
  MOVE R7 R4
  LOADK R8 K167 [".FindReplaceAll-Text-Size-14"]
  DUPTABLE R9 K163 [{"TextSize"}]
  LOADN R11 14
  GETTABLEKS R13 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R13 0 1
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R2 K165 ["defaultFontScale"]
  JUMP [+1]
  LOADK R12 K166 [1.257]
  MUL R10 R11 R12
  SETTABLEKS R10 R9 K162 ["TextSize"]
  CALL R7 2 1
  MOVE R8 R4
  LOADK R9 K168 [".FindReplaceAll-Text-Size-20"]
  DUPTABLE R10 K163 [{"TextSize"}]
  LOADN R12 20
  GETTABLEKS R14 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETTABLEKS R13 R2 K165 ["defaultFontScale"]
  JUMP [+1]
  LOADK R13 K166 [1.257]
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K162 ["TextSize"]
  CALL R8 2 1
  MOVE R9 R4
  LOADK R10 K169 [".FindReplaceAll-View"]
  DUPTABLE R11 K170 [{"BackgroundTransparency", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K47 ["BackgroundTransparency"]
  GETIMPORT R12 K103 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["Size"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K171 [".FindReplaceAll-X-RowS"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R4
  LOADK R15 K127 ["::UIListLayout"]
  DUPTABLE R16 K131 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R17 K173 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K128 ["FillDirection"]
  GETIMPORT R17 K58 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K129 ["Padding"]
  GETIMPORT R17 K135 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K130 ["SortOrder"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R4
  LOADK R12 K174 [".FindReplaceAll-SessionView-ScrollingFrame"]
  DUPTABLE R13 K175 [{"ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  LOADK R14 K176 ["$SemanticColorActionSecondary"]
  SETTABLEKS R14 R13 K69 ["ScrollBarImageColor3"]
  LOADK R14 K177 ["$SemanticColorActionSecondaryTransparency"]
  SETTABLEKS R14 R13 K70 ["ScrollBarImageTransparency"]
  CALL R11 2 1
  MOVE R12 R4
  LOADK R13 K178 [".FindReplaceAll-Square ::UIAspectRatioConstraint"]
  DUPTABLE R14 K180 [{"AspectRatio"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K179 ["AspectRatio"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K181 [".FindReplaceAll-Icon"]
  DUPTABLE R15 K170 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K47 ["BackgroundTransparency"]
  GETIMPORT R16 K21 [UDim2.fromOffset]
  LOADN R17 16
  LOADN R18 16
  CALL R16 2 1
  SETTABLEKS R16 R15 K17 ["Size"]
  CALL R13 2 1
  MOVE R14 R4
  LOADK R15 K182 [".FindReplaceAll-ToggleButton"]
  DUPTABLE R16 K170 [{"BackgroundTransparency", "Size"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K47 ["BackgroundTransparency"]
  GETIMPORT R17 K21 [UDim2.fromOffset]
  LOADN R18 24
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K17 ["Size"]
  NEWTABLE R17 0 1
  MOVE R18 R4
  LOADK R19 K183 [":: UICorner"]
  DUPTABLE R20 K55 [{"CornerRadius"}]
  GETIMPORT R21 K58 [UDim.new]
  LOADN R22 0
  LOADN R23 5
  CALL R21 2 1
  SETTABLEKS R21 R20 K54 ["CornerRadius"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R4
  LOADK R16 K184 [".FindReplaceAll-Rectangle ::UIAspectRatioConstraint"]
  DUPTABLE R17 K180 [{"AspectRatio"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K179 ["AspectRatio"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K185 [">> .FindReplaceAll-StandardText"]
  DUPTABLE R18 K187 [{"Font", "TextColor3", "TextSize"}]
  GETTABLEKS R19 R2 K188 ["defaultFont"]
  SETTABLEKS R19 R18 K186 ["Font"]
  LOADK R19 K154 ["$SemanticColorContentStandard"]
  SETTABLEKS R19 R18 K48 ["TextColor3"]
  GETTABLEKS R20 R3 K164 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R20 0 1
  JUMPIFNOT R20 [+5]
  LOADN R20 12
  GETTABLEKS R21 R2 K165 ["defaultFontScale"]
  MUL R19 R20 R21
  JUMP [+1]
  LOADK R19 K189 [17.598]
  SETTABLEKS R19 R18 K162 ["TextSize"]
  CALL R16 2 1
  MOVE R17 R4
  LOADK R18 K190 ["TextLabel"]
  DUPTABLE R19 K191 [{"Font"}]
  GETTABLEKS R20 R2 K188 ["defaultFont"]
  SETTABLEKS R20 R19 K186 ["Font"]
  CALL R17 2 1
  MOVE R18 R4
  LOADK R19 K192 ["TextButton"]
  DUPTABLE R20 K191 [{"Font"}]
  GETTABLEKS R21 R2 K188 ["defaultFont"]
  SETTABLEKS R21 R20 K186 ["Font"]
  CALL R18 2 1
  MOVE R19 R4
  LOADK R20 K193 [".FindReplaceAll-UIStroke"]
  DUPTABLE R21 K197 [{"Color", "Transparency", "Thickness", "BorderSizePixel"}]
  LOADK R22 K50 ["$SemanticColorShift300"]
  SETTABLEKS R22 R21 K194 ["Color"]
  LOADK R22 K51 ["$SemanticColorShift300Transparency"]
  SETTABLEKS R22 R21 K195 ["Transparency"]
  LOADN R22 1
  SETTABLEKS R22 R21 K196 ["Thickness"]
  LOADN R22 0
  SETTABLEKS R22 R21 K60 ["BorderSizePixel"]
  CALL R19 2 -1
  SETLIST R6 R7 -1 [33]
  NEWTABLE R7 0 0
  MOVE R8 R5
  LOADK R9 K198 ["FindReplaceAllPlugin"]
  MOVE R10 R6
  MOVE R11 R7
  CALL R8 3 -1
  RETURN R8 -1
