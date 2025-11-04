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
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETIMPORT R5 K11 [game]
  LOADK R7 K12 ["ImprovedCursors"]
  NAMECALL R5 R5 K13 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R4 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  GETTABLEKS R7 R8 K16 ["getFFlagStyleEditorPluginStyleSheets"]
  CALL R6 1 1
  CALL R6 0 1
  DUPTABLE R7 K32 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "RowHeight", "SearchBarHeight", "SelectInputHeight", "TokenTooltipRowHeight", "TooltipMaxWidth", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K17 ["BorderSize"]
  LOADN R8 36
  SETTABLEKS R8 R7 K18 ["ButtonHeight"]
  GETIMPORT R8 K35 [UDim2.fromOffset]
  LOADN R9 16
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["Icon16"]
  GETIMPORT R8 K35 [UDim2.fromOffset]
  LOADN R9 22
  LOADN R10 22
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Icon22"]
  LOADN R8 5
  SETTABLEKS R8 R7 K21 ["PaddingSm"]
  LOADN R8 10
  SETTABLEKS R8 R7 K22 ["Padding"]
  GETIMPORT R8 K37 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 24
  CALL R8 4 1
  SETTABLEKS R8 R7 K23 ["PropertyCellSize"]
  LOADN R8 24
  SETTABLEKS R8 R7 K24 ["RowHeight"]
  LOADN R8 32
  SETTABLEKS R8 R7 K25 ["SearchBarHeight"]
  JUMPIFNOT R6 [+2]
  LOADN R8 32
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["SelectInputHeight"]
  LOADN R8 20
  SETTABLEKS R8 R7 K27 ["TokenTooltipRowHeight"]
  LOADN R8 94
  SETTABLEKS R8 R7 K28 ["TooltipMaxWidth"]
  GETIMPORT R8 K40 [Color3.fromRGB]
  LOADN R9 252
  LOADN R10 116
  LOADN R11 116
  CALL R8 3 1
  SETTABLEKS R8 R7 K29 ["ColorKeypoint"]
  GETIMPORT R8 K40 [Color3.fromRGB]
  LOADN R9 255
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K30 ["ColorKeypointSelected"]
  JUMPIFNOT R5 [+2]
  LOADK R8 K41 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R8 K42 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R8 R7 K31 ["CursorOpenedHand"]
  MOVE R8 R3
  LOADK R9 K43 ["StyleEditor"]
  NEWTABLE R10 0 30
  MOVE R11 R2
  LOADK R12 K44 [".Icon16"]
  DUPTABLE R13 K46 [{"Size"}]
  LOADK R14 K47 ["$Icon16"]
  SETTABLEKS R14 R13 K45 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K48 [".Icon22"]
  DUPTABLE R14 K46 [{"Size"}]
  LOADK R15 K49 ["$Icon22"]
  SETTABLEKS R15 R14 K45 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K50 [".ItemTextSize"]
  DUPTABLE R15 K52 [{"TextSize"}]
  LOADN R16 18
  SETTABLEKS R16 R15 K51 ["TextSize"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K53 [".PositionCenter"]
  DUPTABLE R16 K56 [{"AnchorPoint", "Position"}]
  GETIMPORT R17 K58 [Vector2.new]
  LOADK R18 K59 [0.5]
  LOADK R19 K59 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K54 ["AnchorPoint"]
  GETIMPORT R17 K61 [UDim2.fromScale]
  LOADK R18 K59 [0.5]
  LOADK R19 K59 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K55 ["Position"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K62 [".PositionRight"]
  DUPTABLE R17 K56 [{"AnchorPoint", "Position"}]
  GETIMPORT R18 K58 [Vector2.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["AnchorPoint"]
  GETIMPORT R18 K61 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["Position"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K63 [".PropertyCellSize"]
  DUPTABLE R18 K46 [{"Size"}]
  LOADK R19 K64 ["$PropertyCellSize"]
  SETTABLEKS R19 R18 K45 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K65 [".ScrollingAutomaticSize"]
  DUPTABLE R19 K68 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R20 K72 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K66 ["AutomaticCanvasSize"]
  GETIMPORT R20 K61 [UDim2.fromScale]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K67 ["CanvasSize"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K73 [".TextXAlignLeft"]
  DUPTABLE R20 K75 [{"TextXAlignment"}]
  GETIMPORT R21 K77 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K74 ["TextXAlignment"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K78 [".MaxFullSizeMinContentSizeXY"]
  DUPTABLE R21 K79 [{"Size", "AutomaticSize"}]
  GETIMPORT R22 K61 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K45 ["Size"]
  GETIMPORT R22 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K70 ["AutomaticSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K82 [".ScrollingDirectionXY"]
  DUPTABLE R22 K84 [{"ScrollingDirection"}]
  GETIMPORT R23 K85 [Enum.ScrollingDirection.XY]
  SETTABLEKS R23 R22 K83 ["ScrollingDirection"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K86 [".SearchInput"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K87 [">> UIStroke"]
  DUPTABLE R27 K89 [{"Thickness"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K88 ["Thickness"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K90 [">> UICorner"]
  DUPTABLE R28 K92 [{"CornerRadius"}]
  GETIMPORT R29 K94 [UDim.new]
  CALL R29 0 1
  SETTABLEKS R29 R28 K91 ["CornerRadius"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K95 [".LeftItems"]
  DUPTABLE R24 K98 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R25 0
  SETTABLEKS R25 R24 K96 ["BackgroundTransparency"]
  LOADK R25 K99 ["$BackgroundPaper"]
  SETTABLEKS R25 R24 K97 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K100 [".TokenSource"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K101 ["::UIPadding"]
  DUPTABLE R29 K103 [{"PaddingLeft"}]
  GETIMPORT R30 K94 [UDim.new]
  LOADN R31 0
  LOADN R32 5
  CALL R30 2 1
  SETTABLEKS R30 R29 K102 ["PaddingLeft"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K104 [">> .TokenSourceIcon"]
  DUPTABLE R30 K46 [{"Size"}]
  GETIMPORT R31 K35 [UDim2.fromOffset]
  LOADN R32 20
  LOADN R33 20
  CALL R31 2 1
  SETTABLEKS R31 R30 K45 ["Size"]
  CALL R28 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K105 [".PreviewGrid"]
  DUPTABLE R26 K108 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
  LOADN R27 1
  SETTABLEKS R27 R26 K96 ["BackgroundTransparency"]
  GETIMPORT R27 K110 [Enum.ScaleType.Tile]
  SETTABLEKS R27 R26 K106 ["ScaleType"]
  GETIMPORT R27 K35 [UDim2.fromOffset]
  LOADN R28 20
  LOADN R29 20
  CALL R27 2 1
  SETTABLEKS R27 R26 K107 ["TileSize"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K111 [".OnboardingPage"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 4
  MOVE R29 R2
  LOADK R30 K112 [":: UISizeConstraint"]
  DUPTABLE R31 K115 [{"MaxSize", "MinSize"}]
  GETIMPORT R32 K58 [Vector2.new]
  LOADN R33 144
  LOADN R34 144
  CALL R32 2 1
  SETTABLEKS R32 R31 K113 ["MaxSize"]
  GETIMPORT R32 K58 [Vector2.new]
  LOADN R33 180
  LOADN R34 180
  CALL R32 2 1
  SETTABLEKS R32 R31 K114 ["MinSize"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K116 ["> #StylingImage"]
  DUPTABLE R32 K46 [{"Size"}]
  GETIMPORT R33 K35 [UDim2.fromOffset]
  LOADN R34 144
  LOADN R35 180
  CALL R33 2 1
  SETTABLEKS R33 R32 K45 ["Size"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K117 [":: UIAspectRatioConstraint"]
  DUPTABLE R36 K120 [{"AspectRatio", "AspectType"}]
  LOADK R37 K121 [3.75]
  SETTABLEKS R37 R36 K118 ["AspectRatio"]
  GETIMPORT R37 K123 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R37 R36 K119 ["AspectType"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K124 ["> #Description"]
  DUPTABLE R33 K126 [{"TextSize", "TextWrapped"}]
  LOADN R34 16
  SETTABLEKS R34 R33 K51 ["TextSize"]
  LOADB R34 1
  SETTABLEKS R34 R33 K125 ["TextWrapped"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K127 ["> #ButtonContainer"]
  DUPTABLE R34 K46 [{"Size"}]
  GETIMPORT R35 K37 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  LOADN R39 90
  CALL R35 4 1
  SETTABLEKS R35 R34 K45 ["Size"]
  NEWTABLE R35 0 3
  MOVE R36 R2
  LOADK R37 K128 [":: UIPadding"]
  DUPTABLE R38 K130 [{"PaddingTop"}]
  GETIMPORT R39 K94 [UDim.new]
  LOADN R40 0
  LOADN R41 16
  CALL R39 2 1
  SETTABLEKS R39 R38 K129 ["PaddingTop"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K131 ["> #Link"]
  DUPTABLE R39 K132 [{"AnchorPoint"}]
  GETIMPORT R40 K58 [Vector2.new]
  LOADN R41 0
  LOADK R42 K59 [0.5]
  CALL R40 2 1
  SETTABLEKS R40 R39 K54 ["AnchorPoint"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K133 ["> #BlankButton"]
  DUPTABLE R40 K132 [{"AnchorPoint"}]
  GETIMPORT R41 K58 [Vector2.new]
  LOADN R42 1
  LOADK R43 K59 [0.5]
  CALL R41 2 1
  SETTABLEKS R41 R40 K54 ["AnchorPoint"]
  CALL R38 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K134 [".FontStyle"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K135 ["Frame"]
  DUPTABLE R32 K136 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  LOADK R33 K137 ["$ActionActivated"]
  SETTABLEKS R33 R32 K97 ["BackgroundColor3"]
  LOADN R33 0
  SETTABLEKS R33 R32 K96 ["BackgroundTransparency"]
  GETIMPORT R33 K35 [UDim2.fromOffset]
  LOADN R34 24
  LOADN R35 24
  CALL R33 2 1
  SETTABLEKS R33 R32 K45 ["Size"]
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K138 [":hover"]
  DUPTABLE R36 K139 [{"BackgroundColor3"}]
  LOADK R37 K140 ["$ActionHover"]
  SETTABLEKS R37 R36 K97 ["BackgroundColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K141 [".Selected"]
  DUPTABLE R37 K139 [{"BackgroundColor3"}]
  LOADK R38 K142 ["$ActionEnabled"]
  SETTABLEKS R38 R37 K97 ["BackgroundColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K143 ["TextButton"]
  DUPTABLE R33 K146 [{"BackgroundTransparency", "RichText", "TextColor3"}]
  LOADN R34 1
  SETTABLEKS R34 R33 K96 ["BackgroundTransparency"]
  LOADB R34 1
  SETTABLEKS R34 R33 K144 ["RichText"]
  LOADK R34 K147 ["$TextSecondary"]
  SETTABLEKS R34 R33 K145 ["TextColor3"]
  NEWTABLE R34 0 5
  MOVE R35 R2
  LOADK R36 K138 [":hover"]
  DUPTABLE R37 K148 [{"TextColor3"}]
  LOADK R38 K149 ["$TextContrast"]
  SETTABLEKS R38 R37 K145 ["TextColor3"]
  CALL R35 2 1
  MOVE R36 R2
  LOADK R37 K150 [":press"]
  DUPTABLE R38 K148 [{"TextColor3"}]
  LOADK R39 K149 ["$TextContrast"]
  SETTABLEKS R39 R38 K145 ["TextColor3"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K141 [".Selected"]
  DUPTABLE R39 K148 [{"TextColor3"}]
  LOADK R40 K151 ["$TextDisabled"]
  SETTABLEKS R40 R39 K145 ["TextColor3"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K152 ["#BoldButton"]
  DUPTABLE R40 K154 [{"Text"}]
  LOADK R41 K155 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
  SETTABLEKS R41 R40 K153 ["Text"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K156 ["#ItalicButton"]
  DUPTABLE R41 K154 [{"Text"}]
  LOADK R42 K157 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
  SETTABLEKS R42 R41 K153 ["Text"]
  CALL R39 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  SETLIST R10 R11 16 [1]
  MOVE R11 R2
  LOADK R12 K158 [".SequenceKeypoint"]
  DUPTABLE R13 K160 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
  GETIMPORT R14 K58 [Vector2.new]
  LOADK R15 K59 [0.5]
  LOADK R16 K59 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K54 ["AnchorPoint"]
  LOADK R14 K161 ["$ColorKeypoint"]
  SETTABLEKS R14 R13 K97 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K96 ["BackgroundTransparency"]
  LOADK R14 K162 [""]
  SETTABLEKS R14 R13 K153 ["Text"]
  LOADN R14 3
  SETTABLEKS R14 R13 K159 ["ZIndex"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K141 [".Selected"]
  DUPTABLE R17 K139 [{"BackgroundColor3"}]
  LOADK R18 K163 ["$ColorKeypointSelected"]
  SETTABLEKS R18 R17 K97 ["BackgroundColor3"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K164 ["::UIStroke"]
  DUPTABLE R21 K168 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R22 K170 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R22 R21 K165 ["ApplyStrokeMode"]
  GETIMPORT R22 K40 [Color3.fromRGB]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  CALL R22 3 1
  SETTABLEKS R22 R21 K166 ["Color"]
  LOADN R22 2
  SETTABLEKS R22 R21 K88 ["Thickness"]
  LOADK R22 K171 [0.6]
  SETTABLEKS R22 R21 K167 ["Transparency"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K172 [".NumberSequenceKeypoint"]
  DUPTABLE R14 K46 [{"Size"}]
  GETIMPORT R15 K35 [UDim2.fromOffset]
  LOADN R16 8
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K173 [".NumberSequenceLine"]
  DUPTABLE R15 K175 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R16 0
  SETTABLEKS R16 R15 K174 ["BorderSizePixel"]
  LOADN R16 2
  SETTABLEKS R16 R15 K159 ["ZIndex"]
  LOADK R16 K171 [0.6]
  SETTABLEKS R16 R15 K96 ["BackgroundTransparency"]
  LOADK R16 K161 ["$ColorKeypoint"]
  SETTABLEKS R16 R15 K97 ["BackgroundColor3"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K176 [".SelectedStart"]
  DUPTABLE R19 K139 [{"BackgroundColor3"}]
  GETIMPORT R20 K40 [Color3.fromRGB]
  LOADN R21 255
  LOADN R22 255
  LOADN R23 255
  CALL R20 3 1
  SETTABLEKS R20 R19 K97 ["BackgroundColor3"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K177 ["::UIGradient"]
  DUPTABLE R23 K178 [{"Color"}]
  GETIMPORT R24 K180 [ColorSequence.new]
  GETTABLEKS R25 R7 K30 ["ColorKeypointSelected"]
  GETTABLEKS R26 R7 K29 ["ColorKeypoint"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K166 ["Color"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K181 [".SelectedEnd"]
  DUPTABLE R20 K139 [{"BackgroundColor3"}]
  GETIMPORT R21 K40 [Color3.fromRGB]
  LOADN R22 255
  LOADN R23 255
  LOADN R24 255
  CALL R21 3 1
  SETTABLEKS R21 R20 K97 ["BackgroundColor3"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K177 ["::UIGradient"]
  DUPTABLE R24 K178 [{"Color"}]
  GETIMPORT R25 K180 [ColorSequence.new]
  GETTABLEKS R26 R7 K29 ["ColorKeypoint"]
  GETTABLEKS R27 R7 K30 ["ColorKeypointSelected"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K166 ["Color"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K182 [".ColorSequenceKeypoint"]
  DUPTABLE R16 K46 [{"Size"}]
  GETIMPORT R17 K35 [UDim2.fromOffset]
  LOADN R18 8
  LOADN R19 16
  CALL R17 2 1
  SETTABLEKS R17 R16 K45 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K183 [".ColorSequenceLine"]
  DUPTABLE R17 K185 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
  GETIMPORT R18 K58 [Vector2.new]
  LOADK R19 K59 [0.5]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K54 ["AnchorPoint"]
  GETIMPORT R18 K40 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 255
  LOADN R21 255
  CALL R18 3 1
  SETTABLEKS R18 R17 K97 ["BackgroundColor3"]
  LOADK R18 K186 [0.7]
  SETTABLEKS R18 R17 K96 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K184 ["BorderPixelSize"]
  GETIMPORT R18 K37 [UDim2.new]
  LOADN R19 0
  LOADN R20 2
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K45 ["Size"]
  LOADN R18 2
  SETTABLEKS R18 R17 K159 ["ZIndex"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K141 [".Selected"]
  DUPTABLE R21 K187 [{"BackgroundTransparency"}]
  LOADK R22 K188 [0.4]
  SETTABLEKS R22 R21 K96 ["BackgroundTransparency"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K164 ["::UIStroke"]
  DUPTABLE R25 K189 [{"Color", "Thickness", "Transparency"}]
  GETIMPORT R26 K40 [Color3.fromRGB]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  CALL R26 3 1
  SETTABLEKS R26 R25 K166 ["Color"]
  LOADN R26 2
  SETTABLEKS R26 R25 K88 ["Thickness"]
  LOADK R26 K190 [0.75]
  SETTABLEKS R26 R25 K167 ["Transparency"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K191 [".SequencePreviewButton"]
  DUPTABLE R18 K192 [{"Size", "BackgroundColor3"}]
  GETIMPORT R19 K35 [UDim2.fromOffset]
  LOADN R20 20
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K45 ["Size"]
  GETIMPORT R19 K193 [Color3.new]
  LOADN R20 1
  LOADN R21 1
  LOADN R22 1
  CALL R19 3 1
  SETTABLEKS R19 R18 K97 ["BackgroundColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K194 [".LabelCell"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K101 ["::UIPadding"]
  DUPTABLE R23 K196 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K94 [UDim.new]
  LOADN R25 0
  LOADN R26 5
  CALL R24 2 1
  SETTABLEKS R24 R23 K102 ["PaddingLeft"]
  GETIMPORT R24 K94 [UDim.new]
  LOADN R25 0
  LOADN R26 5
  CALL R24 2 1
  SETTABLEKS R24 R23 K195 ["PaddingRight"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K197 [".DropdownItem"]
  DUPTABLE R20 K198 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R21 K37 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 40
  CALL R21 4 1
  SETTABLEKS R21 R20 K45 ["Size"]
  LOADN R21 0
  SETTABLEKS R21 R20 K96 ["BackgroundTransparency"]
  LOADK R21 K199 ["$ForegroundMain"]
  SETTABLEKS R21 R20 K97 ["BackgroundColor3"]
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K138 [":hover"]
  DUPTABLE R24 K139 [{"BackgroundColor3"}]
  LOADK R25 K140 ["$ActionHover"]
  SETTABLEKS R25 R24 K97 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K150 [":press"]
  DUPTABLE R25 K139 [{"BackgroundColor3"}]
  LOADK R26 K137 ["$ActionActivated"]
  SETTABLEKS R26 R25 K97 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K200 [".DeriveRenderer"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K201 [">> ImageLabel"]
  DUPTABLE R25 K203 [{"ImageTransparency"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K202 ["ImageTransparency"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K204 [":hover >> ImageLabel"]
  DUPTABLE R26 K203 [{"ImageTransparency"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K202 ["ImageTransparency"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K205 [".BreadcrumbRadioSize"]
  DUPTABLE R22 K46 [{"Size"}]
  GETIMPORT R23 K37 [UDim2.new]
  LOADN R24 1
  LOADN R25 176
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K45 ["Size"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K206 [".PropertyCellDisabled >> TextBox"]
  DUPTABLE R23 K208 [{"TextTransparency"}]
  LOADK R24 K59 [0.5]
  SETTABLEKS R24 R23 K207 ["TextTransparency"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K209 [".FlexFill"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K210 ["::UIFlexItem"]
  DUPTABLE R28 K212 [{"FlexMode"}]
  GETIMPORT R29 K215 [Enum.UIFlexMode.Fill]
  SETTABLEKS R29 R28 K211 ["FlexMode"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K216 [".Stroke-Border ::UIStroke"]
  DUPTABLE R25 K217 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R26 K170 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K165 ["ApplyStrokeMode"]
  LOADK R26 K218 ["$Divider"]
  SETTABLEKS R26 R25 K166 ["Color"]
  LOADN R26 1
  SETTABLEKS R26 R25 K88 ["Thickness"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K219 [".compact >> .Input"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K101 ["::UIPadding"]
  DUPTABLE R30 K221 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
  GETIMPORT R31 K94 [UDim.new]
  LOADN R32 0
  LOADN R33 2
  CALL R31 2 1
  SETTABLEKS R31 R30 K129 ["PaddingTop"]
  GETIMPORT R31 K94 [UDim.new]
  LOADN R32 0
  LOADN R33 2
  CALL R31 2 1
  SETTABLEKS R31 R30 K220 ["PaddingBottom"]
  GETIMPORT R31 K94 [UDim.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K195 ["PaddingRight"]
  GETIMPORT R31 K94 [UDim.new]
  LOADN R32 0
  LOADN R33 5
  CALL R31 2 1
  SETTABLEKS R31 R30 K102 ["PaddingLeft"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 -1
  SETLIST R10 R11 -1 [17]
  MOVE R11 R7
  CALL R8 3 1
  RETURN R8 1
