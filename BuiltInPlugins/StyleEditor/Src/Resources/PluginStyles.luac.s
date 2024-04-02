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
  DUPTABLE R4 K25 [{"BorderSize", "ButtonHeight", "Icon16", "Icon22", "PaddingSm", "Padding", "PropertyCellSize", "SearchBarHeight", "Spacing", "TitleTextSize", "TokenTooltipRowHeight", "TooltipMaxWidth", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K10 ["BorderSize"]
  LOADN R5 36
  SETTABLEKS R5 R4 K11 ["ButtonHeight"]
  GETIMPORT R5 K28 [UDim2.fromOffset]
  LOADN R6 16
  LOADN R7 16
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Icon16"]
  GETIMPORT R5 K28 [UDim2.fromOffset]
  LOADN R6 22
  LOADN R7 22
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["Icon22"]
  LOADN R5 5
  SETTABLEKS R5 R4 K14 ["PaddingSm"]
  LOADN R5 10
  SETTABLEKS R5 R4 K15 ["Padding"]
  GETIMPORT R5 K30 [UDim2.new]
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
  LOADN R5 94
  SETTABLEKS R5 R4 K21 ["TooltipMaxWidth"]
  GETIMPORT R5 K33 [Color3.fromRGB]
  LOADN R6 252
  LOADN R7 116
  LOADN R8 116
  CALL R5 3 1
  SETTABLEKS R5 R4 K22 ["ColorKeypoint"]
  GETIMPORT R5 K33 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K23 ["ColorKeypointSelected"]
  LOADK R5 K34 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R5 R4 K24 ["CursorOpenedHand"]
  MOVE R5 R3
  LOADK R6 K35 ["StyleEditor"]
  NEWTABLE R7 0 25
  MOVE R8 R2
  LOADK R9 K36 [".Icon16"]
  DUPTABLE R10 K38 [{"Size"}]
  LOADK R11 K39 ["$Icon16"]
  SETTABLEKS R11 R10 K37 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K40 [".Icon22"]
  DUPTABLE R11 K38 [{"Size"}]
  LOADK R12 K41 ["$Icon22"]
  SETTABLEKS R12 R11 K37 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K42 [".ItemTextSize"]
  DUPTABLE R12 K44 [{"TextSize"}]
  LOADN R13 18
  SETTABLEKS R13 R12 K43 ["TextSize"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K45 [".PositionCenter"]
  DUPTABLE R13 K48 [{"AnchorPoint", "Position"}]
  GETIMPORT R14 K50 [Vector2.new]
  LOADK R15 K51 [0.5]
  LOADK R16 K51 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K46 ["AnchorPoint"]
  GETIMPORT R14 K53 [UDim2.fromScale]
  LOADK R15 K51 [0.5]
  LOADK R16 K51 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K47 ["Position"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K54 [".PositionRight"]
  DUPTABLE R14 K48 [{"AnchorPoint", "Position"}]
  GETIMPORT R15 K50 [Vector2.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["AnchorPoint"]
  GETIMPORT R15 K53 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["Position"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K55 [".PropertyCellSize"]
  DUPTABLE R15 K38 [{"Size"}]
  LOADK R16 K56 ["$PropertyCellSize"]
  SETTABLEKS R16 R15 K37 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K57 [".ScrollingAutomaticSize"]
  DUPTABLE R16 K60 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R17 K64 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K58 ["AutomaticCanvasSize"]
  GETIMPORT R17 K53 [UDim2.fromScale]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["CanvasSize"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K65 [".TextXAlignLeft"]
  DUPTABLE R17 K67 [{"TextXAlignment"}]
  GETIMPORT R18 K69 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K66 ["TextXAlignment"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K70 [".SearchInput"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K71 [">> UIStroke"]
  DUPTABLE R22 K73 [{"Thickness"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K72 ["Thickness"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K74 [">> UICorner"]
  DUPTABLE R23 K76 [{"CornerRadius"}]
  GETIMPORT R24 K78 [UDim.new]
  CALL R24 0 1
  SETTABLEKS R24 R23 K75 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K79 [".LeftItems"]
  DUPTABLE R19 K82 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K80 ["BackgroundTransparency"]
  LOADK R20 K83 ["$BackgroundPaper"]
  SETTABLEKS R20 R19 K81 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K84 [".TokenSource"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K85 ["::UIPadding"]
  DUPTABLE R24 K87 [{"PaddingLeft"}]
  GETIMPORT R25 K78 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K86 ["PaddingLeft"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K88 [">> .TokenSourceIcon"]
  DUPTABLE R25 K38 [{"Size"}]
  GETIMPORT R26 K28 [UDim2.fromOffset]
  LOADN R27 20
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K37 ["Size"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K89 [".PreviewGrid"]
  DUPTABLE R21 K92 [{"BackgroundTransparency", "ScaleType", "TileSize"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K80 ["BackgroundTransparency"]
  GETIMPORT R22 K94 [Enum.ScaleType.Tile]
  SETTABLEKS R22 R21 K90 ["ScaleType"]
  GETIMPORT R22 K28 [UDim2.fromOffset]
  LOADN R23 20
  LOADN R24 20
  CALL R22 2 1
  SETTABLEKS R22 R21 K91 ["TileSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K95 [".OnboardingPage"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 4
  MOVE R24 R2
  LOADK R25 K96 [":: UISizeConstraint"]
  DUPTABLE R26 K99 [{"MaxSize", "MinSize"}]
  GETIMPORT R27 K50 [Vector2.new]
  LOADN R28 144
  LOADN R29 144
  CALL R27 2 1
  SETTABLEKS R27 R26 K97 ["MaxSize"]
  GETIMPORT R27 K50 [Vector2.new]
  LOADN R28 180
  LOADN R29 180
  CALL R27 2 1
  SETTABLEKS R27 R26 K98 ["MinSize"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K100 ["> #StylingImage"]
  DUPTABLE R27 K38 [{"Size"}]
  GETIMPORT R28 K28 [UDim2.fromOffset]
  LOADN R29 144
  LOADN R30 180
  CALL R28 2 1
  SETTABLEKS R28 R27 K37 ["Size"]
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K101 [":: UIAspectRatioConstraint"]
  DUPTABLE R31 K104 [{"AspectRatio", "AspectType"}]
  LOADK R32 K105 [3.75]
  SETTABLEKS R32 R31 K102 ["AspectRatio"]
  GETIMPORT R32 K107 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R32 R31 K103 ["AspectType"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K108 ["> #Description"]
  DUPTABLE R28 K110 [{"TextSize", "TextWrapped"}]
  LOADN R29 16
  SETTABLEKS R29 R28 K43 ["TextSize"]
  LOADB R29 1
  SETTABLEKS R29 R28 K109 ["TextWrapped"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K111 ["> #ButtonContainer"]
  DUPTABLE R29 K38 [{"Size"}]
  GETIMPORT R30 K30 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 90
  CALL R30 4 1
  SETTABLEKS R30 R29 K37 ["Size"]
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K112 [":: UIPadding"]
  DUPTABLE R33 K114 [{"PaddingTop"}]
  GETIMPORT R34 K78 [UDim.new]
  LOADN R35 0
  LOADN R36 16
  CALL R34 2 1
  SETTABLEKS R34 R33 K113 ["PaddingTop"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K115 ["> #Link"]
  DUPTABLE R34 K116 [{"AnchorPoint"}]
  GETIMPORT R35 K50 [Vector2.new]
  LOADN R36 0
  LOADK R37 K51 [0.5]
  CALL R35 2 1
  SETTABLEKS R35 R34 K46 ["AnchorPoint"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K117 ["> #BlankButton"]
  DUPTABLE R35 K116 [{"AnchorPoint"}]
  GETIMPORT R36 K50 [Vector2.new]
  LOADN R37 1
  LOADK R38 K51 [0.5]
  CALL R36 2 1
  SETTABLEKS R36 R35 K46 ["AnchorPoint"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K118 [".FontStyle"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K119 ["Frame"]
  DUPTABLE R27 K120 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  LOADK R28 K121 ["$ActionActivated"]
  SETTABLEKS R28 R27 K81 ["BackgroundColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K80 ["BackgroundTransparency"]
  GETIMPORT R28 K28 [UDim2.fromOffset]
  LOADN R29 24
  LOADN R30 24
  CALL R28 2 1
  SETTABLEKS R28 R27 K37 ["Size"]
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K122 [":hover"]
  DUPTABLE R31 K123 [{"BackgroundColor3"}]
  LOADK R32 K124 ["$ActionHover"]
  SETTABLEKS R32 R31 K81 ["BackgroundColor3"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K125 [".Selected"]
  DUPTABLE R32 K123 [{"BackgroundColor3"}]
  LOADK R33 K126 ["$ActionEnabled"]
  SETTABLEKS R33 R32 K81 ["BackgroundColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K127 ["TextButton"]
  DUPTABLE R28 K130 [{"BackgroundTransparency", "RichText", "TextColor3"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K80 ["BackgroundTransparency"]
  LOADB R29 1
  SETTABLEKS R29 R28 K128 ["RichText"]
  LOADK R29 K131 ["$TextSecondary"]
  SETTABLEKS R29 R28 K129 ["TextColor3"]
  NEWTABLE R29 0 5
  MOVE R30 R2
  LOADK R31 K122 [":hover"]
  DUPTABLE R32 K132 [{"TextColor3"}]
  LOADK R33 K133 ["$TextContrast"]
  SETTABLEKS R33 R32 K129 ["TextColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K134 [":pressed"]
  DUPTABLE R33 K132 [{"TextColor3"}]
  LOADK R34 K133 ["$TextContrast"]
  SETTABLEKS R34 R33 K129 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K125 [".Selected"]
  DUPTABLE R34 K132 [{"TextColor3"}]
  LOADK R35 K135 ["$TextDisabled"]
  SETTABLEKS R35 R34 K129 ["TextColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K136 ["#BoldButton"]
  DUPTABLE R35 K138 [{"Text"}]
  LOADK R36 K139 ["<font family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
  SETTABLEKS R36 R35 K137 ["Text"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K140 ["#ItalicButton"]
  DUPTABLE R36 K138 [{"Text"}]
  LOADK R37 K141 ["<font family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
  SETTABLEKS R37 R36 K137 ["Text"]
  CALL R34 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K142 [".SequenceKeypoint"]
  DUPTABLE R24 K144 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
  GETIMPORT R25 K50 [Vector2.new]
  LOADK R26 K51 [0.5]
  LOADK R27 K51 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K46 ["AnchorPoint"]
  LOADK R25 K145 ["$ColorKeypoint"]
  SETTABLEKS R25 R24 K81 ["BackgroundColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K80 ["BackgroundTransparency"]
  LOADK R25 K146 [""]
  SETTABLEKS R25 R24 K137 ["Text"]
  LOADN R25 3
  SETTABLEKS R25 R24 K143 ["ZIndex"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K125 [".Selected"]
  DUPTABLE R28 K123 [{"BackgroundColor3"}]
  LOADK R29 K147 ["$ColorKeypointSelected"]
  SETTABLEKS R29 R28 K81 ["BackgroundColor3"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K148 ["::UIStroke"]
  DUPTABLE R32 K152 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R33 K154 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R33 R32 K149 ["ApplyStrokeMode"]
  GETIMPORT R33 K33 [Color3.fromRGB]
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R33 3 1
  SETTABLEKS R33 R32 K150 ["Color"]
  LOADN R33 2
  SETTABLEKS R33 R32 K72 ["Thickness"]
  LOADK R33 K155 [0.6]
  SETTABLEKS R33 R32 K151 ["Transparency"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K156 [".NumberSequenceKeypoint"]
  DUPTABLE R25 K38 [{"Size"}]
  GETIMPORT R26 K28 [UDim2.fromOffset]
  LOADN R27 8
  LOADN R28 8
  CALL R26 2 1
  SETTABLEKS R26 R25 K37 ["Size"]
  CALL R23 2 1
  SETLIST R7 R8 16 [1]
  MOVE R8 R2
  LOADK R9 K157 [".NumberSequenceLine"]
  DUPTABLE R10 K159 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K158 ["BorderSizePixel"]
  LOADN R11 2
  SETTABLEKS R11 R10 K143 ["ZIndex"]
  LOADK R11 K155 [0.6]
  SETTABLEKS R11 R10 K80 ["BackgroundTransparency"]
  LOADK R11 K145 ["$ColorKeypoint"]
  SETTABLEKS R11 R10 K81 ["BackgroundColor3"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K160 [".SelectedStart"]
  DUPTABLE R14 K123 [{"BackgroundColor3"}]
  GETIMPORT R15 K33 [Color3.fromRGB]
  LOADN R16 255
  LOADN R17 255
  LOADN R18 255
  CALL R15 3 1
  SETTABLEKS R15 R14 K81 ["BackgroundColor3"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K161 ["::UIGradient"]
  DUPTABLE R18 K162 [{"Color"}]
  GETIMPORT R19 K164 [ColorSequence.new]
  GETTABLEKS R20 R4 K23 ["ColorKeypointSelected"]
  GETTABLEKS R21 R4 K22 ["ColorKeypoint"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K150 ["Color"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K165 [".SelectedEnd"]
  DUPTABLE R15 K123 [{"BackgroundColor3"}]
  GETIMPORT R16 K33 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  CALL R16 3 1
  SETTABLEKS R16 R15 K81 ["BackgroundColor3"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K161 ["::UIGradient"]
  DUPTABLE R19 K162 [{"Color"}]
  GETIMPORT R20 K164 [ColorSequence.new]
  GETTABLEKS R21 R4 K22 ["ColorKeypoint"]
  GETTABLEKS R22 R4 K23 ["ColorKeypointSelected"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K150 ["Color"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K166 [".ColorSequenceKeypoint"]
  DUPTABLE R11 K38 [{"Size"}]
  GETIMPORT R12 K28 [UDim2.fromOffset]
  LOADN R13 8
  LOADN R14 16
  CALL R12 2 1
  SETTABLEKS R12 R11 K37 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K167 [".ColorSequenceLine"]
  DUPTABLE R12 K169 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
  GETIMPORT R13 K50 [Vector2.new]
  LOADK R14 K51 [0.5]
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K46 ["AnchorPoint"]
  GETIMPORT R13 K33 [Color3.fromRGB]
  LOADN R14 255
  LOADN R15 255
  LOADN R16 255
  CALL R13 3 1
  SETTABLEKS R13 R12 K81 ["BackgroundColor3"]
  LOADK R13 K170 [0.7]
  SETTABLEKS R13 R12 K80 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K168 ["BorderPixelSize"]
  GETIMPORT R13 K30 [UDim2.new]
  LOADN R14 0
  LOADN R15 2
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K37 ["Size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K143 ["ZIndex"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K125 [".Selected"]
  DUPTABLE R16 K171 [{"BackgroundTransparency"}]
  LOADK R17 K172 [0.4]
  SETTABLEKS R17 R16 K80 ["BackgroundTransparency"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K148 ["::UIStroke"]
  DUPTABLE R20 K173 [{"Color", "Thickness", "Transparency"}]
  GETIMPORT R21 K33 [Color3.fromRGB]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R21 3 1
  SETTABLEKS R21 R20 K150 ["Color"]
  LOADN R21 2
  SETTABLEKS R21 R20 K72 ["Thickness"]
  LOADK R21 K174 [0.75]
  SETTABLEKS R21 R20 K151 ["Transparency"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K175 [".SequencePreviewButton"]
  DUPTABLE R13 K176 [{"Size", "BackgroundColor3"}]
  GETIMPORT R14 K28 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 20
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["Size"]
  GETIMPORT R14 K177 [Color3.new]
  LOADN R15 1
  LOADN R16 1
  LOADN R17 1
  CALL R14 3 1
  SETTABLEKS R14 R13 K81 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K178 [".LabelCell"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K85 ["::UIPadding"]
  DUPTABLE R18 K180 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R19 K78 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K86 ["PaddingLeft"]
  GETIMPORT R19 K78 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K179 ["PaddingRight"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K181 [".DropdownItem"]
  DUPTABLE R15 K182 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 40
  CALL R16 4 1
  SETTABLEKS R16 R15 K37 ["Size"]
  LOADN R16 0
  SETTABLEKS R16 R15 K80 ["BackgroundTransparency"]
  LOADK R16 K183 ["$ForegroundMain"]
  SETTABLEKS R16 R15 K81 ["BackgroundColor3"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K122 [":hover"]
  DUPTABLE R19 K123 [{"BackgroundColor3"}]
  LOADK R20 K124 ["$ActionHover"]
  SETTABLEKS R20 R19 K81 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K134 [":pressed"]
  DUPTABLE R20 K123 [{"BackgroundColor3"}]
  LOADK R21 K121 ["$ActionActivated"]
  SETTABLEKS R21 R20 K81 ["BackgroundColor3"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K184 [".DeriveRenderer"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K185 [">> ImageLabel"]
  DUPTABLE R20 K187 [{"ImageTransparency"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K186 ["ImageTransparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K188 [":hover >> ImageLabel"]
  DUPTABLE R21 K187 [{"ImageTransparency"}]
  LOADN R22 0
  SETTABLEKS R22 R21 K186 ["ImageTransparency"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K189 [".BreadcrumbRadioSize"]
  DUPTABLE R17 K38 [{"Size"}]
  GETIMPORT R18 K30 [UDim2.new]
  LOADN R19 1
  LOADN R20 176
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K37 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K190 [".PropertyCellDisabled >> TextBox"]
  DUPTABLE R18 K192 [{"TextTransparency"}]
  LOADK R19 K51 [0.5]
  SETTABLEKS R19 R18 K191 ["TextTransparency"]
  CALL R16 2 -1
  SETLIST R7 R8 -1 [17]
  MOVE R8 R4
  CALL R5 3 1
  RETURN R5 1
