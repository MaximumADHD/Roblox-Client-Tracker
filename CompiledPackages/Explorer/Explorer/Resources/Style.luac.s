MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Util"]
  GETTABLEKS R4 R5 K10 ["ImageUrl"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagExplorerStreaming"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Flags"]
  GETTABLEKS R6 R7 K13 ["getFFlagLuaExplorerUseRDLColors"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K14 ["Styling"]
  GETTABLEKS R6 R7 K15 ["createStyleRule"]
  DUPTABLE R7 K19 [{"Base", "Dark", "Light"}]
  GETTABLEKS R9 R2 K14 ["Styling"]
  GETTABLEKS R8 R9 K20 ["createStyleSheet"]
  LOADK R9 K2 ["Explorer"]
  NEWTABLE R10 0 34
  MOVE R11 R6
  LOADK R12 K21 [".Explorer-BG-Surface0"]
  DUPTABLE R13 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K25 ["$RDLSemanticColorSurface0"]
  SETTABLEKS R14 R13 K22 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K23 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R6
  LOADK R13 K26 [".Explorer-BG-Surface100"]
  DUPTABLE R14 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  MOVE R16 R5
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADK R15 K27 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R15 K28 ["$LegacyMainBackground"]
  SETTABLEKS R15 R14 K22 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K23 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R6
  LOADK R14 K29 [".Explorer-BG-Shift300"]
  DUPTABLE R15 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K30 ["$RDLSemanticColorShift300"]
  SETTABLEKS R16 R15 K22 ["BackgroundColor3"]
  LOADK R16 K31 ["$RDLSemanticColorShift300Transparency"]
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R6
  LOADK R15 K32 [".Explorer-BG-Action-Soft-Emphasis"]
  DUPTABLE R16 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K33 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R17 R16 K22 ["BackgroundColor3"]
  LOADK R17 K34 [0.6]
  SETTABLEKS R17 R16 K23 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R6
  LOADK R16 K35 [".Explorer-BG-SystemEmphasis"]
  DUPTABLE R17 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K33 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R18 R17 K22 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K23 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R6
  LOADK R17 K36 [".Explorer-BG-Input"]
  DUPTABLE R18 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K37 ["$RDLSemanticColorComponentInputFill"]
  SETTABLEKS R19 R18 K22 ["BackgroundColor3"]
  LOADK R19 K38 ["$RDLSemanticColorComponentInputFillTransparency"]
  SETTABLEKS R19 R18 K23 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R6
  LOADK R18 K39 [".Explorer-BG-Hover"]
  DUPTABLE R19 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K40 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R20 R19 K22 ["BackgroundColor3"]
  LOADK R20 K41 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R20 R19 K23 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R6
  LOADK R19 K42 [".Explorer-Border-SystemEmphasis"]
  DUPTABLE R20 K44 [{"BorderColor3"}]
  LOADK R21 K33 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R21 R20 K43 ["BorderColor3"]
  CALL R18 2 1
  MOVE R19 R6
  LOADK R20 K45 [".Explorer-Button"]
  DUPTABLE R21 K48 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K46 ["AutoButtonColor"]
  LOADN R22 1
  SETTABLEKS R22 R21 K23 ["BackgroundTransparency"]
  LOADK R22 K49 [""]
  SETTABLEKS R22 R21 K47 ["Text"]
  CALL R19 2 1
  MOVE R20 R6
  LOADK R21 K50 [".Explorer-GrowX"]
  DUPTABLE R22 K52 [{"Size"}]
  GETIMPORT R23 K55 [UDim2.fromScale]
  LOADN R24 0
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K51 ["Size"]
  NEWTABLE R23 0 1
  MOVE R24 R6
  LOADK R25 K56 ["::UIFlexItem"]
  DUPTABLE R26 K58 [{"FlexMode"}]
  GETIMPORT R27 K62 [Enum.UIFlexMode.Grow]
  SETTABLEKS R27 R26 K57 ["FlexMode"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R6
  LOADK R22 K63 [".Explorer-ShrinkX"]
  DUPTABLE R23 K65 [{"AutomaticSize"}]
  GETIMPORT R24 K67 [Enum.AutomaticSize.X]
  SETTABLEKS R24 R23 K64 ["AutomaticSize"]
  NEWTABLE R24 0 1
  MOVE R25 R6
  LOADK R26 K56 ["::UIFlexItem"]
  DUPTABLE R27 K58 [{"FlexMode"}]
  GETIMPORT R28 K69 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R28 R27 K57 ["FlexMode"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R6
  LOADK R23 K70 [".Explorer-FillX"]
  DUPTABLE R24 K52 [{"Size"}]
  GETIMPORT R25 K55 [UDim2.fromScale]
  LOADN R26 0
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K51 ["Size"]
  NEWTABLE R25 0 1
  MOVE R26 R6
  LOADK R27 K56 ["::UIFlexItem"]
  DUPTABLE R28 K58 [{"FlexMode"}]
  GETIMPORT R29 K72 [Enum.UIFlexMode.Fill]
  SETTABLEKS R29 R28 K57 ["FlexMode"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R6
  LOADK R24 K73 [".Explorer-SidePadS ::UIPadding"]
  DUPTABLE R25 K76 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R26 K79 [UDim.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K74 ["PaddingLeft"]
  GETIMPORT R26 K79 [UDim.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K75 ["PaddingRight"]
  CALL R23 2 1
  MOVE R24 R6
  LOADK R25 K80 [".Explorer-Content-Default"]
  DUPTABLE R26 K83 [{"ImageColor3", "TextColor3"}]
  LOADK R27 K84 ["$ExplorerContentDefault"]
  SETTABLEKS R27 R26 K81 ["ImageColor3"]
  LOADK R27 K84 ["$ExplorerContentDefault"]
  SETTABLEKS R27 R26 K82 ["TextColor3"]
  CALL R24 2 1
  MOVE R25 R6
  LOADK R26 K85 [".Explorer-Content-Disabled"]
  DUPTABLE R27 K87 [{"ImageTransparency", "TextColor3"}]
  LOADK R28 K88 [0.62]
  SETTABLEKS R28 R27 K86 ["ImageTransparency"]
  LOADK R28 K89 ["$RDLSemanticColorContentDisabled"]
  SETTABLEKS R28 R27 K82 ["TextColor3"]
  CALL R25 2 1
  MOVE R26 R6
  LOADK R27 K90 [".Explorer-Content-Emphasis"]
  DUPTABLE R28 K83 [{"ImageColor3", "TextColor3"}]
  LOADK R29 K91 ["$ExplorerContentEmphasis"]
  SETTABLEKS R29 R28 K81 ["ImageColor3"]
  LOADK R29 K91 ["$ExplorerContentEmphasis"]
  SETTABLEKS R29 R28 K82 ["TextColor3"]
  CALL R26 2 1
  SETLIST R10 R11 16 [1]
  MOVE R11 R6
  LOADK R12 K92 [".Explorer-Content-Muted"]
  DUPTABLE R13 K83 [{"ImageColor3", "TextColor3"}]
  LOADK R14 K93 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R14 R13 K81 ["ImageColor3"]
  LOADK R14 K93 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R14 R13 K82 ["TextColor3"]
  CALL R11 2 1
  MOVE R12 R6
  LOADK R13 K94 [".Explorer-BG-PrimaryBrandFill"]
  DUPTABLE R14 K95 [{"BackgroundColor3"}]
  LOADK R15 K96 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R15 R14 K22 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R6
  LOADK R14 K97 [".Explorer-Content-PrimaryBrandFill"]
  DUPTABLE R15 K83 [{"ImageColor3", "TextColor3"}]
  LOADK R16 K96 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R16 R15 K81 ["ImageColor3"]
  LOADK R16 K96 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R16 R15 K82 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R6
  LOADK R15 K98 [".Explorer-Content-Standard"]
  DUPTABLE R16 K83 [{"ImageColor3", "TextColor3"}]
  LOADK R17 K99 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R17 R16 K81 ["ImageColor3"]
  LOADK R17 K99 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R17 R16 K82 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R6
  LOADK R16 K100 [".Explorer-Content-Surface-Outline"]
  DUPTABLE R17 K101 [{"ImageColor3", "ImageTransparency"}]
  LOADK R18 K102 ["$RDLSemanticColorSurfaceOutline"]
  SETTABLEKS R18 R17 K81 ["ImageColor3"]
  LOADK R18 K103 ["$RDLSemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R18 R17 K86 ["ImageTransparency"]
  CALL R15 2 1
  MOVE R16 R6
  LOADK R17 K104 [".Explorer-Text-Size-14"]
  DUPTABLE R18 K106 [{"TextSize"}]
  LOADK R19 K107 [17.598]
  SETTABLEKS R19 R18 K105 ["TextSize"]
  CALL R16 2 1
  MOVE R17 R6
  LOADK R18 K108 [".Explorer-View"]
  DUPTABLE R19 K109 [{"BackgroundTransparency", "Size"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K23 ["BackgroundTransparency"]
  GETIMPORT R20 K55 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K51 ["Size"]
  CALL R17 2 1
  MOVE R18 R6
  LOADK R19 K110 [".Explorer-ScrollingFrame"]
  DUPTABLE R20 K116 [{"BorderColor3", "BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  MOVE R22 R5
  CALL R22 0 1
  JUMPIFNOT R22 [+2]
  LOADK R21 K27 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R21 K28 ["$LegacyMainBackground"]
  SETTABLEKS R21 R20 K43 ["BorderColor3"]
  GETTABLEKS R21 R3 K117 ["standard"]
  LOADK R22 K118 ["scrollBottom"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K111 ["BottomImage"]
  GETTABLEKS R21 R3 K117 ["standard"]
  LOADK R22 K119 ["scrollMid"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K112 ["MidImage"]
  GETTABLEKS R21 R3 K117 ["standard"]
  LOADK R22 K120 ["scrollTop"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K113 ["TopImage"]
  LOADK R21 K121 ["$ExplorerScrollBar"]
  SETTABLEKS R21 R20 K114 ["ScrollBarImageColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K115 ["ScrollBarImageTransparency"]
  CALL R18 2 1
  MOVE R19 R6
  LOADK R20 K122 [".Explorer-Square ::UIAspectRatioConstraint"]
  DUPTABLE R21 K124 [{"AspectRatio"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K123 ["AspectRatio"]
  CALL R19 2 1
  MOVE R20 R6
  LOADK R21 K125 [".Explorer-Icon"]
  DUPTABLE R22 K109 [{"BackgroundTransparency", "Size"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K23 ["BackgroundTransparency"]
  GETIMPORT R23 K127 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K51 ["Size"]
  CALL R20 2 1
  MOVE R21 R6
  LOADK R22 K128 [".Explorer-Radius-Small ::UICorner"]
  DUPTABLE R23 K130 [{"CornerRadius"}]
  GETIMPORT R24 K79 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K129 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R6
  LOADK R23 K131 [">> .Explorer-StandardText"]
  DUPTABLE R24 K133 [{"Font", "TextColor3", "TextSize"}]
  GETTABLEKS R25 R1 K134 ["defaultFont"]
  SETTABLEKS R25 R24 K132 ["Font"]
  LOADK R25 K99 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R25 R24 K82 ["TextColor3"]
  GETTABLEKS R25 R1 K135 ["standardTextSize"]
  SETTABLEKS R25 R24 K105 ["TextSize"]
  CALL R22 2 1
  MOVE R23 R6
  LOADK R24 K136 [".Explorer-Stroke-Standard"]
  DUPTABLE R25 K138 [{"BorderSizePixel"}]
  LOADN R26 0
  SETTABLEKS R26 R25 K137 ["BorderSizePixel"]
  NEWTABLE R26 0 1
  MOVE R27 R6
  LOADK R28 K139 ["::UIStroke"]
  DUPTABLE R29 K141 [{"Thickness"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K140 ["Thickness"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R6
  LOADK R25 K142 [".Explorer-Stroke-Thick"]
  DUPTABLE R26 K138 [{"BorderSizePixel"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K137 ["BorderSizePixel"]
  NEWTABLE R27 0 1
  MOVE R28 R6
  LOADK R29 K139 ["::UIStroke"]
  DUPTABLE R30 K141 [{"Thickness"}]
  LOADK R31 K143 [1.5]
  SETTABLEKS R31 R30 K140 ["Thickness"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R6
  LOADK R26 K144 [".Explorer-Stroke-Emphasis ::UIStroke"]
  DUPTABLE R27 K147 [{"Color", "Transparency"}]
  LOADK R28 K148 ["$RDLSemanticColorStrokeEmphasis"]
  SETTABLEKS R28 R27 K145 ["Color"]
  LOADK R28 K149 ["$RDLSemanticColorStrokeEmphasisTransparency"]
  SETTABLEKS R28 R27 K146 ["Transparency"]
  CALL R25 2 1
  MOVE R26 R6
  LOADK R27 K150 [".Explorer-Stroke-System-Emphasis ::UIStroke"]
  DUPTABLE R28 K151 [{"Color"}]
  LOADK R29 K33 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R29 R28 K145 ["Color"]
  CALL R26 2 1
  SETLIST R10 R11 16 [17]
  MOVE R12 R4
  CALL R12 0 1
  JUMPIFNOT R12 [+42]
  MOVE R11 R6
  LOADK R12 K152 [".Explorer-Selection-Background"]
  DUPTABLE R13 K153 [{"BackgroundTransparency"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K23 ["BackgroundTransparency"]
  NEWTABLE R14 0 3
  MOVE R15 R6
  LOADK R16 K154 [".Explorer-HoveredKind-Hovered"]
  DUPTABLE R17 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K40 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R18 R17 K22 ["BackgroundColor3"]
  LOADK R18 K41 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R18 R17 K23 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R6
  LOADK R17 K155 [".Explorer-SelectionKind-Selected"]
  DUPTABLE R18 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K156 ["$ExplorerSelected"]
  SETTABLEKS R19 R18 K22 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K23 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R6
  LOADK R18 K157 [".Explorer-SelectionKind-ParentSelected"]
  DUPTABLE R19 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K156 ["$ExplorerSelected"]
  SETTABLEKS R20 R19 K22 ["BackgroundColor3"]
  LOADK R20 K158 [0.8]
  SETTABLEKS R20 R19 K23 ["BackgroundTransparency"]
  CALL R17 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  JUMP [+1]
  LOADNIL R11
  MOVE R12 R6
  LOADK R13 K159 ["TextLabel"]
  DUPTABLE R14 K160 [{"Font"}]
  GETTABLEKS R15 R1 K134 ["defaultFont"]
  SETTABLEKS R15 R14 K132 ["Font"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [33]
  NEWTABLE R11 0 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["Base"]
  GETTABLEKS R9 R2 K14 ["Styling"]
  GETTABLEKS R8 R9 K20 ["createStyleSheet"]
  LOADK R9 K161 ["ExplorerDark"]
  NEWTABLE R10 0 0
  DUPTABLE R11 K188 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K192 ["#2E2E2E"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K162 ["LegacyMainBackground"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K193 ["#D5D7DD"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K163 ["ExplorerContentDefault"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K194 ["#EEEFF1"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K164 ["ExplorerContentEmphasis"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K195 ["#747476"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K165 ["ExplorerScrollBar"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K196 ["#005CB5"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K166 ["ExplorerSelected"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K197 ["#3C64FA"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K167 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K198 ["#BBC2D1"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K168 ["RDLSemanticColorActionSecondary"]
  LOADK R12 K199 [0.88]
  SETTABLEKS R12 R11 K169 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K198 ["#BBC2D1"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K170 ["RDLSemanticColorComponentInputFill"]
  LOADK R12 K199 [0.88]
  SETTABLEKS R12 R11 K171 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K193 ["#D5D7DD"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K172 ["RDLSemanticColorContentDefault"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K200 ["#696A6D"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K173 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K194 ["#EEEFF1"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K174 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K201 ["#BBBCBE"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K175 ["RDLSemanticColorContentMuted"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K202 ["#F9F9F9"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K176 ["RDLSemanticColorContentStandard"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K203 ["#D0D9FB"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K177 ["RDLSemanticColorShift300"]
  LOADK R12 K199 [0.88]
  SETTABLEKS R12 R11 K178 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K198 ["#BBC2D1"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K179 ["RDLSemanticColorStatesHover"]
  LOADK R12 K204 [0.92]
  SETTABLEKS R12 R11 K180 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K203 ["#D0D9FB"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K181 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R12 K205 [0.84]
  SETTABLEKS R12 R11 K182 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K206 ["#111216"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K183 ["RDLSemanticColorSurface0"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K207 ["#1F2024"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K184 ["RDLSemanticColorSurface100"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K208 ["#FFFFFF"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K185 ["RDLSemanticColorSurfaceOutline"]
  LOADK R12 K199 [0.88]
  SETTABLEKS R12 R11 K186 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K209 ["#335FFF"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K187 ["RDLSemanticColorSystemEmphasis"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["Dark"]
  GETTABLEKS R9 R2 K14 ["Styling"]
  GETTABLEKS R8 R9 K20 ["createStyleSheet"]
  LOADK R9 K210 ["ExplorerLight"]
  NEWTABLE R10 0 0
  DUPTABLE R11 K188 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K208 ["#FFFFFF"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K162 ["LegacyMainBackground"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K211 ["#000000"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K163 ["ExplorerContentDefault"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K208 ["#FFFFFF"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K164 ["ExplorerContentEmphasis"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K212 ["#949496"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K165 ["ExplorerScrollBar"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K213 ["#5A95DF"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K166 ["ExplorerSelected"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K197 ["#3C64FA"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K167 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K214 ["#333B4C"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K168 ["RDLSemanticColorActionSecondary"]
  LOADK R12 K204 [0.92]
  SETTABLEKS R12 R11 K169 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K214 ["#333B4C"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K170 ["RDLSemanticColorComponentInputFill"]
  LOADK R12 K204 [0.92]
  SETTABLEKS R12 R11 K171 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K215 ["#494D5A"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K172 ["RDLSemanticColorContentDefault"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K201 ["#BBBCBE"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K173 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K216 ["#202227"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K174 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K200 ["#696A6D"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K175 ["RDLSemanticColorContentMuted"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K206 ["#111216"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K176 ["RDLSemanticColorContentStandard"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K217 ["#1B254B"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K177 ["RDLSemanticColorShift300"]
  LOADK R12 K199 [0.88]
  SETTABLEKS R12 R11 K178 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K214 ["#333B4C"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K179 ["RDLSemanticColorStatesHover"]
  LOADK R12 K204 [0.92]
  SETTABLEKS R12 R11 K180 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K217 ["#1B254B"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K181 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R12 K205 [0.84]
  SETTABLEKS R12 R11 K182 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K218 ["#F2F2F3"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K183 ["RDLSemanticColorSurface0"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K208 ["#FFFFFF"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K184 ["RDLSemanticColorSurface100"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K211 ["#000000"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K185 ["RDLSemanticColorSurfaceOutline"]
  LOADK R12 K199 [0.88]
  SETTABLEKS R12 R11 K186 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R12 K191 [Color3.fromHex]
  LOADK R13 K209 ["#335FFF"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K187 ["RDLSemanticColorSystemEmphasis"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K18 ["Light"]
  RETURN R7 1
