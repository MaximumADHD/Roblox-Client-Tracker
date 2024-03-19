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
  DUPTABLE R4 K24 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "SearchBarHeight", "Spacing", "TitleTextSize", "TokenTooltipRowHeight", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K10 ["BorderSize"]
  LOADN R5 36
  SETTABLEKS R5 R4 K11 ["ButtonHeight"]
  GETIMPORT R5 K27 [UDim2.fromOffset]
  LOADN R6 16
  LOADN R7 16
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Icon16"]
  GETIMPORT R5 K27 [UDim2.fromOffset]
  LOADN R6 22
  LOADN R7 22
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["Icon22"]
  LOADN R5 5
  SETTABLEKS R5 R4 K14 ["PaddingSm"]
  LOADN R5 10
  SETTABLEKS R5 R4 K15 ["Padding"]
  GETIMPORT R5 K29 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 24
  CALL R5 4 1
  SETTABLEKS R5 R4 K16 ["PropertyCellSize"]
  LOADN R5 32
  SETTABLEKS R5 R4 K17 ["SearchBarHeight"]
  LOADN R5 10
  SETTABLEKS R5 R4 K18 ["Spacing"]
  LOADN R5 24
  SETTABLEKS R5 R4 K19 ["TitleTextSize"]
  LOADN R5 20
  SETTABLEKS R5 R4 K20 ["TokenTooltipRowHeight"]
  GETIMPORT R5 K32 [Color3.fromRGB]
  LOADN R6 252
  LOADN R7 116
  LOADN R8 116
  CALL R5 3 1
  SETTABLEKS R5 R4 K21 ["ColorKeypoint"]
  GETIMPORT R5 K32 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K22 ["ColorKeypointSelected"]
  LOADK R5 K33 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R5 R4 K23 ["CursorOpenedHand"]
  MOVE R5 R3
  LOADK R6 K34 ["StyleEditor"]
  NEWTABLE R7 0 24
  MOVE R8 R2
  LOADK R9 K35 [".Icon16"]
  DUPTABLE R10 K37 [{"Size"}]
  LOADK R11 K38 ["$Icon16"]
  SETTABLEKS R11 R10 K36 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K39 [".Icon22"]
  DUPTABLE R11 K37 [{"Size"}]
  LOADK R12 K40 ["$Icon22"]
  SETTABLEKS R12 R11 K36 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K41 [".ItemTextSize"]
  DUPTABLE R12 K43 [{"TextSize"}]
  LOADN R13 18
  SETTABLEKS R13 R12 K42 ["TextSize"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K44 [".PositionCenter"]
  DUPTABLE R13 K47 [{"AnchorPoint", "Position"}]
  GETIMPORT R14 K49 [Vector2.new]
  LOADK R15 K50 [0.5]
  LOADK R16 K50 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K45 ["AnchorPoint"]
  GETIMPORT R14 K52 [UDim2.fromScale]
  LOADK R15 K50 [0.5]
  LOADK R16 K50 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K46 ["Position"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K53 [".PositionRight"]
  DUPTABLE R14 K47 [{"AnchorPoint", "Position"}]
  GETIMPORT R15 K49 [Vector2.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["AnchorPoint"]
  GETIMPORT R15 K52 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["Position"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K54 [".PropertyCellSize"]
  DUPTABLE R15 K37 [{"Size"}]
  LOADK R16 K55 ["$PropertyCellSize"]
  SETTABLEKS R16 R15 K36 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K56 [".ScrollingAutomaticSize"]
  DUPTABLE R16 K59 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R17 K63 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K57 ["AutomaticCanvasSize"]
  GETIMPORT R17 K52 [UDim2.fromScale]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K58 ["CanvasSize"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K64 [".TextXAlignLeft"]
  DUPTABLE R17 K66 [{"TextXAlignment"}]
  GETIMPORT R18 K68 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K65 ["TextXAlignment"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K69 [".SearchInput"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K70 [">> UIStroke"]
  DUPTABLE R22 K72 [{"Thickness"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K71 ["Thickness"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K73 [">> UICorner"]
  DUPTABLE R23 K75 [{"CornerRadius"}]
  GETIMPORT R24 K77 [UDim.new]
  CALL R24 0 1
  SETTABLEKS R24 R23 K74 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K78 [".LeftItems"]
  DUPTABLE R19 K81 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K79 ["BackgroundTransparency"]
  LOADK R20 K82 ["$BackgroundPaper"]
  SETTABLEKS R20 R19 K80 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K83 [".TokenSource"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K84 ["::UIPadding"]
  DUPTABLE R24 K86 [{"PaddingLeft"}]
  GETIMPORT R25 K77 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K85 ["PaddingLeft"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K87 [">> .TokenSourceIcon"]
  DUPTABLE R25 K37 [{"Size"}]
  GETIMPORT R26 K27 [UDim2.fromOffset]
  LOADN R27 20
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K36 ["Size"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K88 [".PreviewGrid"]
  DUPTABLE R21 K91 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K79 ["BackgroundTransparency"]
  GETIMPORT R22 K93 [Enum.ScaleType.Tile]
  SETTABLEKS R22 R21 K89 ["ScaleType"]
  GETIMPORT R22 K27 [UDim2.fromOffset]
  LOADN R23 20
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K90 ["TileSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K94 [".OnboardingView"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 4
  MOVE R24 R2
  LOADK R25 K95 [":: UISizeConstraint"]
  DUPTABLE R26 K98 [{"MaxSize", "MinSize"}]
  GETIMPORT R27 K49 [Vector2.new]
  LOADN R28 144
  LOADN R29 144
  CALL R27 2 1
  SETTABLEKS R27 R26 K96 ["MaxSize"]
  GETIMPORT R27 K49 [Vector2.new]
  LOADN R28 180
  LOADN R29 180
  CALL R27 2 1
  SETTABLEKS R27 R26 K97 ["MinSize"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K99 ["> #StylingImage"]
  DUPTABLE R27 K37 [{"Size"}]
  GETIMPORT R28 K27 [UDim2.fromOffset]
  LOADN R29 144
  LOADN R30 180
  CALL R28 2 1
  SETTABLEKS R28 R27 K36 ["Size"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K100 [":: UIAspectRatioConstraint"]
  DUPTABLE R31 K103 [{"AspectRatio", "AspectType"}]
  LOADK R32 K104 [3.75]
  SETTABLEKS R32 R31 K101 ["AspectRatio"]
  GETIMPORT R32 K106 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R32 R31 K102 ["AspectType"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K107 ["> #Description"]
  DUPTABLE R28 K109 [{"TextSize", "TextWrapped"}]
  LOADN R29 16
  SETTABLEKS R29 R28 K42 ["TextSize"]
  LOADB R29 1
  SETTABLEKS R29 R28 K108 ["TextWrapped"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K110 ["> #ButtonContainer"]
  DUPTABLE R29 K37 [{"Size"}]
  GETIMPORT R30 K29 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 90
  CALL R30 4 1
  SETTABLEKS R30 R29 K36 ["Size"]
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K111 [":: UIPadding"]
  DUPTABLE R33 K113 [{"PaddingTop"}]
  GETIMPORT R34 K77 [UDim.new]
  LOADN R35 0
  LOADN R36 16
  CALL R34 2 1
  SETTABLEKS R34 R33 K112 ["PaddingTop"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K114 ["> #Link"]
  DUPTABLE R34 K115 [{"AnchorPoint"}]
  GETIMPORT R35 K49 [Vector2.new]
  LOADN R36 0
  LOADK R37 K50 [0.5]
  CALL R35 2 1
  SETTABLEKS R35 R34 K45 ["AnchorPoint"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K116 ["> #BlankButton"]
  DUPTABLE R35 K115 [{"AnchorPoint"}]
  GETIMPORT R36 K49 [Vector2.new]
  LOADN R37 1
  LOADK R38 K50 [0.5]
  CALL R36 2 1
  SETTABLEKS R36 R35 K45 ["AnchorPoint"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K117 [".FontStyle"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K118 ["Frame"]
  DUPTABLE R27 K119 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  LOADK R28 K120 ["$ActionActivated"]
  SETTABLEKS R28 R27 K80 ["BackgroundColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K79 ["BackgroundTransparency"]
  GETIMPORT R28 K27 [UDim2.fromOffset]
  LOADN R29 24
  LOADN R30 24
  CALL R28 2 1
  SETTABLEKS R28 R27 K36 ["Size"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K121 [":hover"]
  DUPTABLE R31 K122 [{"BackgroundColor3"}]
  LOADK R32 K123 ["$ActionHover"]
  SETTABLEKS R32 R31 K80 ["BackgroundColor3"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K124 [".Selected"]
  DUPTABLE R32 K122 [{"BackgroundColor3"}]
  LOADK R33 K125 ["$ActionEnabled"]
  SETTABLEKS R33 R32 K80 ["BackgroundColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K126 ["TextButton"]
  DUPTABLE R28 K129 [{"BackgroundTransparency", "RichText", "TextColor3"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K79 ["BackgroundTransparency"]
  LOADB R29 1
  SETTABLEKS R29 R28 K127 ["RichText"]
  LOADK R29 K130 ["$TextSecondary"]
  SETTABLEKS R29 R28 K128 ["TextColor3"]
  NEWTABLE R29 0 5
  MOVE R30 R2
  LOADK R31 K121 [":hover"]
  DUPTABLE R32 K131 [{"TextColor3"}]
  LOADK R33 K132 ["$TextContrast"]
  SETTABLEKS R33 R32 K128 ["TextColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K133 [":pressed"]
  DUPTABLE R33 K131 [{"TextColor3"}]
  LOADK R34 K132 ["$TextContrast"]
  SETTABLEKS R34 R33 K128 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K124 [".Selected"]
  DUPTABLE R34 K131 [{"TextColor3"}]
  LOADK R35 K134 ["$TextDisabled"]
  SETTABLEKS R35 R34 K128 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K135 ["#BoldButton"]
  DUPTABLE R35 K137 [{"Text"}]
  LOADK R36 K138 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
  SETTABLEKS R36 R35 K136 ["Text"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K139 ["#ItalicButton"]
  DUPTABLE R36 K137 [{"Text"}]
  LOADK R37 K140 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
  SETTABLEKS R37 R36 K136 ["Text"]
  CALL R34 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K141 [".SequenceKeypoint"]
  DUPTABLE R24 K143 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
  GETIMPORT R25 K49 [Vector2.new]
  LOADK R26 K50 [0.5]
  LOADK R27 K50 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K45 ["AnchorPoint"]
  LOADK R25 K144 ["$ColorKeypoint"]
  SETTABLEKS R25 R24 K80 ["BackgroundColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K79 ["BackgroundTransparency"]
  LOADK R25 K145 [""]
  SETTABLEKS R25 R24 K136 ["Text"]
  LOADN R25 3
  SETTABLEKS R25 R24 K142 ["ZIndex"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K124 [".Selected"]
  DUPTABLE R28 K122 [{"BackgroundColor3"}]
  LOADK R29 K146 ["$ColorKeypointSelected"]
  SETTABLEKS R29 R28 K80 ["BackgroundColor3"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K147 ["::UIStroke"]
  DUPTABLE R32 K151 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R33 K153 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R33 R32 K148 ["ApplyStrokeMode"]
  GETIMPORT R33 K32 [Color3.fromRGB]
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R33 3 1
  SETTABLEKS R33 R32 K149 ["Color"]
  LOADN R33 2
  SETTABLEKS R33 R32 K71 ["Thickness"]
  LOADK R33 K154 [0.6]
  SETTABLEKS R33 R32 K150 ["Transparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K155 [".NumberSequenceKeypoint"]
  DUPTABLE R25 K37 [{"Size"}]
  GETIMPORT R26 K27 [UDim2.fromOffset]
  LOADN R27 8
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K36 ["Size"]
  CALL R23 2 1
  SETLIST R7 R8 16 [1]
  MOVE R8 R2
  LOADK R9 K156 [".NumberSequenceLine"]
  DUPTABLE R10 K158 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K157 ["BorderSizePixel"]
  LOADN R11 2
  SETTABLEKS R11 R10 K142 ["ZIndex"]
  LOADK R11 K154 [0.6]
  SETTABLEKS R11 R10 K79 ["BackgroundTransparency"]
  LOADK R11 K144 ["$ColorKeypoint"]
  SETTABLEKS R11 R10 K80 ["BackgroundColor3"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K159 [".SelectedStart"]
  DUPTABLE R14 K122 [{"BackgroundColor3"}]
  GETIMPORT R15 K32 [Color3.fromRGB]
  LOADN R16 255
  LOADN R17 255
  LOADN R18 255
  CALL R15 3 1
  SETTABLEKS R15 R14 K80 ["BackgroundColor3"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K160 ["::UIGradient"]
  DUPTABLE R18 K161 [{"Color"}]
  GETIMPORT R19 K163 [ColorSequence.new]
  GETTABLEKS R20 R4 K22 ["ColorKeypointSelected"]
  GETTABLEKS R21 R4 K21 ["ColorKeypoint"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K149 ["Color"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K164 [".SelectedEnd"]
  DUPTABLE R15 K122 [{"BackgroundColor3"}]
  GETIMPORT R16 K32 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  CALL R16 3 1
  SETTABLEKS R16 R15 K80 ["BackgroundColor3"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K160 ["::UIGradient"]
  DUPTABLE R19 K161 [{"Color"}]
  GETIMPORT R20 K163 [ColorSequence.new]
  GETTABLEKS R21 R4 K21 ["ColorKeypoint"]
  GETTABLEKS R22 R4 K22 ["ColorKeypointSelected"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K149 ["Color"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K165 [".ColorSequenceKeypoint"]
  DUPTABLE R11 K37 [{"Size"}]
  GETIMPORT R12 K27 [UDim2.fromOffset]
  LOADN R13 8
  LOADN R14 16
  CALL R12 2 1
  SETTABLEKS R12 R11 K36 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K166 [".ColorSequenceLine"]
  DUPTABLE R12 K168 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
  GETIMPORT R13 K49 [Vector2.new]
  LOADK R14 K50 [0.5]
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K45 ["AnchorPoint"]
  GETIMPORT R13 K32 [Color3.fromRGB]
  LOADN R14 255
  LOADN R15 255
  LOADN R16 255
  CALL R13 3 1
  SETTABLEKS R13 R12 K80 ["BackgroundColor3"]
  LOADK R13 K169 [0.7]
  SETTABLEKS R13 R12 K79 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K167 ["BorderPixelSize"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 0
  LOADN R15 2
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K36 ["Size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K142 ["ZIndex"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K124 [".Selected"]
  DUPTABLE R16 K170 [{"BackgroundTransparency"}]
  LOADK R17 K171 [0.4]
  SETTABLEKS R17 R16 K79 ["BackgroundTransparency"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K147 ["::UIStroke"]
  DUPTABLE R20 K172 [{"Color", "Thickness", "Transparency"}]
  GETIMPORT R21 K32 [Color3.fromRGB]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R21 3 1
  SETTABLEKS R21 R20 K149 ["Color"]
  LOADN R21 2
  SETTABLEKS R21 R20 K71 ["Thickness"]
  LOADK R21 K173 [0.75]
  SETTABLEKS R21 R20 K150 ["Transparency"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K174 [".SequencePreviewButton"]
  DUPTABLE R13 K175 [{"Size", "BackgroundColor3"}]
  GETIMPORT R14 K27 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["Size"]
  GETIMPORT R14 K176 [Color3.new]
  LOADN R15 1
  LOADN R16 1
  LOADN R17 1
  CALL R14 3 1
  SETTABLEKS R14 R13 K80 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K177 [".LabelCell"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K84 ["::UIPadding"]
  DUPTABLE R18 K179 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R19 K77 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K85 ["PaddingLeft"]
  GETIMPORT R19 K77 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K178 ["PaddingRight"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K180 [".DropdownItem"]
  DUPTABLE R15 K181 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R16 K29 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 40
  CALL R16 4 1
  SETTABLEKS R16 R15 K36 ["Size"]
  LOADN R16 0
  SETTABLEKS R16 R15 K79 ["BackgroundTransparency"]
  LOADK R16 K182 ["$ForegroundMain"]
  SETTABLEKS R16 R15 K80 ["BackgroundColor3"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K121 [":hover"]
  DUPTABLE R19 K122 [{"BackgroundColor3"}]
  LOADK R20 K123 ["$ActionHover"]
  SETTABLEKS R20 R19 K80 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K133 [":pressed"]
  DUPTABLE R20 K122 [{"BackgroundColor3"}]
  LOADK R21 K120 ["$ActionActivated"]
  SETTABLEKS R21 R20 K80 ["BackgroundColor3"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K183 [".DeriveRenderer"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K184 [">> ImageLabel"]
  DUPTABLE R20 K186 [{"ImageTransparency"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K185 ["ImageTransparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K187 [":hover >> ImageLabel"]
  DUPTABLE R21 K186 [{"ImageTransparency"}]
  LOADN R22 0
  SETTABLEKS R22 R21 K185 ["ImageTransparency"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K188 [".BreadcrumbRadioSize"]
  DUPTABLE R17 K37 [{"Size"}]
  GETIMPORT R18 K29 [UDim2.new]
  LOADN R19 1
  LOADN R20 176
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K36 ["Size"]
  CALL R15 2 -1
  SETLIST R7 R8 -1 [17]
  MOVE R8 R4
  CALL R5 3 1
  RETURN R5 1
