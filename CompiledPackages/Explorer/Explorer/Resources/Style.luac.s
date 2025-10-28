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
  GETTABLEKS R5 R6 K12 ["getFFlagExplorerContentDisabledIncludesImageColor"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Flags"]
  GETTABLEKS R6 R7 K13 ["getFFlagExplorerStreaming"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K11 ["Flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagLuaExplorerUseRDLColors"]
  CALL R6 1 1
  GETTABLEKS R8 R2 K15 ["Styling"]
  GETTABLEKS R7 R8 K16 ["createStyleRule"]
  DUPTABLE R8 K20 [{"Base", "Dark", "Light"}]
  GETTABLEKS R10 R2 K15 ["Styling"]
  GETTABLEKS R9 R10 K21 ["createStyleSheet"]
  LOADK R10 K2 ["Explorer"]
  NEWTABLE R11 0 34
  MOVE R12 R7
  LOADK R13 K22 [".Explorer-BG-Surface0"]
  DUPTABLE R14 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K26 ["$RDLSemanticColorSurface0"]
  SETTABLEKS R15 R14 K23 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K24 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R7
  LOADK R14 K27 [".Explorer-BG-Surface100"]
  DUPTABLE R15 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  MOVE R17 R6
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  LOADK R16 K28 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R16 K29 ["$LegacyMainBackground"]
  SETTABLEKS R16 R15 K23 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K24 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R7
  LOADK R15 K30 [".Explorer-BG-Shift300"]
  DUPTABLE R16 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K31 ["$RDLSemanticColorShift300"]
  SETTABLEKS R17 R16 K23 ["BackgroundColor3"]
  LOADK R17 K32 ["$RDLSemanticColorShift300Transparency"]
  SETTABLEKS R17 R16 K24 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R7
  LOADK R16 K33 [".Explorer-BG-Action-Soft-Emphasis"]
  DUPTABLE R17 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K34 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R18 R17 K23 ["BackgroundColor3"]
  LOADK R18 K35 [0.6]
  SETTABLEKS R18 R17 K24 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R7
  LOADK R17 K36 [".Explorer-BG-SystemEmphasis"]
  DUPTABLE R18 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K34 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R19 R18 K23 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K24 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R7
  LOADK R18 K37 [".Explorer-BG-Input"]
  DUPTABLE R19 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K38 ["$RDLSemanticColorComponentInputFill"]
  SETTABLEKS R20 R19 K23 ["BackgroundColor3"]
  LOADK R20 K39 ["$RDLSemanticColorComponentInputFillTransparency"]
  SETTABLEKS R20 R19 K24 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R7
  LOADK R19 K40 [".Explorer-BG-Hover"]
  DUPTABLE R20 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K41 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R21 R20 K23 ["BackgroundColor3"]
  LOADK R21 K42 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R21 R20 K24 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R7
  LOADK R20 K43 [".Explorer-Border-SystemEmphasis"]
  DUPTABLE R21 K45 [{"BorderColor3"}]
  LOADK R22 K34 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R22 R21 K44 ["BorderColor3"]
  CALL R19 2 1
  MOVE R20 R7
  LOADK R21 K46 [".Explorer-Button"]
  DUPTABLE R22 K49 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K47 ["AutoButtonColor"]
  LOADN R23 1
  SETTABLEKS R23 R22 K24 ["BackgroundTransparency"]
  LOADK R23 K50 [""]
  SETTABLEKS R23 R22 K48 ["Text"]
  CALL R20 2 1
  MOVE R21 R7
  LOADK R22 K51 [".Explorer-GrowX"]
  DUPTABLE R23 K53 [{"Size"}]
  GETIMPORT R24 K56 [UDim2.fromScale]
  LOADN R25 0
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K52 ["Size"]
  NEWTABLE R24 0 1
  MOVE R25 R7
  LOADK R26 K57 ["::UIFlexItem"]
  DUPTABLE R27 K59 [{"FlexMode"}]
  GETIMPORT R28 K63 [Enum.UIFlexMode.Grow]
  SETTABLEKS R28 R27 K58 ["FlexMode"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R7
  LOADK R23 K64 [".Explorer-ShrinkX"]
  DUPTABLE R24 K66 [{"AutomaticSize"}]
  GETIMPORT R25 K68 [Enum.AutomaticSize.X]
  SETTABLEKS R25 R24 K65 ["AutomaticSize"]
  NEWTABLE R25 0 1
  MOVE R26 R7
  LOADK R27 K57 ["::UIFlexItem"]
  DUPTABLE R28 K59 [{"FlexMode"}]
  GETIMPORT R29 K70 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R29 R28 K58 ["FlexMode"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R7
  LOADK R24 K71 [".Explorer-FillX"]
  DUPTABLE R25 K53 [{"Size"}]
  GETIMPORT R26 K56 [UDim2.fromScale]
  LOADN R27 0
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K52 ["Size"]
  NEWTABLE R26 0 1
  MOVE R27 R7
  LOADK R28 K57 ["::UIFlexItem"]
  DUPTABLE R29 K59 [{"FlexMode"}]
  GETIMPORT R30 K73 [Enum.UIFlexMode.Fill]
  SETTABLEKS R30 R29 K58 ["FlexMode"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R7
  LOADK R25 K74 [".Explorer-SidePadS ::UIPadding"]
  DUPTABLE R26 K77 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R27 K80 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K75 ["PaddingLeft"]
  GETIMPORT R27 K80 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K76 ["PaddingRight"]
  CALL R24 2 1
  MOVE R25 R7
  LOADK R26 K81 [".Explorer-Content-Default"]
  DUPTABLE R27 K84 [{"ImageColor3", "TextColor3"}]
  LOADK R28 K85 ["$ExplorerContentDefault"]
  SETTABLEKS R28 R27 K82 ["ImageColor3"]
  LOADK R28 K85 ["$ExplorerContentDefault"]
  SETTABLEKS R28 R27 K83 ["TextColor3"]
  CALL R25 2 1
  MOVE R26 R7
  LOADK R27 K86 [".Explorer-Content-Disabled"]
  DUPTABLE R28 K88 [{"ImageTransparency", "TextColor3", "ImageColor3"}]
  LOADK R29 K89 [0.62]
  SETTABLEKS R29 R28 K87 ["ImageTransparency"]
  LOADK R29 K90 ["$RDLSemanticColorContentDisabled"]
  SETTABLEKS R29 R28 K83 ["TextColor3"]
  MOVE R30 R4
  CALL R30 0 1
  JUMPIFNOT R30 [+2]
  LOADK R29 K90 ["$RDLSemanticColorContentDisabled"]
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K82 ["ImageColor3"]
  CALL R26 2 1
  MOVE R27 R7
  LOADK R28 K91 [".Explorer-Content-Emphasis"]
  DUPTABLE R29 K84 [{"ImageColor3", "TextColor3"}]
  LOADK R30 K92 ["$ExplorerContentEmphasis"]
  SETTABLEKS R30 R29 K82 ["ImageColor3"]
  LOADK R30 K92 ["$ExplorerContentEmphasis"]
  SETTABLEKS R30 R29 K83 ["TextColor3"]
  CALL R27 2 1
  SETLIST R11 R12 16 [1]
  MOVE R12 R7
  LOADK R13 K93 [".Explorer-Content-Muted"]
  DUPTABLE R14 K84 [{"ImageColor3", "TextColor3"}]
  LOADK R15 K94 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R15 R14 K82 ["ImageColor3"]
  LOADK R15 K94 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R15 R14 K83 ["TextColor3"]
  CALL R12 2 1
  MOVE R13 R7
  LOADK R14 K95 [".Explorer-BG-PrimaryBrandFill"]
  DUPTABLE R15 K96 [{"BackgroundColor3"}]
  LOADK R16 K97 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R16 R15 K23 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R7
  LOADK R15 K98 [".Explorer-Content-PrimaryBrandFill"]
  DUPTABLE R16 K84 [{"ImageColor3", "TextColor3"}]
  LOADK R17 K97 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R17 R16 K82 ["ImageColor3"]
  LOADK R17 K97 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R17 R16 K83 ["TextColor3"]
  CALL R14 2 1
  MOVE R15 R7
  LOADK R16 K99 [".Explorer-Content-Standard"]
  DUPTABLE R17 K84 [{"ImageColor3", "TextColor3"}]
  LOADK R18 K100 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R18 R17 K82 ["ImageColor3"]
  LOADK R18 K100 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R18 R17 K83 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R7
  LOADK R17 K101 [".Explorer-Content-Surface-Outline"]
  DUPTABLE R18 K102 [{"ImageColor3", "ImageTransparency"}]
  LOADK R19 K103 ["$RDLSemanticColorSurfaceOutline"]
  SETTABLEKS R19 R18 K82 ["ImageColor3"]
  LOADK R19 K104 ["$RDLSemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R19 R18 K87 ["ImageTransparency"]
  CALL R16 2 1
  MOVE R17 R7
  LOADK R18 K105 [".Explorer-Text-Size-14"]
  DUPTABLE R19 K107 [{"TextSize"}]
  LOADK R20 K108 [17.598]
  SETTABLEKS R20 R19 K106 ["TextSize"]
  CALL R17 2 1
  MOVE R18 R7
  LOADK R19 K109 [".Explorer-View"]
  DUPTABLE R20 K110 [{"BackgroundTransparency", "Size"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K24 ["BackgroundTransparency"]
  GETIMPORT R21 K56 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K52 ["Size"]
  CALL R18 2 1
  MOVE R19 R7
  LOADK R20 K111 [".Explorer-ScrollingFrame"]
  DUPTABLE R21 K117 [{"BorderColor3", "BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  MOVE R23 R6
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  LOADK R22 K28 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R22 K29 ["$LegacyMainBackground"]
  SETTABLEKS R22 R21 K44 ["BorderColor3"]
  GETTABLEKS R22 R3 K118 ["standard"]
  LOADK R23 K119 ["scrollBottom"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K112 ["BottomImage"]
  GETTABLEKS R22 R3 K118 ["standard"]
  LOADK R23 K120 ["scrollMid"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K113 ["MidImage"]
  GETTABLEKS R22 R3 K118 ["standard"]
  LOADK R23 K121 ["scrollTop"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K114 ["TopImage"]
  LOADK R22 K122 ["$ExplorerScrollBar"]
  SETTABLEKS R22 R21 K115 ["ScrollBarImageColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K116 ["ScrollBarImageTransparency"]
  CALL R19 2 1
  MOVE R20 R7
  LOADK R21 K123 [".Explorer-Square ::UIAspectRatioConstraint"]
  DUPTABLE R22 K125 [{"AspectRatio"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K124 ["AspectRatio"]
  CALL R20 2 1
  MOVE R21 R7
  LOADK R22 K126 [".Explorer-Icon"]
  DUPTABLE R23 K110 [{"BackgroundTransparency", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K24 ["BackgroundTransparency"]
  GETIMPORT R24 K128 [UDim2.fromOffset]
  LOADN R25 16
  LOADN R26 16
  CALL R24 2 1
  SETTABLEKS R24 R23 K52 ["Size"]
  CALL R21 2 1
  MOVE R22 R7
  LOADK R23 K129 [".Explorer-Radius-Small ::UICorner"]
  DUPTABLE R24 K131 [{"CornerRadius"}]
  GETIMPORT R25 K80 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K130 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R7
  LOADK R24 K132 [">> .Explorer-StandardText"]
  DUPTABLE R25 K134 [{"Font", "TextColor3", "TextSize"}]
  GETTABLEKS R26 R1 K135 ["defaultFont"]
  SETTABLEKS R26 R25 K133 ["Font"]
  LOADK R26 K100 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R26 R25 K83 ["TextColor3"]
  GETTABLEKS R26 R1 K136 ["standardTextSize"]
  SETTABLEKS R26 R25 K106 ["TextSize"]
  CALL R23 2 1
  MOVE R24 R7
  LOADK R25 K137 [".Explorer-Stroke-Standard"]
  DUPTABLE R26 K139 [{"BorderSizePixel"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K138 ["BorderSizePixel"]
  NEWTABLE R27 0 1
  MOVE R28 R7
  LOADK R29 K140 ["::UIStroke"]
  DUPTABLE R30 K142 [{"Thickness"}]
  LOADN R31 1
  SETTABLEKS R31 R30 K141 ["Thickness"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R7
  LOADK R26 K143 [".Explorer-Stroke-Thick"]
  DUPTABLE R27 K139 [{"BorderSizePixel"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K138 ["BorderSizePixel"]
  NEWTABLE R28 0 1
  MOVE R29 R7
  LOADK R30 K140 ["::UIStroke"]
  DUPTABLE R31 K142 [{"Thickness"}]
  LOADK R32 K144 [1.5]
  SETTABLEKS R32 R31 K141 ["Thickness"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R7
  LOADK R27 K145 [".Explorer-Stroke-Emphasis ::UIStroke"]
  DUPTABLE R28 K148 [{"Color", "Transparency"}]
  LOADK R29 K149 ["$RDLSemanticColorStrokeEmphasis"]
  SETTABLEKS R29 R28 K146 ["Color"]
  LOADK R29 K150 ["$RDLSemanticColorStrokeEmphasisTransparency"]
  SETTABLEKS R29 R28 K147 ["Transparency"]
  CALL R26 2 1
  MOVE R27 R7
  LOADK R28 K151 [".Explorer-Stroke-System-Emphasis ::UIStroke"]
  DUPTABLE R29 K152 [{"Color"}]
  LOADK R30 K34 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R30 R29 K146 ["Color"]
  CALL R27 2 1
  SETLIST R11 R12 16 [17]
  MOVE R13 R5
  CALL R13 0 1
  JUMPIFNOT R13 [+42]
  MOVE R12 R7
  LOADK R13 K153 [".Explorer-Selection-Background"]
  DUPTABLE R14 K154 [{"BackgroundTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K24 ["BackgroundTransparency"]
  NEWTABLE R15 0 3
  MOVE R16 R7
  LOADK R17 K155 [".Explorer-HoveredKind-Hovered"]
  DUPTABLE R18 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K41 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R19 R18 K23 ["BackgroundColor3"]
  LOADK R19 K42 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R19 R18 K24 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R7
  LOADK R18 K156 [".Explorer-SelectionKind-Selected"]
  DUPTABLE R19 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K157 ["$ExplorerSelected"]
  SETTABLEKS R20 R19 K23 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K24 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R7
  LOADK R19 K158 [".Explorer-SelectionKind-ParentSelected"]
  DUPTABLE R20 K25 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K157 ["$ExplorerSelected"]
  SETTABLEKS R21 R20 K23 ["BackgroundColor3"]
  LOADK R21 K159 [0.8]
  SETTABLEKS R21 R20 K24 ["BackgroundTransparency"]
  CALL R18 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  MOVE R13 R7
  LOADK R14 K160 ["TextLabel"]
  DUPTABLE R15 K161 [{"Font"}]
  GETTABLEKS R16 R1 K135 ["defaultFont"]
  SETTABLEKS R16 R15 K133 ["Font"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [33]
  NEWTABLE R12 0 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Base"]
  GETTABLEKS R10 R2 K15 ["Styling"]
  GETTABLEKS R9 R10 K21 ["createStyleSheet"]
  LOADK R10 K162 ["ExplorerDark"]
  NEWTABLE R11 0 0
  DUPTABLE R12 K189 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K193 ["#2E2E2E"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K163 ["LegacyMainBackground"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K194 ["#D5D7DD"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K164 ["ExplorerContentDefault"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K195 ["#EEEFF1"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K165 ["ExplorerContentEmphasis"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K196 ["#747476"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K166 ["ExplorerScrollBar"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K197 ["#005CB5"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K167 ["ExplorerSelected"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K198 ["#3C64FA"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K168 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K199 ["#BBC2D1"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K169 ["RDLSemanticColorActionSecondary"]
  LOADK R13 K200 [0.88]
  SETTABLEKS R13 R12 K170 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K199 ["#BBC2D1"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K171 ["RDLSemanticColorComponentInputFill"]
  LOADK R13 K200 [0.88]
  SETTABLEKS R13 R12 K172 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K194 ["#D5D7DD"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K173 ["RDLSemanticColorContentDefault"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K201 ["#696A6D"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K174 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K195 ["#EEEFF1"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K175 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K202 ["#BBBCBE"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K176 ["RDLSemanticColorContentMuted"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K203 ["#F9F9F9"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K177 ["RDLSemanticColorContentStandard"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K204 ["#D0D9FB"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K178 ["RDLSemanticColorShift300"]
  LOADK R13 K200 [0.88]
  SETTABLEKS R13 R12 K179 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K199 ["#BBC2D1"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K180 ["RDLSemanticColorStatesHover"]
  LOADK R13 K205 [0.92]
  SETTABLEKS R13 R12 K181 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K204 ["#D0D9FB"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K182 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R13 K206 [0.84]
  SETTABLEKS R13 R12 K183 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K207 ["#111216"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K184 ["RDLSemanticColorSurface0"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K208 ["#1F2024"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K185 ["RDLSemanticColorSurface100"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K209 ["#FFFFFF"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K186 ["RDLSemanticColorSurfaceOutline"]
  LOADK R13 K200 [0.88]
  SETTABLEKS R13 R12 K187 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K210 ["#335FFF"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K188 ["RDLSemanticColorSystemEmphasis"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Dark"]
  GETTABLEKS R10 R2 K15 ["Styling"]
  GETTABLEKS R9 R10 K21 ["createStyleSheet"]
  LOADK R10 K211 ["ExplorerLight"]
  NEWTABLE R11 0 0
  DUPTABLE R12 K189 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K209 ["#FFFFFF"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K163 ["LegacyMainBackground"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K212 ["#000000"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K164 ["ExplorerContentDefault"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K209 ["#FFFFFF"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K165 ["ExplorerContentEmphasis"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K213 ["#949496"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K166 ["ExplorerScrollBar"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K214 ["#5A95DF"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K167 ["ExplorerSelected"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K198 ["#3C64FA"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K168 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K215 ["#333B4C"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K169 ["RDLSemanticColorActionSecondary"]
  LOADK R13 K205 [0.92]
  SETTABLEKS R13 R12 K170 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K215 ["#333B4C"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K171 ["RDLSemanticColorComponentInputFill"]
  LOADK R13 K205 [0.92]
  SETTABLEKS R13 R12 K172 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K216 ["#494D5A"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K173 ["RDLSemanticColorContentDefault"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K202 ["#BBBCBE"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K174 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K217 ["#202227"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K175 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K201 ["#696A6D"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K176 ["RDLSemanticColorContentMuted"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K207 ["#111216"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K177 ["RDLSemanticColorContentStandard"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K218 ["#1B254B"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K178 ["RDLSemanticColorShift300"]
  LOADK R13 K200 [0.88]
  SETTABLEKS R13 R12 K179 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K215 ["#333B4C"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K180 ["RDLSemanticColorStatesHover"]
  LOADK R13 K205 [0.92]
  SETTABLEKS R13 R12 K181 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K218 ["#1B254B"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K182 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R13 K206 [0.84]
  SETTABLEKS R13 R12 K183 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K219 ["#F2F2F3"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K184 ["RDLSemanticColorSurface0"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K209 ["#FFFFFF"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K185 ["RDLSemanticColorSurface100"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K212 ["#000000"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K186 ["RDLSemanticColorSurfaceOutline"]
  LOADK R13 K200 [0.88]
  SETTABLEKS R13 R12 K187 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R13 K192 [Color3.fromHex]
  LOADK R14 K210 ["#335FFF"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K188 ["RDLSemanticColorSystemEmphasis"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K19 ["Light"]
  RETURN R8 1
