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
  GETTABLEKS R6 R7 K13 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K11 ["Flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagExplorerStreaming"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K11 ["Flags"]
  GETTABLEKS R8 R9 K15 ["getFFlagLuaExplorerUseRDLColors"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K16 ["Styling"]
  GETTABLEKS R8 R9 K17 ["createStyleRule"]
  DUPTABLE R9 K21 [{"Base", "Dark", "Light"}]
  GETTABLEKS R11 R2 K16 ["Styling"]
  GETTABLEKS R10 R11 K22 ["createStyleSheet"]
  LOADK R11 K2 ["Explorer"]
  NEWTABLE R12 0 34
  MOVE R13 R8
  LOADK R14 K23 [".Explorer-BG-Surface0"]
  DUPTABLE R15 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K27 ["$RDLSemanticColorSurface0"]
  SETTABLEKS R16 R15 K24 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K25 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R8
  LOADK R15 K28 [".Explorer-BG-Surface100"]
  DUPTABLE R16 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  MOVE R18 R7
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADK R17 K29 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R17 K30 ["$LegacyMainBackground"]
  SETTABLEKS R17 R16 K24 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K25 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R8
  LOADK R16 K31 [".Explorer-BG-Shift300"]
  DUPTABLE R17 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K32 ["$RDLSemanticColorShift300"]
  SETTABLEKS R18 R17 K24 ["BackgroundColor3"]
  LOADK R18 K33 ["$RDLSemanticColorShift300Transparency"]
  SETTABLEKS R18 R17 K25 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R8
  LOADK R17 K34 [".Explorer-BG-Action-Soft-Emphasis"]
  DUPTABLE R18 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K35 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R19 R18 K24 ["BackgroundColor3"]
  LOADK R19 K36 [0.6]
  SETTABLEKS R19 R18 K25 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R8
  LOADK R18 K37 [".Explorer-BG-SystemEmphasis"]
  DUPTABLE R19 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K35 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R20 R19 K24 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K25 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R8
  LOADK R19 K38 [".Explorer-BG-Input"]
  DUPTABLE R20 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K39 ["$RDLSemanticColorComponentInputFill"]
  SETTABLEKS R21 R20 K24 ["BackgroundColor3"]
  LOADK R21 K40 ["$RDLSemanticColorComponentInputFillTransparency"]
  SETTABLEKS R21 R20 K25 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R8
  LOADK R20 K41 [".Explorer-BG-Hover"]
  DUPTABLE R21 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K42 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R22 R21 K24 ["BackgroundColor3"]
  LOADK R22 K43 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R22 R21 K25 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R8
  LOADK R21 K44 [".Explorer-Border-SystemEmphasis"]
  DUPTABLE R22 K46 [{"BorderColor3"}]
  LOADK R23 K35 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R23 R22 K45 ["BorderColor3"]
  CALL R20 2 1
  MOVE R21 R8
  LOADK R22 K47 [".Explorer-Button"]
  DUPTABLE R23 K50 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K48 ["AutoButtonColor"]
  LOADN R24 1
  SETTABLEKS R24 R23 K25 ["BackgroundTransparency"]
  LOADK R24 K51 [""]
  SETTABLEKS R24 R23 K49 ["Text"]
  CALL R21 2 1
  MOVE R22 R8
  LOADK R23 K52 [".Explorer-GrowX"]
  DUPTABLE R24 K54 [{"Size"}]
  GETIMPORT R25 K57 [UDim2.fromScale]
  LOADN R26 0
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K53 ["Size"]
  NEWTABLE R25 0 1
  MOVE R26 R8
  LOADK R27 K58 ["::UIFlexItem"]
  DUPTABLE R28 K60 [{"FlexMode"}]
  GETIMPORT R29 K64 [Enum.UIFlexMode.Grow]
  SETTABLEKS R29 R28 K59 ["FlexMode"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R8
  LOADK R24 K65 [".Explorer-ShrinkX"]
  DUPTABLE R25 K67 [{"AutomaticSize"}]
  GETIMPORT R26 K69 [Enum.AutomaticSize.X]
  SETTABLEKS R26 R25 K66 ["AutomaticSize"]
  NEWTABLE R26 0 1
  MOVE R27 R8
  LOADK R28 K58 ["::UIFlexItem"]
  DUPTABLE R29 K60 [{"FlexMode"}]
  GETIMPORT R30 K71 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R30 R29 K59 ["FlexMode"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R8
  LOADK R25 K72 [".Explorer-FillX"]
  DUPTABLE R26 K54 [{"Size"}]
  GETIMPORT R27 K57 [UDim2.fromScale]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K53 ["Size"]
  NEWTABLE R27 0 1
  MOVE R28 R8
  LOADK R29 K58 ["::UIFlexItem"]
  DUPTABLE R30 K60 [{"FlexMode"}]
  GETIMPORT R31 K74 [Enum.UIFlexMode.Fill]
  SETTABLEKS R31 R30 K59 ["FlexMode"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R8
  LOADK R26 K75 [".Explorer-SidePadS ::UIPadding"]
  DUPTABLE R27 K78 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R28 K81 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K76 ["PaddingLeft"]
  GETIMPORT R28 K81 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K77 ["PaddingRight"]
  CALL R25 2 1
  MOVE R26 R8
  LOADK R27 K82 [".Explorer-Content-Default"]
  DUPTABLE R28 K85 [{"ImageColor3", "TextColor3"}]
  LOADK R29 K86 ["$ExplorerContentDefault"]
  SETTABLEKS R29 R28 K83 ["ImageColor3"]
  LOADK R29 K86 ["$ExplorerContentDefault"]
  SETTABLEKS R29 R28 K84 ["TextColor3"]
  CALL R26 2 1
  MOVE R27 R8
  LOADK R28 K87 [".Explorer-Content-Disabled"]
  DUPTABLE R29 K89 [{"ImageTransparency", "TextColor3", "ImageColor3"}]
  LOADK R30 K90 [0.62]
  SETTABLEKS R30 R29 K88 ["ImageTransparency"]
  LOADK R30 K91 ["$RDLSemanticColorContentDisabled"]
  SETTABLEKS R30 R29 K84 ["TextColor3"]
  MOVE R31 R4
  CALL R31 0 1
  JUMPIFNOT R31 [+2]
  LOADK R30 K91 ["$RDLSemanticColorContentDisabled"]
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K83 ["ImageColor3"]
  CALL R27 2 1
  MOVE R28 R8
  LOADK R29 K92 [".Explorer-Content-Emphasis"]
  DUPTABLE R30 K85 [{"ImageColor3", "TextColor3"}]
  LOADK R31 K93 ["$ExplorerContentEmphasis"]
  SETTABLEKS R31 R30 K83 ["ImageColor3"]
  LOADK R31 K93 ["$ExplorerContentEmphasis"]
  SETTABLEKS R31 R30 K84 ["TextColor3"]
  CALL R28 2 1
  SETLIST R12 R13 16 [1]
  MOVE R13 R8
  LOADK R14 K94 [".Explorer-Content-Muted"]
  DUPTABLE R15 K85 [{"ImageColor3", "TextColor3"}]
  LOADK R16 K95 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R16 R15 K83 ["ImageColor3"]
  LOADK R16 K95 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R16 R15 K84 ["TextColor3"]
  CALL R13 2 1
  MOVE R14 R8
  LOADK R15 K96 [".Explorer-BG-PrimaryBrandFill"]
  DUPTABLE R16 K97 [{"BackgroundColor3"}]
  LOADK R17 K98 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R17 R16 K24 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R8
  LOADK R16 K99 [".Explorer-Content-PrimaryBrandFill"]
  DUPTABLE R17 K85 [{"ImageColor3", "TextColor3"}]
  LOADK R18 K98 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R18 R17 K83 ["ImageColor3"]
  LOADK R18 K98 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R18 R17 K84 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R8
  LOADK R17 K100 [".Explorer-Content-Standard"]
  DUPTABLE R18 K85 [{"ImageColor3", "TextColor3"}]
  LOADK R19 K101 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R19 R18 K83 ["ImageColor3"]
  LOADK R19 K101 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R19 R18 K84 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R8
  LOADK R18 K102 [".Explorer-Content-Surface-Outline"]
  DUPTABLE R19 K103 [{"ImageColor3", "ImageTransparency"}]
  LOADK R20 K104 ["$RDLSemanticColorSurfaceOutline"]
  SETTABLEKS R20 R19 K83 ["ImageColor3"]
  LOADK R20 K105 ["$RDLSemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R20 R19 K88 ["ImageTransparency"]
  CALL R17 2 1
  MOVE R18 R8
  LOADK R19 K106 [".Explorer-Text-Size-14"]
  DUPTABLE R20 K108 [{"TextSize"}]
  MOVE R22 R5
  CALL R22 0 1
  JUMPIFNOT R22 [+2]
  LOADN R21 17
  JUMP [+1]
  LOADK R21 K109 [17.598]
  SETTABLEKS R21 R20 K107 ["TextSize"]
  CALL R18 2 1
  MOVE R19 R8
  LOADK R20 K110 [".Explorer-View"]
  DUPTABLE R21 K111 [{"BackgroundTransparency", "Size"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K25 ["BackgroundTransparency"]
  GETIMPORT R22 K57 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K53 ["Size"]
  CALL R19 2 1
  MOVE R20 R8
  LOADK R21 K112 [".Explorer-ScrollingFrame"]
  DUPTABLE R22 K118 [{"BorderColor3", "BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  MOVE R24 R7
  CALL R24 0 1
  JUMPIFNOT R24 [+2]
  LOADK R23 K29 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R23 K30 ["$LegacyMainBackground"]
  SETTABLEKS R23 R22 K45 ["BorderColor3"]
  GETTABLEKS R23 R3 K119 ["standard"]
  LOADK R24 K120 ["scrollBottom"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K113 ["BottomImage"]
  GETTABLEKS R23 R3 K119 ["standard"]
  LOADK R24 K121 ["scrollMid"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K114 ["MidImage"]
  GETTABLEKS R23 R3 K119 ["standard"]
  LOADK R24 K122 ["scrollTop"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K115 ["TopImage"]
  LOADK R23 K123 ["$ExplorerScrollBar"]
  SETTABLEKS R23 R22 K116 ["ScrollBarImageColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K117 ["ScrollBarImageTransparency"]
  CALL R20 2 1
  MOVE R21 R8
  LOADK R22 K124 [".Explorer-Square ::UIAspectRatioConstraint"]
  DUPTABLE R23 K126 [{"AspectRatio"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K125 ["AspectRatio"]
  CALL R21 2 1
  MOVE R22 R8
  LOADK R23 K127 [".Explorer-Icon"]
  DUPTABLE R24 K111 [{"BackgroundTransparency", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K25 ["BackgroundTransparency"]
  GETIMPORT R25 K129 [UDim2.fromOffset]
  LOADN R26 16
  LOADN R27 16
  CALL R25 2 1
  SETTABLEKS R25 R24 K53 ["Size"]
  CALL R22 2 1
  MOVE R23 R8
  LOADK R24 K130 [".Explorer-Radius-Small ::UICorner"]
  DUPTABLE R25 K132 [{"CornerRadius"}]
  GETIMPORT R26 K81 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K131 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R8
  LOADK R25 K133 [">> .Explorer-StandardText"]
  DUPTABLE R26 K135 [{"Font", "TextColor3", "TextSize"}]
  GETTABLEKS R27 R1 K136 ["defaultFont"]
  SETTABLEKS R27 R26 K134 ["Font"]
  LOADK R27 K101 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R27 R26 K84 ["TextColor3"]
  GETTABLEKS R27 R1 K137 ["standardTextSize"]
  SETTABLEKS R27 R26 K107 ["TextSize"]
  CALL R24 2 1
  MOVE R25 R8
  LOADK R26 K138 [".Explorer-Stroke-Standard"]
  DUPTABLE R27 K140 [{"BorderSizePixel"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K139 ["BorderSizePixel"]
  NEWTABLE R28 0 1
  MOVE R29 R8
  LOADK R30 K141 ["::UIStroke"]
  DUPTABLE R31 K143 [{"Thickness"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K142 ["Thickness"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R8
  LOADK R27 K144 [".Explorer-Stroke-Thick"]
  DUPTABLE R28 K140 [{"BorderSizePixel"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K139 ["BorderSizePixel"]
  NEWTABLE R29 0 1
  MOVE R30 R8
  LOADK R31 K141 ["::UIStroke"]
  DUPTABLE R32 K143 [{"Thickness"}]
  LOADK R33 K145 [1.5]
  SETTABLEKS R33 R32 K142 ["Thickness"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R8
  LOADK R28 K146 [".Explorer-Stroke-Emphasis ::UIStroke"]
  DUPTABLE R29 K149 [{"Color", "Transparency"}]
  LOADK R30 K150 ["$RDLSemanticColorStrokeEmphasis"]
  SETTABLEKS R30 R29 K147 ["Color"]
  LOADK R30 K151 ["$RDLSemanticColorStrokeEmphasisTransparency"]
  SETTABLEKS R30 R29 K148 ["Transparency"]
  CALL R27 2 1
  MOVE R28 R8
  LOADK R29 K152 [".Explorer-Stroke-System-Emphasis ::UIStroke"]
  DUPTABLE R30 K153 [{"Color"}]
  LOADK R31 K35 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R31 R30 K147 ["Color"]
  CALL R28 2 1
  SETLIST R12 R13 16 [17]
  MOVE R14 R6
  CALL R14 0 1
  JUMPIFNOT R14 [+42]
  MOVE R13 R8
  LOADK R14 K154 [".Explorer-Selection-Background"]
  DUPTABLE R15 K155 [{"BackgroundTransparency"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K25 ["BackgroundTransparency"]
  NEWTABLE R16 0 3
  MOVE R17 R8
  LOADK R18 K156 [".Explorer-HoveredKind-Hovered"]
  DUPTABLE R19 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K42 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R20 R19 K24 ["BackgroundColor3"]
  LOADK R20 K43 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R20 R19 K25 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R8
  LOADK R19 K157 [".Explorer-SelectionKind-Selected"]
  DUPTABLE R20 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K158 ["$ExplorerSelected"]
  SETTABLEKS R21 R20 K24 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K25 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R8
  LOADK R20 K159 [".Explorer-SelectionKind-ParentSelected"]
  DUPTABLE R21 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K158 ["$ExplorerSelected"]
  SETTABLEKS R22 R21 K24 ["BackgroundColor3"]
  LOADK R22 K160 [0.8]
  SETTABLEKS R22 R21 K25 ["BackgroundTransparency"]
  CALL R19 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  JUMP [+1]
  LOADNIL R13
  MOVE R14 R8
  LOADK R15 K161 ["TextLabel"]
  DUPTABLE R16 K162 [{"Font"}]
  GETTABLEKS R17 R1 K136 ["defaultFont"]
  SETTABLEKS R17 R16 K134 ["Font"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [33]
  NEWTABLE R13 0 0
  CALL R10 3 1
  SETTABLEKS R10 R9 K18 ["Base"]
  GETTABLEKS R11 R2 K16 ["Styling"]
  GETTABLEKS R10 R11 K22 ["createStyleSheet"]
  LOADK R11 K163 ["ExplorerDark"]
  NEWTABLE R12 0 0
  DUPTABLE R13 K190 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K194 ["#2E2E2E"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K164 ["LegacyMainBackground"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K195 ["#D5D7DD"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K165 ["ExplorerContentDefault"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K196 ["#EEEFF1"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K166 ["ExplorerContentEmphasis"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K197 ["#747476"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K167 ["ExplorerScrollBar"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K198 ["#005CB5"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K168 ["ExplorerSelected"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K199 ["#3C64FA"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K169 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K200 ["#BBC2D1"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K170 ["RDLSemanticColorActionSecondary"]
  LOADK R14 K201 [0.88]
  SETTABLEKS R14 R13 K171 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K200 ["#BBC2D1"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K172 ["RDLSemanticColorComponentInputFill"]
  LOADK R14 K201 [0.88]
  SETTABLEKS R14 R13 K173 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K195 ["#D5D7DD"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K174 ["RDLSemanticColorContentDefault"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K202 ["#696A6D"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K175 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K196 ["#EEEFF1"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K176 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K203 ["#BBBCBE"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K177 ["RDLSemanticColorContentMuted"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K204 ["#F9F9F9"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K178 ["RDLSemanticColorContentStandard"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K205 ["#D0D9FB"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K179 ["RDLSemanticColorShift300"]
  LOADK R14 K201 [0.88]
  SETTABLEKS R14 R13 K180 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K200 ["#BBC2D1"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K181 ["RDLSemanticColorStatesHover"]
  LOADK R14 K206 [0.92]
  SETTABLEKS R14 R13 K182 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K205 ["#D0D9FB"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K183 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R14 K207 [0.84]
  SETTABLEKS R14 R13 K184 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K208 ["#111216"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K185 ["RDLSemanticColorSurface0"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K209 ["#1F2024"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K186 ["RDLSemanticColorSurface100"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K210 ["#FFFFFF"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K187 ["RDLSemanticColorSurfaceOutline"]
  LOADK R14 K201 [0.88]
  SETTABLEKS R14 R13 K188 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K211 ["#335FFF"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K189 ["RDLSemanticColorSystemEmphasis"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["Dark"]
  GETTABLEKS R11 R2 K16 ["Styling"]
  GETTABLEKS R10 R11 K22 ["createStyleSheet"]
  LOADK R11 K212 ["ExplorerLight"]
  NEWTABLE R12 0 0
  DUPTABLE R13 K190 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K210 ["#FFFFFF"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K164 ["LegacyMainBackground"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K213 ["#000000"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K165 ["ExplorerContentDefault"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K210 ["#FFFFFF"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K166 ["ExplorerContentEmphasis"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K214 ["#949496"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K167 ["ExplorerScrollBar"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K215 ["#5A95DF"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K168 ["ExplorerSelected"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K199 ["#3C64FA"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K169 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K216 ["#333B4C"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K170 ["RDLSemanticColorActionSecondary"]
  LOADK R14 K206 [0.92]
  SETTABLEKS R14 R13 K171 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K216 ["#333B4C"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K172 ["RDLSemanticColorComponentInputFill"]
  LOADK R14 K206 [0.92]
  SETTABLEKS R14 R13 K173 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K217 ["#494D5A"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K174 ["RDLSemanticColorContentDefault"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K203 ["#BBBCBE"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K175 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K218 ["#202227"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K176 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K202 ["#696A6D"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K177 ["RDLSemanticColorContentMuted"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K208 ["#111216"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K178 ["RDLSemanticColorContentStandard"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K219 ["#1B254B"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K179 ["RDLSemanticColorShift300"]
  LOADK R14 K201 [0.88]
  SETTABLEKS R14 R13 K180 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K216 ["#333B4C"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K181 ["RDLSemanticColorStatesHover"]
  LOADK R14 K206 [0.92]
  SETTABLEKS R14 R13 K182 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K219 ["#1B254B"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K183 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R14 K207 [0.84]
  SETTABLEKS R14 R13 K184 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K220 ["#F2F2F3"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K185 ["RDLSemanticColorSurface0"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K210 ["#FFFFFF"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K186 ["RDLSemanticColorSurface100"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K213 ["#000000"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K187 ["RDLSemanticColorSurfaceOutline"]
  LOADK R14 K201 [0.88]
  SETTABLEKS R14 R13 K188 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R14 K193 [Color3.fromHex]
  LOADK R15 K211 ["#335FFF"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K189 ["RDLSemanticColorSystemEmphasis"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["Light"]
  RETURN R9 1
