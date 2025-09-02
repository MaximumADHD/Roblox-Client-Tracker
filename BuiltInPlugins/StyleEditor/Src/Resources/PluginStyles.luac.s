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
  DUPTABLE R5 K28 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "RowHeight", "SearchBarHeight", "TokenTooltipRowHeight", "TooltipMaxWidth", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K14 ["BorderSize"]
  LOADN R6 36
  SETTABLEKS R6 R5 K15 ["ButtonHeight"]
  GETIMPORT R6 K31 [UDim2.fromOffset]
  LOADN R7 16
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["Icon16"]
  GETIMPORT R6 K31 [UDim2.fromOffset]
  LOADN R7 22
  LOADN R8 22
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["Icon22"]
  LOADN R6 5
  SETTABLEKS R6 R5 K18 ["PaddingSm"]
  LOADN R6 10
  SETTABLEKS R6 R5 K19 ["Padding"]
  GETIMPORT R6 K33 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K20 ["PropertyCellSize"]
  LOADN R6 24
  SETTABLEKS R6 R5 K21 ["RowHeight"]
  LOADN R6 32
  SETTABLEKS R6 R5 K22 ["SearchBarHeight"]
  LOADN R6 20
  SETTABLEKS R6 R5 K23 ["TokenTooltipRowHeight"]
  LOADN R6 94
  SETTABLEKS R6 R5 K24 ["TooltipMaxWidth"]
  GETIMPORT R6 K36 [Color3.fromRGB]
  LOADN R7 252
  LOADN R8 116
  LOADN R9 116
  CALL R6 3 1
  SETTABLEKS R6 R5 K25 ["ColorKeypoint"]
  GETIMPORT R6 K36 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLEKS R6 R5 K26 ["ColorKeypointSelected"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K37 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R6 K38 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R6 R5 K27 ["CursorOpenedHand"]
  MOVE R6 R3
  LOADK R7 K39 ["StyleEditor"]
  NEWTABLE R8 0 30
  MOVE R9 R2
  LOADK R10 K40 [".Icon16"]
  DUPTABLE R11 K42 [{"Size"}]
  LOADK R12 K43 ["$Icon16"]
  SETTABLEKS R12 R11 K41 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K44 [".Icon22"]
  DUPTABLE R12 K42 [{"Size"}]
  LOADK R13 K45 ["$Icon22"]
  SETTABLEKS R13 R12 K41 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K46 [".ItemTextSize"]
  DUPTABLE R13 K48 [{"TextSize"}]
  LOADN R14 18
  SETTABLEKS R14 R13 K47 ["TextSize"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K49 [".PositionCenter"]
  DUPTABLE R14 K52 [{"AnchorPoint", "Position"}]
  GETIMPORT R15 K54 [Vector2.new]
  LOADK R16 K55 [0.5]
  LOADK R17 K55 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K50 ["AnchorPoint"]
  GETIMPORT R15 K57 [UDim2.fromScale]
  LOADK R16 K55 [0.5]
  LOADK R17 K55 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K51 ["Position"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K58 [".PositionRight"]
  DUPTABLE R15 K52 [{"AnchorPoint", "Position"}]
  GETIMPORT R16 K54 [Vector2.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["AnchorPoint"]
  GETIMPORT R16 K57 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K51 ["Position"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K59 [".PropertyCellSize"]
  DUPTABLE R16 K42 [{"Size"}]
  LOADK R17 K60 ["$PropertyCellSize"]
  SETTABLEKS R17 R16 K41 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K61 [".ScrollingAutomaticSize"]
  DUPTABLE R17 K64 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R18 K68 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K62 ["AutomaticCanvasSize"]
  GETIMPORT R18 K57 [UDim2.fromScale]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K63 ["CanvasSize"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K69 [".TextXAlignLeft"]
  DUPTABLE R18 K71 [{"TextXAlignment"}]
  GETIMPORT R19 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K70 ["TextXAlignment"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K74 [".MaxFullSizeMinContentSizeXY"]
  DUPTABLE R19 K75 [{"Size", "AutomaticSize"}]
  GETIMPORT R20 K57 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["Size"]
  GETIMPORT R20 K77 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K66 ["AutomaticSize"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K78 [".ScrollingDirectionXY"]
  DUPTABLE R20 K80 [{"ScrollingDirection"}]
  GETIMPORT R21 K81 [Enum.ScrollingDirection.XY]
  SETTABLEKS R21 R20 K79 ["ScrollingDirection"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K82 [".SearchInput"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K83 [">> UIStroke"]
  DUPTABLE R25 K85 [{"Thickness"}]
  LOADN R26 0
  SETTABLEKS R26 R25 K84 ["Thickness"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K86 [">> UICorner"]
  DUPTABLE R26 K88 [{"CornerRadius"}]
  GETIMPORT R27 K90 [UDim.new]
  CALL R27 0 1
  SETTABLEKS R27 R26 K87 ["CornerRadius"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K91 [".LeftItems"]
  DUPTABLE R22 K94 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K92 ["BackgroundTransparency"]
  LOADK R23 K95 ["$BackgroundPaper"]
  SETTABLEKS R23 R22 K93 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K96 [".TokenSource"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K97 ["::UIPadding"]
  DUPTABLE R27 K99 [{"PaddingLeft"}]
  GETIMPORT R28 K90 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K98 ["PaddingLeft"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K100 [">> .TokenSourceIcon"]
  DUPTABLE R28 K42 [{"Size"}]
  GETIMPORT R29 K31 [UDim2.fromOffset]
  LOADN R30 20
  LOADN R31 20
  CALL R29 2 1
  SETTABLEKS R29 R28 K41 ["Size"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K101 [".PreviewGrid"]
  DUPTABLE R24 K104 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K92 ["BackgroundTransparency"]
  GETIMPORT R25 K106 [Enum.ScaleType.Tile]
  SETTABLEKS R25 R24 K102 ["ScaleType"]
  GETIMPORT R25 K31 [UDim2.fromOffset]
  LOADN R26 20
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K103 ["TileSize"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K107 [".OnboardingPage"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 4
  MOVE R27 R2
  LOADK R28 K108 [":: UISizeConstraint"]
  DUPTABLE R29 K111 [{"MaxSize", "MinSize"}]
  GETIMPORT R30 K54 [Vector2.new]
  LOADN R31 144
  LOADN R32 144
  CALL R30 2 1
  SETTABLEKS R30 R29 K109 ["MaxSize"]
  GETIMPORT R30 K54 [Vector2.new]
  LOADN R31 180
  LOADN R32 180
  CALL R30 2 1
  SETTABLEKS R30 R29 K110 ["MinSize"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K112 ["> #StylingImage"]
  DUPTABLE R30 K42 [{"Size"}]
  GETIMPORT R31 K31 [UDim2.fromOffset]
  LOADN R32 144
  LOADN R33 180
  CALL R31 2 1
  SETTABLEKS R31 R30 K41 ["Size"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K113 [":: UIAspectRatioConstraint"]
  DUPTABLE R34 K116 [{"AspectRatio", "AspectType"}]
  LOADK R35 K117 [3.75]
  SETTABLEKS R35 R34 K114 ["AspectRatio"]
  GETIMPORT R35 K119 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R35 R34 K115 ["AspectType"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K120 ["> #Description"]
  DUPTABLE R31 K122 [{"TextSize", "TextWrapped"}]
  LOADN R32 16
  SETTABLEKS R32 R31 K47 ["TextSize"]
  LOADB R32 1
  SETTABLEKS R32 R31 K121 ["TextWrapped"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K123 ["> #ButtonContainer"]
  DUPTABLE R32 K42 [{"Size"}]
  GETIMPORT R33 K33 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  LOADN R37 90
  CALL R33 4 1
  SETTABLEKS R33 R32 K41 ["Size"]
  NEWTABLE R33 0 3
  MOVE R34 R2
  LOADK R35 K124 [":: UIPadding"]
  DUPTABLE R36 K126 [{"PaddingTop"}]
  GETIMPORT R37 K90 [UDim.new]
  LOADN R38 0
  LOADN R39 16
  CALL R37 2 1
  SETTABLEKS R37 R36 K125 ["PaddingTop"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K127 ["> #Link"]
  DUPTABLE R37 K128 [{"AnchorPoint"}]
  GETIMPORT R38 K54 [Vector2.new]
  LOADN R39 0
  LOADK R40 K55 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K50 ["AnchorPoint"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K129 ["> #BlankButton"]
  DUPTABLE R38 K128 [{"AnchorPoint"}]
  GETIMPORT R39 K54 [Vector2.new]
  LOADN R40 1
  LOADK R41 K55 [0.5]
  CALL R39 2 1
  SETTABLEKS R39 R38 K50 ["AnchorPoint"]
  CALL R36 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K130 [".FontStyle"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K131 ["Frame"]
  DUPTABLE R30 K132 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  LOADK R31 K133 ["$ActionActivated"]
  SETTABLEKS R31 R30 K93 ["BackgroundColor3"]
  LOADN R31 0
  SETTABLEKS R31 R30 K92 ["BackgroundTransparency"]
  GETIMPORT R31 K31 [UDim2.fromOffset]
  LOADN R32 24
  LOADN R33 24
  CALL R31 2 1
  SETTABLEKS R31 R30 K41 ["Size"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K134 [":hover"]
  DUPTABLE R34 K135 [{"BackgroundColor3"}]
  LOADK R35 K136 ["$ActionHover"]
  SETTABLEKS R35 R34 K93 ["BackgroundColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K137 [".Selected"]
  DUPTABLE R35 K135 [{"BackgroundColor3"}]
  LOADK R36 K138 ["$ActionEnabled"]
  SETTABLEKS R36 R35 K93 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K139 ["TextButton"]
  DUPTABLE R31 K142 [{"BackgroundTransparency", "RichText", "TextColor3"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K92 ["BackgroundTransparency"]
  LOADB R32 1
  SETTABLEKS R32 R31 K140 ["RichText"]
  LOADK R32 K143 ["$TextSecondary"]
  SETTABLEKS R32 R31 K141 ["TextColor3"]
  NEWTABLE R32 0 5
  MOVE R33 R2
  LOADK R34 K134 [":hover"]
  DUPTABLE R35 K144 [{"TextColor3"}]
  LOADK R36 K145 ["$TextContrast"]
  SETTABLEKS R36 R35 K141 ["TextColor3"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K146 [":press"]
  DUPTABLE R36 K144 [{"TextColor3"}]
  LOADK R37 K145 ["$TextContrast"]
  SETTABLEKS R37 R36 K141 ["TextColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K137 [".Selected"]
  DUPTABLE R37 K144 [{"TextColor3"}]
  LOADK R38 K147 ["$TextDisabled"]
  SETTABLEKS R38 R37 K141 ["TextColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K148 ["#BoldButton"]
  DUPTABLE R38 K150 [{"Text"}]
  LOADK R39 K151 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
  SETTABLEKS R39 R38 K149 ["Text"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K152 ["#ItalicButton"]
  DUPTABLE R39 K150 [{"Text"}]
  LOADK R40 K153 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
  SETTABLEKS R40 R39 K149 ["Text"]
  CALL R37 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K154 [".SequenceKeypoint"]
  DUPTABLE R11 K156 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
  GETIMPORT R12 K54 [Vector2.new]
  LOADK R13 K55 [0.5]
  LOADK R14 K55 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K50 ["AnchorPoint"]
  LOADK R12 K157 ["$ColorKeypoint"]
  SETTABLEKS R12 R11 K93 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K92 ["BackgroundTransparency"]
  LOADK R12 K158 [""]
  SETTABLEKS R12 R11 K149 ["Text"]
  LOADN R12 3
  SETTABLEKS R12 R11 K155 ["ZIndex"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K137 [".Selected"]
  DUPTABLE R15 K135 [{"BackgroundColor3"}]
  LOADK R16 K159 ["$ColorKeypointSelected"]
  SETTABLEKS R16 R15 K93 ["BackgroundColor3"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K160 ["::UIStroke"]
  DUPTABLE R19 K164 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R20 K166 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R20 R19 K161 ["ApplyStrokeMode"]
  GETIMPORT R20 K36 [Color3.fromRGB]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R20 3 1
  SETTABLEKS R20 R19 K162 ["Color"]
  LOADN R20 2
  SETTABLEKS R20 R19 K84 ["Thickness"]
  LOADK R20 K167 [0.6]
  SETTABLEKS R20 R19 K163 ["Transparency"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K168 [".NumberSequenceKeypoint"]
  DUPTABLE R12 K42 [{"Size"}]
  GETIMPORT R13 K31 [UDim2.fromOffset]
  LOADN R14 8
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K169 [".NumberSequenceLine"]
  DUPTABLE R13 K171 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K170 ["BorderSizePixel"]
  LOADN R14 2
  SETTABLEKS R14 R13 K155 ["ZIndex"]
  LOADK R14 K167 [0.6]
  SETTABLEKS R14 R13 K92 ["BackgroundTransparency"]
  LOADK R14 K157 ["$ColorKeypoint"]
  SETTABLEKS R14 R13 K93 ["BackgroundColor3"]
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K172 [".SelectedStart"]
  DUPTABLE R17 K135 [{"BackgroundColor3"}]
  GETIMPORT R18 K36 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 255
  LOADN R21 255
  CALL R18 3 1
  SETTABLEKS R18 R17 K93 ["BackgroundColor3"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K173 ["::UIGradient"]
  DUPTABLE R21 K174 [{"Color"}]
  GETIMPORT R22 K176 [ColorSequence.new]
  GETTABLEKS R23 R5 K26 ["ColorKeypointSelected"]
  GETTABLEKS R24 R5 K25 ["ColorKeypoint"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K162 ["Color"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K177 [".SelectedEnd"]
  DUPTABLE R18 K135 [{"BackgroundColor3"}]
  GETIMPORT R19 K36 [Color3.fromRGB]
  LOADN R20 255
  LOADN R21 255
  LOADN R22 255
  CALL R19 3 1
  SETTABLEKS R19 R18 K93 ["BackgroundColor3"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K173 ["::UIGradient"]
  DUPTABLE R22 K174 [{"Color"}]
  GETIMPORT R23 K176 [ColorSequence.new]
  GETTABLEKS R24 R5 K25 ["ColorKeypoint"]
  GETTABLEKS R25 R5 K26 ["ColorKeypointSelected"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K162 ["Color"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K178 [".ColorSequenceKeypoint"]
  DUPTABLE R14 K42 [{"Size"}]
  GETIMPORT R15 K31 [UDim2.fromOffset]
  LOADN R16 8
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K179 [".ColorSequenceLine"]
  DUPTABLE R15 K181 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
  GETIMPORT R16 K54 [Vector2.new]
  LOADK R17 K55 [0.5]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["AnchorPoint"]
  GETIMPORT R16 K36 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  CALL R16 3 1
  SETTABLEKS R16 R15 K93 ["BackgroundColor3"]
  LOADK R16 K182 [0.7]
  SETTABLEKS R16 R15 K92 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K180 ["BorderPixelSize"]
  GETIMPORT R16 K33 [UDim2.new]
  LOADN R17 0
  LOADN R18 2
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K41 ["Size"]
  LOADN R16 2
  SETTABLEKS R16 R15 K155 ["ZIndex"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K137 [".Selected"]
  DUPTABLE R19 K183 [{"BackgroundTransparency"}]
  LOADK R20 K184 [0.4]
  SETTABLEKS R20 R19 K92 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K160 ["::UIStroke"]
  DUPTABLE R23 K185 [{"Color", "Thickness", "Transparency"}]
  GETIMPORT R24 K36 [Color3.fromRGB]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R24 3 1
  SETTABLEKS R24 R23 K162 ["Color"]
  LOADN R24 2
  SETTABLEKS R24 R23 K84 ["Thickness"]
  LOADK R24 K186 [0.75]
  SETTABLEKS R24 R23 K163 ["Transparency"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K187 [".SequencePreviewButton"]
  DUPTABLE R16 K188 [{"Size", "BackgroundColor3"}]
  GETIMPORT R17 K31 [UDim2.fromOffset]
  LOADN R18 20
  LOADN R19 20
  CALL R17 2 1
  SETTABLEKS R17 R16 K41 ["Size"]
  GETIMPORT R17 K189 [Color3.new]
  LOADN R18 1
  LOADN R19 1
  LOADN R20 1
  CALL R17 3 1
  SETTABLEKS R17 R16 K93 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K190 [".LabelCell"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K97 ["::UIPadding"]
  DUPTABLE R21 K192 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  SETTABLEKS R22 R21 K98 ["PaddingLeft"]
  GETIMPORT R22 K90 [UDim.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  SETTABLEKS R22 R21 K191 ["PaddingRight"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K193 [".DropdownItem"]
  DUPTABLE R18 K194 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R19 K33 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 40
  CALL R19 4 1
  SETTABLEKS R19 R18 K41 ["Size"]
  LOADN R19 0
  SETTABLEKS R19 R18 K92 ["BackgroundTransparency"]
  LOADK R19 K195 ["$ForegroundMain"]
  SETTABLEKS R19 R18 K93 ["BackgroundColor3"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K134 [":hover"]
  DUPTABLE R22 K135 [{"BackgroundColor3"}]
  LOADK R23 K136 ["$ActionHover"]
  SETTABLEKS R23 R22 K93 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K146 [":press"]
  DUPTABLE R23 K135 [{"BackgroundColor3"}]
  LOADK R24 K133 ["$ActionActivated"]
  SETTABLEKS R24 R23 K93 ["BackgroundColor3"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K196 [".DeriveRenderer"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K197 [">> ImageLabel"]
  DUPTABLE R23 K199 [{"ImageTransparency"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K198 ["ImageTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K200 [":hover >> ImageLabel"]
  DUPTABLE R24 K199 [{"ImageTransparency"}]
  LOADN R25 0
  SETTABLEKS R25 R24 K198 ["ImageTransparency"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K201 [".BreadcrumbRadioSize"]
  DUPTABLE R20 K42 [{"Size"}]
  GETIMPORT R21 K33 [UDim2.new]
  LOADN R22 1
  LOADN R23 176
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K41 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K202 [".PropertyCellDisabled >> TextBox"]
  DUPTABLE R21 K204 [{"TextTransparency"}]
  LOADK R22 K55 [0.5]
  SETTABLEKS R22 R21 K203 ["TextTransparency"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K205 [".FlexFill"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K206 ["::UIFlexItem"]
  DUPTABLE R26 K208 [{"FlexMode"}]
  GETIMPORT R27 K211 [Enum.UIFlexMode.Fill]
  SETTABLEKS R27 R26 K207 ["FlexMode"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K212 [".Stroke-Border ::UIStroke"]
  DUPTABLE R23 K213 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R24 K166 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K161 ["ApplyStrokeMode"]
  LOADK R24 K214 ["$Divider"]
  SETTABLEKS R24 R23 K162 ["Color"]
  LOADN R24 1
  SETTABLEKS R24 R23 K84 ["Thickness"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K215 [".compact >> .Input"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K97 ["::UIPadding"]
  DUPTABLE R28 K217 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
  GETIMPORT R29 K90 [UDim.new]
  LOADN R30 0
  LOADN R31 2
  CALL R29 2 1
  SETTABLEKS R29 R28 K125 ["PaddingTop"]
  GETIMPORT R29 K90 [UDim.new]
  LOADN R30 0
  LOADN R31 2
  CALL R29 2 1
  SETTABLEKS R29 R28 K216 ["PaddingBottom"]
  GETIMPORT R29 K90 [UDim.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K191 ["PaddingRight"]
  GETIMPORT R29 K90 [UDim.new]
  LOADN R30 0
  LOADN R31 5
  CALL R29 2 1
  SETTABLEKS R29 R28 K98 ["PaddingLeft"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R8 R9 -1 [17]
  MOVE R9 R5
  CALL R6 3 1
  RETURN R6 1
