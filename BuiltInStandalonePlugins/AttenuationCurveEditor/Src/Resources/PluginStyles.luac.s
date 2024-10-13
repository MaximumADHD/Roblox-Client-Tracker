MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["getFFlagAttenuationCurveEditorFixes"]
  CALL R2 0 1
  GETTABLEKS R3 R1 K10 ["getFFlagAttenuationCurveEditorEnableGhosting"]
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["Styling"]
  GETTABLEKS R5 R6 K14 ["createStyleRule"]
  GETTABLEKS R7 R4 K13 ["Styling"]
  GETTABLEKS R6 R7 K15 ["createStyleSheet"]
  GETIMPORT R7 K17 [game]
  LOADK R9 K18 ["ImprovedCursors"]
  NAMECALL R7 R7 K19 ["GetFastFlag"]
  CALL R7 2 1
  DUPTABLE R8 K28 [{"ColorCurve", "ColorCurveEnd", "ColorGridLine", "ColorKeypoint", "ColorKeypointSelected", "ColorKeypointHovered", "ColorKeypointPressed", "CursorOpenedHand"}]
  JUMPIFNOT R2 [+7]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 225
  LOADN R11 100
  LOADN R12 100
  CALL R9 3 1
  JUMP [+6]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 100
  LOADN R12 100
  CALL R9 3 1
  SETTABLEKS R9 R8 K20 ["ColorCurve"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+7]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 150
  LOADN R11 150
  LOADN R12 150
  CALL R9 3 1
  JUMP [+6]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 200
  LOADN R11 50
  LOADN R12 50
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["ColorCurveEnd"]
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+2]
  LOADNIL R9
  JUMP [+6]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 155
  LOADN R11 155
  LOADN R12 155
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["ColorGridLine"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 225
  LOADN R11 100
  LOADN R12 100
  CALL R9 3 1
  JUMP [+6]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 252
  LOADN R11 116
  LOADN R12 116
  CALL R9 3 1
  SETTABLEKS R9 R8 K23 ["ColorKeypoint"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 200
  LOADN R12 150
  CALL R9 3 1
  JUMP [+6]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K24 ["ColorKeypointSelected"]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 150
  LOADN R12 150
  CALL R9 3 1
  SETTABLEKS R9 R8 K25 ["ColorKeypointHovered"]
  GETIMPORT R9 K31 [Color3.fromRGB]
  LOADN R10 150
  LOADN R11 50
  LOADN R12 50
  CALL R9 3 1
  SETTABLEKS R9 R8 K26 ["ColorKeypointPressed"]
  JUMPIFNOT R7 [+2]
  LOADK R9 K32 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R9 K33 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R9 R8 K27 ["CursorOpenedHand"]
  NEWTABLE R9 0 12
  MOVE R10 R5
  LOADK R11 K34 [".GridLine"]
  DUPTABLE R12 K38 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K35 ["BorderSizePixel"]
  LOADN R13 2
  SETTABLEKS R13 R12 K36 ["ZIndex"]
  LOADK R13 K39 ["$ColorGridLine"]
  SETTABLEKS R13 R12 K37 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R5
  LOADK R12 K40 [".GridLabel"]
  DUPTABLE R13 K43 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K41 ["BackgroundTransparency"]
  LOADK R14 K39 ["$ColorGridLine"]
  SETTABLEKS R14 R13 K42 ["TextColor3"]
  CALL R11 2 1
  MOVE R12 R5
  LOADK R13 K44 [".CurvePointOuter"]
  DUPTABLE R14 K48 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Size", "ZIndex"}]
  GETIMPORT R15 K51 [Vector2.new]
  LOADK R16 K52 [0.5]
  LOADK R17 K52 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["AnchorPoint"]
  LOADN R15 1
  SETTABLEKS R15 R14 K41 ["BackgroundTransparency"]
  GETIMPORT R15 K53 [Color3.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R15 3 1
  SETTABLEKS R15 R14 K46 ["ImageColor3"]
  GETIMPORT R15 K56 [UDim2.fromOffset]
  LOADN R16 14
  LOADN R17 14
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["Size"]
  LOADN R15 4
  SETTABLEKS R15 R14 K36 ["ZIndex"]
  NEWTABLE R15 0 1
  MOVE R16 R5
  LOADK R17 K57 [".Selected, .Hovered, .Pressed"]
  DUPTABLE R18 K59 [{"Image", "ImageColor3"}]
  LOADK R19 K60 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R19 R18 K58 ["Image"]
  LOADK R19 K61 ["$ColorKeypointHighlight"]
  SETTABLEKS R19 R18 K46 ["ImageColor3"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R5
  LOADK R14 K62 [".CurvePoint"]
  DUPTABLE R15 K64 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
  GETIMPORT R16 K51 [Vector2.new]
  LOADK R17 K52 [0.5]
  LOADK R18 K52 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K45 ["AnchorPoint"]
  LOADN R16 1
  SETTABLEKS R16 R15 K41 ["BackgroundTransparency"]
  LOADK R16 K60 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R16 R15 K58 ["Image"]
  LOADK R16 K65 ["$ColorKeypoint"]
  SETTABLEKS R16 R15 K46 ["ImageColor3"]
  GETIMPORT R16 K67 [UDim2.fromScale]
  LOADK R17 K52 [0.5]
  LOADK R18 K52 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K63 ["Position"]
  GETIMPORT R16 K56 [UDim2.fromOffset]
  LOADN R17 10
  LOADN R18 10
  CALL R16 2 1
  SETTABLEKS R16 R15 K47 ["Size"]
  LOADN R16 5
  SETTABLEKS R16 R15 K36 ["ZIndex"]
  NEWTABLE R16 0 2
  MOVE R17 R5
  LOADK R18 K68 [".Pressed"]
  DUPTABLE R19 K69 [{"ImageColor3"}]
  LOADK R20 K70 ["$ColorKeypointPressed"]
  SETTABLEKS R20 R19 K46 ["ImageColor3"]
  CALL R17 2 1
  MOVE R18 R5
  LOADK R19 K71 [".Hovered"]
  DUPTABLE R20 K69 [{"ImageColor3"}]
  LOADK R21 K72 ["$ColorKeypointHovered"]
  SETTABLEKS R21 R20 K46 ["ImageColor3"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R5
  LOADK R15 K73 [".GhostPoint"]
  DUPTABLE R16 K75 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Size", "ZIndex"}]
  GETIMPORT R17 K51 [Vector2.new]
  LOADK R18 K52 [0.5]
  LOADK R19 K52 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K45 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K41 ["BackgroundTransparency"]
  LOADK R17 K60 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R17 R16 K58 ["Image"]
  LOADK R17 K39 ["$ColorGridLine"]
  SETTABLEKS R17 R16 K46 ["ImageColor3"]
  LOADK R17 K52 [0.5]
  SETTABLEKS R17 R16 K74 ["ImageTransparency"]
  GETIMPORT R17 K56 [UDim2.fromOffset]
  LOADN R18 6
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K47 ["Size"]
  LOADN R17 4
  SETTABLEKS R17 R16 K36 ["ZIndex"]
  CALL R14 2 1
  MOVE R15 R5
  LOADK R16 K76 [".CurveLinePath2D"]
  DUPTABLE R17 K78 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R18 4
  SETTABLEKS R18 R17 K36 ["ZIndex"]
  LOADN R18 2
  SETTABLEKS R18 R17 K77 ["Thickness"]
  LOADK R18 K79 ["$ColorCurve"]
  SETTABLEKS R18 R17 K29 ["Color3"]
  CALL R15 2 1
  MOVE R16 R5
  LOADK R17 K80 [".GhostLinePath2D"]
  DUPTABLE R18 K78 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R19 4
  SETTABLEKS R19 R18 K36 ["ZIndex"]
  LOADN R19 1
  SETTABLEKS R19 R18 K77 ["Thickness"]
  LOADK R19 K81 ["$ColorCurveEnd"]
  SETTABLEKS R19 R18 K29 ["Color3"]
  CALL R16 2 1
  MOVE R17 R5
  LOADK R18 K82 [".ScrollbarFrame"]
  DUPTABLE R19 K83 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R20 K84 [0.6]
  SETTABLEKS R20 R19 K41 ["BackgroundTransparency"]
  GETIMPORT R20 K31 [Color3.fromRGB]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R20 3 1
  SETTABLEKS R20 R19 K37 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R5
  LOADK R19 K85 [".ScrollbarButton"]
  DUPTABLE R20 K87 [{"BackgroundColor3", "BorderColor3", "TextColor3"}]
  LOADK R21 K88 ["$ColorScrollbarButton"]
  SETTABLEKS R21 R20 K37 ["BackgroundColor3"]
  LOADK R21 K89 ["$ColorScrollbarButtonBorder"]
  SETTABLEKS R21 R20 K86 ["BorderColor3"]
  LOADK R21 K90 ["$ColorScrollbarButtonText"]
  SETTABLEKS R21 R20 K42 ["TextColor3"]
  NEWTABLE R21 0 2
  MOVE R22 R5
  LOADK R23 K71 [".Hovered"]
  DUPTABLE R24 K91 [{"BackgroundColor3"}]
  LOADK R25 K92 ["$ColorScrollbarButtonHovered"]
  SETTABLEKS R25 R24 K37 ["BackgroundColor3"]
  CALL R22 2 1
  MOVE R23 R5
  LOADK R24 K68 [".Pressed"]
  DUPTABLE R25 K91 [{"BackgroundColor3"}]
  LOADK R26 K93 ["$ColorScrollbarButtonPressed"]
  SETTABLEKS R26 R25 K37 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R5
  LOADK R20 K94 [".SequenceKeypoint"]
  DUPTABLE R21 K96 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Size", "Text", "ZIndex"}]
  GETIMPORT R22 K51 [Vector2.new]
  LOADK R23 K52 [0.5]
  LOADK R24 K52 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K45 ["AnchorPoint"]
  LOADK R22 K65 ["$ColorKeypoint"]
  SETTABLEKS R22 R21 K37 ["BackgroundColor3"]
  LOADN R22 0
  SETTABLEKS R22 R21 K41 ["BackgroundTransparency"]
  GETIMPORT R22 K56 [UDim2.fromOffset]
  LOADN R23 8
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K47 ["Size"]
  LOADK R22 K97 [""]
  SETTABLEKS R22 R21 K95 ["Text"]
  LOADN R22 4
  SETTABLEKS R22 R21 K36 ["ZIndex"]
  NEWTABLE R22 0 1
  MOVE R23 R5
  LOADK R24 K98 [".Selected"]
  DUPTABLE R25 K91 [{"BackgroundColor3"}]
  LOADK R26 K99 ["$ColorKeypointSelected"]
  SETTABLEKS R26 R25 K37 ["BackgroundColor3"]
  NEWTABLE R26 0 1
  MOVE R27 R5
  LOADK R28 K100 ["::UIStroke"]
  DUPTABLE R29 K104 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R30 K107 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R30 R29 K101 ["ApplyStrokeMode"]
  GETIMPORT R30 K31 [Color3.fromRGB]
  LOADN R31 0
  LOADN R32 0
  LOADN R33 0
  CALL R30 3 1
  SETTABLEKS R30 R29 K102 ["Color"]
  LOADN R30 2
  SETTABLEKS R30 R29 K77 ["Thickness"]
  LOADK R30 K84 [0.6]
  SETTABLEKS R30 R29 K103 ["Transparency"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R5
  LOADK R21 K108 [".CurveLine"]
  DUPTABLE R22 K109 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K35 ["BorderSizePixel"]
  LOADN R23 3
  SETTABLEKS R23 R22 K36 ["ZIndex"]
  LOADK R23 K84 [0.6]
  SETTABLEKS R23 R22 K41 ["BackgroundTransparency"]
  LOADK R23 K65 ["$ColorKeypoint"]
  SETTABLEKS R23 R22 K37 ["BackgroundColor3"]
  NEWTABLE R23 0 2
  MOVE R24 R5
  LOADK R25 K110 [".SelectedStart"]
  DUPTABLE R26 K91 [{"BackgroundColor3"}]
  GETIMPORT R27 K31 [Color3.fromRGB]
  LOADN R28 255
  LOADN R29 255
  LOADN R30 255
  CALL R27 3 1
  SETTABLEKS R27 R26 K37 ["BackgroundColor3"]
  NEWTABLE R27 0 1
  MOVE R28 R5
  LOADK R29 K111 ["::UIGradient"]
  DUPTABLE R30 K112 [{"Color"}]
  GETIMPORT R31 K114 [ColorSequence.new]
  GETTABLEKS R32 R8 K24 ["ColorKeypointSelected"]
  GETTABLEKS R33 R8 K23 ["ColorKeypoint"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K102 ["Color"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R5
  LOADK R26 K115 [".SelectedEnd"]
  DUPTABLE R27 K91 [{"BackgroundColor3"}]
  GETIMPORT R28 K31 [Color3.fromRGB]
  LOADN R29 255
  LOADN R30 255
  LOADN R31 255
  CALL R28 3 1
  SETTABLEKS R28 R27 K37 ["BackgroundColor3"]
  NEWTABLE R28 0 1
  MOVE R29 R5
  LOADK R30 K111 ["::UIGradient"]
  DUPTABLE R31 K112 [{"Color"}]
  GETIMPORT R32 K114 [ColorSequence.new]
  GETTABLEKS R33 R8 K23 ["ColorKeypoint"]
  GETTABLEKS R34 R8 K24 ["ColorKeypointSelected"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K102 ["Color"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  GETTABLEKS R22 R1 K116 ["getFFlagAudioPluginFontFixAt"]
  CALL R22 0 1
  JUMPIFNOT R22 [+12]
  MOVE R21 R5
  LOADK R22 K117 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R23 K120 [{"Font", "TextSize"}]
  GETIMPORT R24 K122 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K118 ["Font"]
  LOADN R24 15
  SETTABLEKS R24 R23 K119 ["TextSize"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETLIST R9 R10 12 [1]
  MOVE R10 R6
  LOADK R11 K2 ["AttenuationCurveEditor"]
  MOVE R12 R9
  MOVE R13 R8
  CALL R10 3 -1
  RETURN R10 -1
