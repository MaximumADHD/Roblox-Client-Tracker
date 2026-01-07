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
  GETTABLEKS R7 R8 K14 ["getFFlagExplorerFoundation"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K11 ["Flags"]
  GETTABLEKS R8 R9 K15 ["getFFlagExplorerStreaming"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K11 ["Flags"]
  GETTABLEKS R9 R10 K16 ["getFFlagExplorerUseBuilderSans"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K11 ["Flags"]
  GETTABLEKS R10 R11 K17 ["getFFlagLuaExplorerUseRDLColors"]
  CALL R9 1 1
  GETTABLEKS R11 R2 K18 ["Styling"]
  GETTABLEKS R10 R11 K19 ["createStyleRule"]
  DUPTABLE R11 K23 [{"Base", "Dark", "Light"}]
  GETTABLEKS R13 R2 K18 ["Styling"]
  GETTABLEKS R12 R13 K24 ["createStyleSheet"]
  LOADK R13 K2 ["Explorer"]
  NEWTABLE R14 0 35
  MOVE R15 R10
  LOADK R16 K25 [".Explorer-BG-Surface0"]
  DUPTABLE R17 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K29 ["$RDLSemanticColorSurface0"]
  SETTABLEKS R18 R17 K26 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K27 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R10
  LOADK R17 K30 [".Explorer-BG-Surface100"]
  DUPTABLE R18 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  MOVE R20 R9
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADK R19 K31 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R19 K32 ["$LegacyMainBackground"]
  SETTABLEKS R19 R18 K26 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K27 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R10
  LOADK R18 K33 [".Explorer-BG-Shift300"]
  DUPTABLE R19 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K34 ["$RDLSemanticColorShift300"]
  SETTABLEKS R20 R19 K26 ["BackgroundColor3"]
  LOADK R20 K35 ["$RDLSemanticColorShift300Transparency"]
  SETTABLEKS R20 R19 K27 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R10
  LOADK R19 K36 [".Explorer-BG-Action-Soft-Emphasis"]
  DUPTABLE R20 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R21 K37 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R21 R20 K26 ["BackgroundColor3"]
  LOADK R21 K38 [0.6]
  SETTABLEKS R21 R20 K27 ["BackgroundTransparency"]
  CALL R18 2 1
  MOVE R19 R10
  LOADK R20 K39 [".Explorer-BG-SystemEmphasis"]
  DUPTABLE R21 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K37 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R22 R21 K26 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K27 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R10
  LOADK R21 K40 [".Explorer-BG-Input"]
  DUPTABLE R22 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K41 ["$RDLSemanticColorComponentInputFill"]
  SETTABLEKS R23 R22 K26 ["BackgroundColor3"]
  LOADK R23 K42 ["$RDLSemanticColorComponentInputFillTransparency"]
  SETTABLEKS R23 R22 K27 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R10
  LOADK R22 K43 [".Explorer-BG-Hover"]
  DUPTABLE R23 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K44 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R24 R23 K26 ["BackgroundColor3"]
  LOADK R24 K45 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R24 R23 K27 ["BackgroundTransparency"]
  CALL R21 2 1
  MOVE R22 R10
  LOADK R23 K46 [".Explorer-Border-SystemEmphasis"]
  DUPTABLE R24 K48 [{"BorderColor3"}]
  LOADK R25 K37 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R25 R24 K47 ["BorderColor3"]
  CALL R22 2 1
  MOVE R23 R10
  LOADK R24 K49 [".Explorer-Button"]
  DUPTABLE R25 K52 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
  LOADB R26 0
  SETTABLEKS R26 R25 K50 ["AutoButtonColor"]
  LOADN R26 1
  SETTABLEKS R26 R25 K27 ["BackgroundTransparency"]
  LOADK R26 K53 [""]
  SETTABLEKS R26 R25 K51 ["Text"]
  CALL R23 2 1
  MOVE R24 R10
  LOADK R25 K54 [".Explorer-GrowX"]
  DUPTABLE R26 K56 [{"Size"}]
  GETIMPORT R27 K59 [UDim2.fromScale]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  NEWTABLE R27 0 1
  MOVE R28 R10
  LOADK R29 K60 ["::UIFlexItem"]
  DUPTABLE R30 K62 [{"FlexMode"}]
  GETIMPORT R31 K66 [Enum.UIFlexMode.Grow]
  SETTABLEKS R31 R30 K61 ["FlexMode"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R10
  LOADK R26 K67 [".Explorer-ShrinkX"]
  DUPTABLE R27 K69 [{"AutomaticSize"}]
  GETIMPORT R28 K71 [Enum.AutomaticSize.X]
  SETTABLEKS R28 R27 K68 ["AutomaticSize"]
  NEWTABLE R28 0 1
  MOVE R29 R10
  LOADK R30 K60 ["::UIFlexItem"]
  DUPTABLE R31 K62 [{"FlexMode"}]
  GETIMPORT R32 K73 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R32 R31 K61 ["FlexMode"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R10
  LOADK R27 K74 [".Explorer-FillX"]
  DUPTABLE R28 K56 [{"Size"}]
  GETIMPORT R29 K59 [UDim2.fromScale]
  LOADN R30 0
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K55 ["Size"]
  NEWTABLE R29 0 1
  MOVE R30 R10
  LOADK R31 K60 ["::UIFlexItem"]
  DUPTABLE R32 K62 [{"FlexMode"}]
  GETIMPORT R33 K76 [Enum.UIFlexMode.Fill]
  SETTABLEKS R33 R32 K61 ["FlexMode"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R10
  LOADK R28 K77 [".Explorer-SidePadS ::UIPadding"]
  DUPTABLE R29 K80 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R30 K83 [UDim.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K78 ["PaddingLeft"]
  GETIMPORT R30 K83 [UDim.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K79 ["PaddingRight"]
  CALL R27 2 1
  MOVE R28 R10
  LOADK R29 K84 [".Explorer-Content-Default"]
  DUPTABLE R30 K87 [{"ImageColor3", "TextColor3"}]
  LOADK R31 K88 ["$ExplorerContentDefault"]
  SETTABLEKS R31 R30 K85 ["ImageColor3"]
  LOADK R31 K88 ["$ExplorerContentDefault"]
  SETTABLEKS R31 R30 K86 ["TextColor3"]
  CALL R28 2 1
  MOVE R29 R10
  LOADK R30 K89 [".Explorer-Content-Disabled"]
  DUPTABLE R31 K91 [{"ImageTransparency", "TextColor3", "ImageColor3"}]
  LOADK R32 K92 [0.62]
  SETTABLEKS R32 R31 K90 ["ImageTransparency"]
  LOADK R32 K93 ["$RDLSemanticColorContentDisabled"]
  SETTABLEKS R32 R31 K86 ["TextColor3"]
  MOVE R33 R4
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  LOADK R32 K93 ["$RDLSemanticColorContentDisabled"]
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K85 ["ImageColor3"]
  CALL R29 2 1
  MOVE R30 R10
  LOADK R31 K94 [".Explorer-Content-Emphasis"]
  DUPTABLE R32 K87 [{"ImageColor3", "TextColor3"}]
  LOADK R33 K95 ["$ExplorerContentEmphasis"]
  SETTABLEKS R33 R32 K85 ["ImageColor3"]
  LOADK R33 K95 ["$ExplorerContentEmphasis"]
  SETTABLEKS R33 R32 K86 ["TextColor3"]
  CALL R30 2 1
  SETLIST R14 R15 16 [1]
  MOVE R15 R10
  LOADK R16 K96 [".Explorer-Content-Muted"]
  DUPTABLE R17 K87 [{"ImageColor3", "TextColor3"}]
  LOADK R18 K97 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R18 R17 K85 ["ImageColor3"]
  LOADK R18 K97 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R18 R17 K86 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R10
  LOADK R17 K98 [".Explorer-BG-PrimaryBrandFill"]
  DUPTABLE R18 K99 [{"BackgroundColor3"}]
  LOADK R19 K100 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R19 R18 K26 ["BackgroundColor3"]
  CALL R16 2 1
  MOVE R17 R10
  LOADK R18 K101 [".Explorer-Content-PrimaryBrandFill"]
  DUPTABLE R19 K87 [{"ImageColor3", "TextColor3"}]
  LOADK R20 K100 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R20 R19 K85 ["ImageColor3"]
  LOADK R20 K100 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R20 R19 K86 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R10
  LOADK R19 K102 [".Explorer-Content-Standard"]
  DUPTABLE R20 K87 [{"ImageColor3", "TextColor3"}]
  LOADK R21 K103 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R21 R20 K85 ["ImageColor3"]
  LOADK R21 K103 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R21 R20 K86 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R10
  LOADK R20 K104 [".Explorer-Content-Surface-Outline"]
  DUPTABLE R21 K105 [{"ImageColor3", "ImageTransparency"}]
  LOADK R22 K106 ["$RDLSemanticColorSurfaceOutline"]
  SETTABLEKS R22 R21 K85 ["ImageColor3"]
  LOADK R22 K107 ["$RDLSemanticColorSurfaceOutlineTransparency"]
  SETTABLEKS R22 R21 K90 ["ImageTransparency"]
  CALL R19 2 1
  MOVE R20 R10
  LOADK R21 K108 [".DEPRECATED_Explorer-Text-Size-14"]
  DUPTABLE R22 K110 [{"TextSize"}]
  MOVE R24 R5
  CALL R24 0 1
  JUMPIFNOT R24 [+2]
  LOADN R23 17
  JUMP [+1]
  LOADK R23 K111 [17.598]
  SETTABLEKS R23 R22 K109 ["TextSize"]
  CALL R20 2 1
  MOVE R21 R10
  LOADK R22 K112 [".Explorer-View"]
  DUPTABLE R23 K113 [{"BackgroundTransparency", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K27 ["BackgroundTransparency"]
  GETIMPORT R24 K59 [UDim2.fromScale]
  LOADN R25 1
  LOADN R26 1
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["Size"]
  CALL R21 2 1
  MOVE R22 R10
  LOADK R23 K114 [".Explorer-ScrollingFrame"]
  DUPTABLE R24 K120 [{"BorderColor3", "BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
  MOVE R26 R9
  CALL R26 0 1
  JUMPIFNOT R26 [+2]
  LOADK R25 K31 ["$RDLSemanticColorSurface100"]
  JUMP [+1]
  LOADK R25 K32 ["$LegacyMainBackground"]
  SETTABLEKS R25 R24 K47 ["BorderColor3"]
  GETTABLEKS R25 R3 K121 ["standard"]
  LOADK R26 K122 ["scrollBottom"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K115 ["BottomImage"]
  GETTABLEKS R25 R3 K121 ["standard"]
  LOADK R26 K123 ["scrollMid"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K116 ["MidImage"]
  GETTABLEKS R25 R3 K121 ["standard"]
  LOADK R26 K124 ["scrollTop"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K117 ["TopImage"]
  LOADK R25 K125 ["$ExplorerScrollBar"]
  SETTABLEKS R25 R24 K118 ["ScrollBarImageColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K119 ["ScrollBarImageTransparency"]
  CALL R22 2 1
  MOVE R23 R10
  LOADK R24 K126 [".Explorer-Square ::UIAspectRatioConstraint"]
  DUPTABLE R25 K128 [{"AspectRatio"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K127 ["AspectRatio"]
  CALL R23 2 1
  MOVE R24 R10
  LOADK R25 K129 [".Explorer-Icon"]
  DUPTABLE R26 K113 [{"BackgroundTransparency", "Size"}]
  LOADN R27 1
  SETTABLEKS R27 R26 K27 ["BackgroundTransparency"]
  GETIMPORT R27 K131 [UDim2.fromOffset]
  LOADN R28 16
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  CALL R24 2 1
  MOVE R25 R10
  LOADK R26 K132 [".Explorer-Radius-Small ::UICorner"]
  DUPTABLE R27 K134 [{"CornerRadius"}]
  GETIMPORT R28 K83 [UDim.new]
  LOADN R29 0
  LOADN R30 4
  CALL R28 2 1
  SETTABLEKS R28 R27 K133 ["CornerRadius"]
  CALL R25 2 1
  MOVE R26 R10
  LOADK R27 K135 [">> .DEPRECATED_Explorer-StandardText"]
  DUPTABLE R28 K137 [{"Font", "TextColor3", "TextSize"}]
  GETTABLEKS R29 R1 K138 ["defaultFont"]
  SETTABLEKS R29 R28 K136 ["Font"]
  LOADK R29 K103 ["$RDLSemanticColorContentStandard"]
  SETTABLEKS R29 R28 K86 ["TextColor3"]
  GETTABLEKS R29 R1 K139 ["standardTextSize"]
  SETTABLEKS R29 R28 K109 ["TextSize"]
  CALL R26 2 1
  MOVE R27 R10
  LOADK R28 K140 [".Explorer-Stroke-Standard"]
  DUPTABLE R29 K142 [{"BorderSizePixel"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K141 ["BorderSizePixel"]
  NEWTABLE R30 0 1
  MOVE R31 R10
  LOADK R32 K143 ["::UIStroke"]
  DUPTABLE R33 K145 [{"Thickness"}]
  LOADN R34 1
  SETTABLEKS R34 R33 K144 ["Thickness"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R10
  LOADK R29 K146 [".Explorer-Stroke-Thick"]
  DUPTABLE R30 K142 [{"BorderSizePixel"}]
  LOADN R31 0
  SETTABLEKS R31 R30 K141 ["BorderSizePixel"]
  NEWTABLE R31 0 1
  MOVE R32 R10
  LOADK R33 K143 ["::UIStroke"]
  DUPTABLE R34 K145 [{"Thickness"}]
  LOADK R35 K147 [1.5]
  SETTABLEKS R35 R34 K144 ["Thickness"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R10
  LOADK R30 K148 [".Explorer-Stroke-Emphasis ::UIStroke"]
  DUPTABLE R31 K151 [{"Color", "Transparency"}]
  LOADK R32 K152 ["$RDLSemanticColorStrokeEmphasis"]
  SETTABLEKS R32 R31 K149 ["Color"]
  LOADK R32 K153 ["$RDLSemanticColorStrokeEmphasisTransparency"]
  SETTABLEKS R32 R31 K150 ["Transparency"]
  CALL R29 2 1
  MOVE R30 R10
  LOADK R31 K154 [".Explorer-Stroke-System-Emphasis ::UIStroke"]
  DUPTABLE R32 K155 [{"Color"}]
  LOADK R33 K37 ["$RDLSemanticColorSystemEmphasis"]
  SETTABLEKS R33 R32 K149 ["Color"]
  CALL R30 2 1
  SETLIST R14 R15 16 [17]
  MOVE R16 R7
  CALL R16 0 1
  JUMPIFNOT R16 [+42]
  MOVE R15 R10
  LOADK R16 K156 [".Explorer-Selection-Background"]
  DUPTABLE R17 K157 [{"BackgroundTransparency"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K27 ["BackgroundTransparency"]
  NEWTABLE R18 0 3
  MOVE R19 R10
  LOADK R20 K158 [".Explorer-HoveredKind-Hovered"]
  DUPTABLE R21 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K44 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R22 R21 K26 ["BackgroundColor3"]
  LOADK R22 K45 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R22 R21 K27 ["BackgroundTransparency"]
  CALL R19 2 1
  MOVE R20 R10
  LOADK R21 K159 [".Explorer-SelectionKind-Selected"]
  DUPTABLE R22 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K160 ["$ExplorerSelected"]
  SETTABLEKS R23 R22 K26 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K27 ["BackgroundTransparency"]
  CALL R20 2 1
  MOVE R21 R10
  LOADK R22 K161 [".Explorer-SelectionKind-ParentSelected"]
  DUPTABLE R23 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R24 K160 ["$ExplorerSelected"]
  SETTABLEKS R24 R23 K26 ["BackgroundColor3"]
  LOADK R24 K162 [0.8]
  SETTABLEKS R24 R23 K27 ["BackgroundTransparency"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  JUMP [+1]
  LOADNIL R15
  MOVE R16 R10
  LOADK R17 K163 ["TextLabel"]
  DUPTABLE R18 K164 [{"Font", "TextSize"}]
  MOVE R20 R8
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R1 K138 ["defaultFont"]
  JUMP [+2]
  GETIMPORT R19 K166 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K136 ["Font"]
  MOVE R20 R8
  CALL R20 0 1
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R1 K139 ["standardTextSize"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K109 ["TextSize"]
  CALL R16 2 1
  MOVE R17 R10
  LOADK R18 K167 ["TextBox"]
  DUPTABLE R19 K164 [{"Font", "TextSize"}]
  MOVE R21 R8
  CALL R21 0 1
  JUMPIFNOT R21 [+3]
  GETTABLEKS R20 R1 K138 ["defaultFont"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K136 ["Font"]
  MOVE R21 R8
  CALL R21 0 1
  JUMPIFNOT R21 [+3]
  GETTABLEKS R20 R1 K139 ["standardTextSize"]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K109 ["TextSize"]
  CALL R17 2 -1
  SETLIST R14 R15 -1 [33]
  NEWTABLE R15 0 0
  CALL R12 3 1
  SETTABLEKS R12 R11 K20 ["Base"]
  MOVE R13 R6
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  LOADNIL R12
  JUMP [+147]
  GETTABLEKS R13 R2 K18 ["Styling"]
  GETTABLEKS R12 R13 K24 ["createStyleSheet"]
  LOADK R13 K168 ["ExplorerDark"]
  NEWTABLE R14 0 0
  DUPTABLE R15 K195 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K199 ["#2E2E2E"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K169 ["LegacyMainBackground"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K200 ["#D5D7DD"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K170 ["ExplorerContentDefault"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K201 ["#EEEFF1"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K171 ["ExplorerContentEmphasis"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K202 ["#747476"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K172 ["ExplorerScrollBar"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K203 ["#005CB5"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K173 ["ExplorerSelected"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K204 ["#3C64FA"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K174 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K205 ["#BBC2D1"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K175 ["RDLSemanticColorActionSecondary"]
  LOADK R16 K206 [0.88]
  SETTABLEKS R16 R15 K176 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K205 ["#BBC2D1"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K177 ["RDLSemanticColorComponentInputFill"]
  LOADK R16 K206 [0.88]
  SETTABLEKS R16 R15 K178 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K200 ["#D5D7DD"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K179 ["RDLSemanticColorContentDefault"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K207 ["#696A6D"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K180 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K201 ["#EEEFF1"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K181 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K208 ["#BBBCBE"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K182 ["RDLSemanticColorContentMuted"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K209 ["#F9F9F9"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K183 ["RDLSemanticColorContentStandard"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K210 ["#D0D9FB"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K184 ["RDLSemanticColorShift300"]
  LOADK R16 K206 [0.88]
  SETTABLEKS R16 R15 K185 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K205 ["#BBC2D1"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K186 ["RDLSemanticColorStatesHover"]
  LOADK R16 K211 [0.92]
  SETTABLEKS R16 R15 K187 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K210 ["#D0D9FB"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K188 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R16 K212 [0.84]
  SETTABLEKS R16 R15 K189 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K213 ["#111216"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K190 ["RDLSemanticColorSurface0"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K214 ["#1F2024"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K191 ["RDLSemanticColorSurface100"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K215 ["#FFFFFF"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K192 ["RDLSemanticColorSurfaceOutline"]
  LOADK R16 K206 [0.88]
  SETTABLEKS R16 R15 K193 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K216 ["#335FFF"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K194 ["RDLSemanticColorSystemEmphasis"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K21 ["Dark"]
  MOVE R13 R6
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  LOADNIL R12
  JUMP [+147]
  GETTABLEKS R13 R2 K18 ["Styling"]
  GETTABLEKS R12 R13 K24 ["createStyleSheet"]
  LOADK R13 K217 ["ExplorerLight"]
  NEWTABLE R14 0 0
  DUPTABLE R15 K195 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K215 ["#FFFFFF"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K169 ["LegacyMainBackground"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K218 ["#000000"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K170 ["ExplorerContentDefault"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K215 ["#FFFFFF"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K171 ["ExplorerContentEmphasis"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K219 ["#949496"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K172 ["ExplorerScrollBar"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K220 ["#5A95DF"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K173 ["ExplorerSelected"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K204 ["#3C64FA"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K174 ["RDLSemanticColorActionPrimaryBrandFill"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K221 ["#333B4C"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K175 ["RDLSemanticColorActionSecondary"]
  LOADK R16 K211 [0.92]
  SETTABLEKS R16 R15 K176 ["RDLSemanticColorActionSecondaryTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K221 ["#333B4C"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K177 ["RDLSemanticColorComponentInputFill"]
  LOADK R16 K211 [0.92]
  SETTABLEKS R16 R15 K178 ["RDLSemanticColorComponentInputFillTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K222 ["#494D5A"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K179 ["RDLSemanticColorContentDefault"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K208 ["#BBBCBE"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K180 ["RDLSemanticColorContentDisabled"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K223 ["#202227"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K181 ["RDLSemanticColorContentEmphasis"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K207 ["#696A6D"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K182 ["RDLSemanticColorContentMuted"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K213 ["#111216"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K183 ["RDLSemanticColorContentStandard"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K224 ["#1B254B"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K184 ["RDLSemanticColorShift300"]
  LOADK R16 K206 [0.88]
  SETTABLEKS R16 R15 K185 ["RDLSemanticColorShift300Transparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K221 ["#333B4C"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K186 ["RDLSemanticColorStatesHover"]
  LOADK R16 K211 [0.92]
  SETTABLEKS R16 R15 K187 ["RDLSemanticColorStatesHoverTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K224 ["#1B254B"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K188 ["RDLSemanticColorStrokeEmphasis"]
  LOADK R16 K212 [0.84]
  SETTABLEKS R16 R15 K189 ["RDLSemanticColorStrokeEmphasisTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K225 ["#F2F2F3"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K190 ["RDLSemanticColorSurface0"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K215 ["#FFFFFF"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K191 ["RDLSemanticColorSurface100"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K218 ["#000000"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K192 ["RDLSemanticColorSurfaceOutline"]
  LOADK R16 K206 [0.88]
  SETTABLEKS R16 R15 K193 ["RDLSemanticColorSurfaceOutlineTransparency"]
  GETIMPORT R16 K198 [Color3.fromHex]
  LOADK R17 K216 ["#335FFF"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K194 ["RDLSemanticColorSystemEmphasis"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["Light"]
  RETURN R11 1
