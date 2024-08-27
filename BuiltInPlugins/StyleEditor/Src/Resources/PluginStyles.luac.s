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
  GETIMPORT R4 K11 [game]
  LOADK R6 K12 ["ImprovedCursors"]
  NAMECALL R4 R4 K13 ["GetFastFlag"]
  CALL R4 2 1
  DUPTABLE R5 K29 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "SearchBarHeight", "Spacing", "TitleTextSize", "TokenTooltipRowHeight", "TooltipMaxWidth", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K14 ["BorderSize"]
  LOADN R6 36
  SETTABLEKS R6 R5 K15 ["ButtonHeight"]
  GETIMPORT R6 K32 [UDim2.fromOffset]
  LOADN R7 16
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["Icon16"]
  GETIMPORT R6 K32 [UDim2.fromOffset]
  LOADN R7 22
  LOADN R8 22
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["Icon22"]
  LOADN R6 5
  SETTABLEKS R6 R5 K18 ["PaddingSm"]
  LOADN R6 10
  SETTABLEKS R6 R5 K19 ["Padding"]
  GETIMPORT R6 K34 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K20 ["PropertyCellSize"]
  LOADN R6 32
  SETTABLEKS R6 R5 K21 ["SearchBarHeight"]
  LOADN R6 10
  SETTABLEKS R6 R5 K22 ["Spacing"]
  LOADN R6 24
  SETTABLEKS R6 R5 K23 ["TitleTextSize"]
  LOADN R6 20
  SETTABLEKS R6 R5 K24 ["TokenTooltipRowHeight"]
  LOADN R6 94
  SETTABLEKS R6 R5 K25 ["TooltipMaxWidth"]
  GETIMPORT R6 K37 [Color3.fromRGB]
  LOADN R7 252
  LOADN R8 116
  LOADN R9 116
  CALL R6 3 1
  SETTABLEKS R6 R5 K26 ["ColorKeypoint"]
  GETIMPORT R6 K37 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLEKS R6 R5 K27 ["ColorKeypointSelected"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K38 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R6 K39 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R6 R5 K28 ["CursorOpenedHand"]
  MOVE R6 R3
  LOADK R7 K40 ["StyleEditor"]
  NEWTABLE R8 0 25
  MOVE R9 R2
  LOADK R10 K41 [".Icon16"]
  DUPTABLE R11 K43 [{"Size"}]
  LOADK R12 K44 ["$Icon16"]
  SETTABLEKS R12 R11 K42 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K45 [".Icon22"]
  DUPTABLE R12 K43 [{"Size"}]
  LOADK R13 K46 ["$Icon22"]
  SETTABLEKS R13 R12 K42 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K47 [".ItemTextSize"]
  DUPTABLE R13 K49 [{"TextSize"}]
  LOADN R14 18
  SETTABLEKS R14 R13 K48 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K50 [".PositionCenter"]
  DUPTABLE R14 K53 [{"AnchorPoint", "Position"}]
  GETIMPORT R15 K55 [Vector2.new]
  LOADK R16 K56 [0.5]
  LOADK R17 K56 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K51 ["AnchorPoint"]
  GETIMPORT R15 K58 [UDim2.fromScale]
  LOADK R16 K56 [0.5]
  LOADK R17 K56 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["Position"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K59 [".PositionRight"]
  DUPTABLE R15 K53 [{"AnchorPoint", "Position"}]
  GETIMPORT R16 K55 [Vector2.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K51 ["AnchorPoint"]
  GETIMPORT R16 K58 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K52 ["Position"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K60 [".PropertyCellSize"]
  DUPTABLE R16 K43 [{"Size"}]
  LOADK R17 K61 ["$PropertyCellSize"]
  SETTABLEKS R17 R16 K42 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K62 [".ScrollingAutomaticSize"]
  DUPTABLE R17 K65 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R18 K69 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K63 ["AutomaticCanvasSize"]
  GETIMPORT R18 K58 [UDim2.fromScale]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K64 ["CanvasSize"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K70 [".TextXAlignLeft"]
  DUPTABLE R18 K72 [{"TextXAlignment"}]
  GETIMPORT R19 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K71 ["TextXAlignment"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K75 [".SearchInput"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K76 [">> UIStroke"]
  DUPTABLE R23 K78 [{"Thickness"}]
  LOADN R24 0
  SETTABLEKS R24 R23 K77 ["Thickness"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K79 [">> UICorner"]
  DUPTABLE R24 K81 [{"CornerRadius"}]
  GETIMPORT R25 K83 [UDim.new]
  CALL R25 0 1
  SETTABLEKS R25 R24 K80 ["CornerRadius"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K84 [".LeftItems"]
  DUPTABLE R20 K87 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K85 ["BackgroundTransparency"]
  LOADK R21 K88 ["$BackgroundPaper"]
  SETTABLEKS R21 R20 K86 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K89 [".TokenSource"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K90 ["::UIPadding"]
  DUPTABLE R25 K92 [{"PaddingLeft"}]
  GETIMPORT R26 K83 [UDim.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K91 ["PaddingLeft"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K93 [">> .TokenSourceIcon"]
  DUPTABLE R26 K43 [{"Size"}]
  GETIMPORT R27 K32 [UDim2.fromOffset]
  LOADN R28 20
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K42 ["Size"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K94 [".PreviewGrid"]
  DUPTABLE R22 K97 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K85 ["BackgroundTransparency"]
  GETIMPORT R23 K99 [Enum.ScaleType.Tile]
  SETTABLEKS R23 R22 K95 ["ScaleType"]
  GETIMPORT R23 K32 [UDim2.fromOffset]
  LOADN R24 20
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K96 ["TileSize"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K100 [".OnboardingPage"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 4
  MOVE R25 R2
  LOADK R26 K101 [":: UISizeConstraint"]
  DUPTABLE R27 K104 [{"MaxSize", "MinSize"}]
  GETIMPORT R28 K55 [Vector2.new]
  LOADN R29 144
  LOADN R30 144
  CALL R28 2 1
  SETTABLEKS R28 R27 K102 ["MaxSize"]
  GETIMPORT R28 K55 [Vector2.new]
  LOADN R29 180
  LOADN R30 180
  CALL R28 2 1
  SETTABLEKS R28 R27 K103 ["MinSize"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K105 ["> #StylingImage"]
  DUPTABLE R28 K43 [{"Size"}]
  GETIMPORT R29 K32 [UDim2.fromOffset]
  LOADN R30 144
  LOADN R31 180
  CALL R29 2 1
  SETTABLEKS R29 R28 K42 ["Size"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K106 [":: UIAspectRatioConstraint"]
  DUPTABLE R32 K109 [{"AspectRatio", "AspectType"}]
  LOADK R33 K110 [3.75]
  SETTABLEKS R33 R32 K107 ["AspectRatio"]
  GETIMPORT R33 K112 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R33 R32 K108 ["AspectType"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K113 ["> #Description"]
  DUPTABLE R29 K115 [{"TextSize", "TextWrapped"}]
  LOADN R30 16
  SETTABLEKS R30 R29 K48 ["TextSize"]
  LOADB R30 1
  SETTABLEKS R30 R29 K114 ["TextWrapped"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K116 ["> #ButtonContainer"]
  DUPTABLE R30 K43 [{"Size"}]
  GETIMPORT R31 K34 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  LOADN R35 90
  CALL R31 4 1
  SETTABLEKS R31 R30 K42 ["Size"]
  NEWTABLE R31 0 3
  MOVE R32 R2
  LOADK R33 K117 [":: UIPadding"]
  DUPTABLE R34 K119 [{"PaddingTop"}]
  GETIMPORT R35 K83 [UDim.new]
  LOADN R36 0
  LOADN R37 16
  CALL R35 2 1
  SETTABLEKS R35 R34 K118 ["PaddingTop"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K120 ["> #Link"]
  DUPTABLE R35 K121 [{"AnchorPoint"}]
  GETIMPORT R36 K55 [Vector2.new]
  LOADN R37 0
  LOADK R38 K56 [0.5]
  CALL R36 2 1
  SETTABLEKS R36 R35 K51 ["AnchorPoint"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K122 ["> #BlankButton"]
  DUPTABLE R36 K121 [{"AnchorPoint"}]
  GETIMPORT R37 K55 [Vector2.new]
  LOADN R38 1
  LOADK R39 K56 [0.5]
  CALL R37 2 1
  SETTABLEKS R37 R36 K51 ["AnchorPoint"]
  CALL R34 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K123 [".FontStyle"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 2
  MOVE R26 R2
  LOADK R27 K124 ["Frame"]
  DUPTABLE R28 K125 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  LOADK R29 K126 ["$ActionActivated"]
  SETTABLEKS R29 R28 K86 ["BackgroundColor3"]
  LOADN R29 0
  SETTABLEKS R29 R28 K85 ["BackgroundTransparency"]
  GETIMPORT R29 K32 [UDim2.fromOffset]
  LOADN R30 24
  LOADN R31 24
  CALL R29 2 1
  SETTABLEKS R29 R28 K42 ["Size"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K127 [":hover"]
  DUPTABLE R32 K128 [{"BackgroundColor3"}]
  LOADK R33 K129 ["$ActionHover"]
  SETTABLEKS R33 R32 K86 ["BackgroundColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K130 [".Selected"]
  DUPTABLE R33 K128 [{"BackgroundColor3"}]
  LOADK R34 K131 ["$ActionEnabled"]
  SETTABLEKS R34 R33 K86 ["BackgroundColor3"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K132 ["TextButton"]
  DUPTABLE R29 K135 [{"BackgroundTransparency", "RichText", "TextColor3"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K85 ["BackgroundTransparency"]
  LOADB R30 1
  SETTABLEKS R30 R29 K133 ["RichText"]
  LOADK R30 K136 ["$TextSecondary"]
  SETTABLEKS R30 R29 K134 ["TextColor3"]
  NEWTABLE R30 0 5
  MOVE R31 R2
  LOADK R32 K127 [":hover"]
  DUPTABLE R33 K137 [{"TextColor3"}]
  LOADK R34 K138 ["$TextContrast"]
  SETTABLEKS R34 R33 K134 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K139 [":pressed"]
  DUPTABLE R34 K137 [{"TextColor3"}]
  LOADK R35 K138 ["$TextContrast"]
  SETTABLEKS R35 R34 K134 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K130 [".Selected"]
  DUPTABLE R35 K137 [{"TextColor3"}]
  LOADK R36 K140 ["$TextDisabled"]
  SETTABLEKS R36 R35 K134 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K141 ["#BoldButton"]
  DUPTABLE R36 K143 [{"Text"}]
  LOADK R37 K144 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
  SETTABLEKS R37 R36 K142 ["Text"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K145 ["#ItalicButton"]
  DUPTABLE R37 K143 [{"Text"}]
  LOADK R38 K146 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
  SETTABLEKS R38 R37 K142 ["Text"]
  CALL R35 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K147 [".SequenceKeypoint"]
  DUPTABLE R25 K149 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
  GETIMPORT R26 K55 [Vector2.new]
  LOADK R27 K56 [0.5]
  LOADK R28 K56 [0.5]
  CALL R26 2 1
  SETTABLEKS R26 R25 K51 ["AnchorPoint"]
  LOADK R26 K150 ["$ColorKeypoint"]
  SETTABLEKS R26 R25 K86 ["BackgroundColor3"]
  LOADN R26 0
  SETTABLEKS R26 R25 K85 ["BackgroundTransparency"]
  LOADK R26 K151 [""]
  SETTABLEKS R26 R25 K142 ["Text"]
  LOADN R26 3
  SETTABLEKS R26 R25 K148 ["ZIndex"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K130 [".Selected"]
  DUPTABLE R29 K128 [{"BackgroundColor3"}]
  LOADK R30 K152 ["$ColorKeypointSelected"]
  SETTABLEKS R30 R29 K86 ["BackgroundColor3"]
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K153 ["::UIStroke"]
  DUPTABLE R33 K157 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R34 K159 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R34 R33 K154 ["ApplyStrokeMode"]
  GETIMPORT R34 K37 [Color3.fromRGB]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  CALL R34 3 1
  SETTABLEKS R34 R33 K155 ["Color"]
  LOADN R34 2
  SETTABLEKS R34 R33 K77 ["Thickness"]
  LOADK R34 K160 [0.6]
  SETTABLEKS R34 R33 K156 ["Transparency"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K161 [".NumberSequenceKeypoint"]
  DUPTABLE R26 K43 [{"Size"}]
  GETIMPORT R27 K32 [UDim2.fromOffset]
  LOADN R28 8
  LOADN R29 8
  CALL R27 2 1
  SETTABLEKS R27 R26 K42 ["Size"]
  CALL R24 2 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K162 [".NumberSequenceLine"]
  DUPTABLE R11 K164 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K163 ["BorderSizePixel"]
  LOADN R12 2
  SETTABLEKS R12 R11 K148 ["ZIndex"]
  LOADK R12 K160 [0.6]
  SETTABLEKS R12 R11 K85 ["BackgroundTransparency"]
  LOADK R12 K150 ["$ColorKeypoint"]
  SETTABLEKS R12 R11 K86 ["BackgroundColor3"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K165 [".SelectedStart"]
  DUPTABLE R15 K128 [{"BackgroundColor3"}]
  GETIMPORT R16 K37 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  CALL R16 3 1
  SETTABLEKS R16 R15 K86 ["BackgroundColor3"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K166 ["::UIGradient"]
  DUPTABLE R19 K167 [{"Color"}]
  GETIMPORT R20 K169 [ColorSequence.new]
  GETTABLEKS R21 R5 K27 ["ColorKeypointSelected"]
  GETTABLEKS R22 R5 K26 ["ColorKeypoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K155 ["Color"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K170 [".SelectedEnd"]
  DUPTABLE R16 K128 [{"BackgroundColor3"}]
  GETIMPORT R17 K37 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 255
  LOADN R20 255
  CALL R17 3 1
  SETTABLEKS R17 R16 K86 ["BackgroundColor3"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K166 ["::UIGradient"]
  DUPTABLE R20 K167 [{"Color"}]
  GETIMPORT R21 K169 [ColorSequence.new]
  GETTABLEKS R22 R5 K26 ["ColorKeypoint"]
  GETTABLEKS R23 R5 K27 ["ColorKeypointSelected"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K155 ["Color"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K171 [".ColorSequenceKeypoint"]
  DUPTABLE R12 K43 [{"Size"}]
  GETIMPORT R13 K32 [UDim2.fromOffset]
  LOADN R14 8
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K42 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K172 [".ColorSequenceLine"]
  DUPTABLE R13 K174 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
  GETIMPORT R14 K55 [Vector2.new]
  LOADK R15 K56 [0.5]
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K51 ["AnchorPoint"]
  GETIMPORT R14 K37 [Color3.fromRGB]
  LOADN R15 255
  LOADN R16 255
  LOADN R17 255
  CALL R14 3 1
  SETTABLEKS R14 R13 K86 ["BackgroundColor3"]
  LOADK R14 K175 [0.7]
  SETTABLEKS R14 R13 K85 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K173 ["BorderPixelSize"]
  GETIMPORT R14 K34 [UDim2.new]
  LOADN R15 0
  LOADN R16 2
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K42 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K148 ["ZIndex"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K130 [".Selected"]
  DUPTABLE R17 K176 [{"BackgroundTransparency"}]
  LOADK R18 K177 [0.4]
  SETTABLEKS R18 R17 K85 ["BackgroundTransparency"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K153 ["::UIStroke"]
  DUPTABLE R21 K178 [{"Color", "Thickness", "Transparency"}]
  GETIMPORT R22 K37 [Color3.fromRGB]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  CALL R22 3 1
  SETTABLEKS R22 R21 K155 ["Color"]
  LOADN R22 2
  SETTABLEKS R22 R21 K77 ["Thickness"]
  LOADK R22 K179 [0.75]
  SETTABLEKS R22 R21 K156 ["Transparency"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K180 [".SequencePreviewButton"]
  DUPTABLE R14 K181 [{"Size", "BackgroundColor3"}]
  GETIMPORT R15 K32 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["Size"]
  GETIMPORT R15 K182 [Color3.new]
  LOADN R16 1
  LOADN R17 1
  LOADN R18 1
  CALL R15 3 1
  SETTABLEKS R15 R14 K86 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K183 [".LabelCell"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K90 ["::UIPadding"]
  DUPTABLE R19 K185 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K83 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K91 ["PaddingLeft"]
  GETIMPORT R20 K83 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K184 ["PaddingRight"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K186 [".DropdownItem"]
  DUPTABLE R16 K187 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R17 K34 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 40
  CALL R17 4 1
  SETTABLEKS R17 R16 K42 ["Size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K85 ["BackgroundTransparency"]
  LOADK R17 K188 ["$ForegroundMain"]
  SETTABLEKS R17 R16 K86 ["BackgroundColor3"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K127 [":hover"]
  DUPTABLE R20 K128 [{"BackgroundColor3"}]
  LOADK R21 K129 ["$ActionHover"]
  SETTABLEKS R21 R20 K86 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K139 [":pressed"]
  DUPTABLE R21 K128 [{"BackgroundColor3"}]
  LOADK R22 K126 ["$ActionActivated"]
  SETTABLEKS R22 R21 K86 ["BackgroundColor3"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K189 [".DeriveRenderer"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K190 [">> ImageLabel"]
  DUPTABLE R21 K192 [{"ImageTransparency"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K191 ["ImageTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K193 [":hover >> ImageLabel"]
  DUPTABLE R22 K192 [{"ImageTransparency"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K191 ["ImageTransparency"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K194 [".BreadcrumbRadioSize"]
  DUPTABLE R18 K43 [{"Size"}]
  GETIMPORT R19 K34 [UDim2.new]
  LOADN R20 1
  LOADN R21 176
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K42 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K195 [".PropertyCellDisabled >> TextBox"]
  DUPTABLE R19 K197 [{"TextTransparency"}]
  LOADK R20 K56 [0.5]
  SETTABLEKS R20 R19 K196 ["TextTransparency"]
  CALL R17 2 -1
  SETLIST R8 R9 -1 [17]
  MOVE R9 R5
  CALL R6 3 1
  RETURN R6 1
