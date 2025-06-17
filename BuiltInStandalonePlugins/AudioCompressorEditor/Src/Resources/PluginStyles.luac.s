MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioCompressorEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  GETIMPORT R4 K12 [game]
  LOADK R6 K13 ["ImprovedCursors"]
  NAMECALL R4 R4 K14 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K15 ["Bin"]
  GETTABLEKS R8 R9 K16 ["Common"]
  GETTABLEKS R7 R8 K17 ["defineLuaFlags"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K18 ["getFFlagAudioCompressorEditorFontFix"]
  CALL R5 0 1
  DUPTABLE R6 K35 [{"ColorControlPoint", "ColorControlPointHovered", "ColorControlPointPressed", "ColorControlLine", "ColorAnalyzerCurveIn", "ColorAnalyzerCurveOut", "ColorAnalyzerCurveGain", "ColorAnalyzerCurveSidechain", "ColorCurve", "ColorCurveDisabled", "ColorGridLine", "ColorKnobArc", "ColorKnobTick", "CursorOpenedHand", "CursorHorizontal", "CursorVertical"}]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K19 ["ColorControlPoint"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 175
  LOADN R9 70
  LOADN R10 75
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["ColorControlPointHovered"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 100
  LOADN R9 30
  LOADN R10 50
  CALL R7 3 1
  SETTABLEKS R7 R6 K21 ["ColorControlPointPressed"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 100
  LOADN R9 200
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K22 ["ColorControlLine"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 150
  LOADN R9 100
  LOADN R10 50
  CALL R7 3 1
  SETTABLEKS R7 R6 K23 ["ColorAnalyzerCurveIn"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 200
  LOADN R9 150
  LOADN R10 75
  CALL R7 3 1
  SETTABLEKS R7 R6 K24 ["ColorAnalyzerCurveOut"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 150
  LOADN R9 200
  LOADN R10 75
  CALL R7 3 1
  SETTABLEKS R7 R6 K25 ["ColorAnalyzerCurveGain"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 150
  LOADN R9 75
  LOADN R10 225
  CALL R7 3 1
  SETTABLEKS R7 R6 K26 ["ColorAnalyzerCurveSidechain"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K27 ["ColorCurve"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 155
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K28 ["ColorCurveDisabled"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 155
  LOADN R9 155
  LOADN R10 155
  CALL R7 3 1
  SETTABLEKS R7 R6 K29 ["ColorGridLine"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 0
  LOADN R9 155
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K30 ["ColorKnobArc"]
  GETIMPORT R7 K38 [Color3.fromRGB]
  LOADN R8 0
  LOADN R9 155
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K31 ["ColorKnobTick"]
  JUMPIFNOT R4 [+2]
  LOADK R7 K39 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R7 K40 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R7 R6 K32 ["CursorOpenedHand"]
  LOADK R7 K41 ["SizeEW"]
  SETTABLEKS R7 R6 K33 ["CursorHorizontal"]
  LOADK R7 K42 ["SizeNS"]
  SETTABLEKS R7 R6 K34 ["CursorVertical"]
  NEWTABLE R7 0 20
  MOVE R8 R2
  LOADK R9 K43 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R10 K46 [{"FontFace", "Font"}]
  JUMPIFNOT R5 [+2]
  LOADNIL R11
  JUMP [+2]
  GETIMPORT R11 K49 [Enum.Font.SourceSans]
  SETTABLEKS R11 R10 K44 ["FontFace"]
  JUMPIFNOT R5 [+3]
  GETIMPORT R11 K49 [Enum.Font.SourceSans]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K45 ["Font"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K50 [".Input"]
  DUPTABLE R11 K52 [{"BackgroundColor3"}]
  LOADK R12 K53 ["$ColorInputBox"]
  SETTABLEKS R12 R11 K51 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K54 [".GridLine"]
  DUPTABLE R12 K57 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K55 ["BorderSizePixel"]
  LOADN R13 2
  SETTABLEKS R13 R12 K56 ["ZIndex"]
  LOADK R13 K58 ["$ColorGridLine"]
  SETTABLEKS R13 R12 K51 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K59 [".GridLabel"]
  DUPTABLE R13 K63 [{"BackgroundTransparency", "TextColor3", "TextSize"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K60 ["BackgroundTransparency"]
  LOADK R14 K58 ["$ColorGridLine"]
  SETTABLEKS R14 R13 K61 ["TextColor3"]
  JUMPIFNOT R5 [+2]
  LOADN R14 18
  JUMP [+1]
  LOADN R14 10
  SETTABLEKS R14 R13 K62 ["TextSize"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K64 [".ControlLabel"]
  DUPTABLE R17 K65 [{"TextColor3"}]
  LOADK R18 K66 ["$ColorControlLine"]
  SETTABLEKS R18 R17 K61 ["TextColor3"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K67 [".AnalyzerCurveSidechain"]
  DUPTABLE R14 K69 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R15 4
  SETTABLEKS R15 R14 K56 ["ZIndex"]
  LOADK R15 K70 ["$ColorAnalyzerCurveSidechain"]
  SETTABLEKS R15 R14 K36 ["Color3"]
  LOADN R15 1
  SETTABLEKS R15 R14 K68 ["Thickness"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K71 [".AnalyzerCurveIn"]
  DUPTABLE R15 K69 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R16 5
  SETTABLEKS R16 R15 K56 ["ZIndex"]
  LOADK R16 K72 ["$ColorAnalyzerCurveIn"]
  SETTABLEKS R16 R15 K36 ["Color3"]
  LOADN R16 1
  SETTABLEKS R16 R15 K68 ["Thickness"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K73 [".AnalyzerCurveOut"]
  DUPTABLE R16 K69 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R17 6
  SETTABLEKS R17 R16 K56 ["ZIndex"]
  LOADK R17 K74 ["$ColorAnalyzerCurveOut"]
  SETTABLEKS R17 R16 K36 ["Color3"]
  LOADN R17 1
  SETTABLEKS R17 R16 K68 ["Thickness"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K75 [".AnalyzerCurveGain"]
  DUPTABLE R17 K69 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R18 7
  SETTABLEKS R18 R17 K56 ["ZIndex"]
  LOADK R18 K76 ["$ColorAnalyzerCurveGain"]
  SETTABLEKS R18 R17 K36 ["Color3"]
  LOADN R18 1
  SETTABLEKS R18 R17 K68 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K77 [".Curve"]
  DUPTABLE R18 K69 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R19 10
  SETTABLEKS R19 R18 K56 ["ZIndex"]
  LOADK R19 K78 ["$ColorCurve"]
  SETTABLEKS R19 R18 K36 ["Color3"]
  LOADN R19 2
  SETTABLEKS R19 R18 K68 ["Thickness"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K79 [".CurveDisabled"]
  DUPTABLE R19 K69 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R20 10
  SETTABLEKS R20 R19 K56 ["ZIndex"]
  LOADK R20 K80 ["$ColorCurveDisabled"]
  SETTABLEKS R20 R19 K36 ["Color3"]
  LOADN R20 2
  SETTABLEKS R20 R19 K68 ["Thickness"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K81 [".ControlPoint"]
  DUPTABLE R20 K86 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Size", "ZIndex"}]
  GETIMPORT R21 K89 [Vector2.new]
  LOADK R22 K90 [0.5]
  LOADK R23 K90 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K82 ["AnchorPoint"]
  LOADN R21 1
  SETTABLEKS R21 R20 K60 ["BackgroundTransparency"]
  LOADK R21 K91 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R21 R20 K83 ["Image"]
  LOADK R21 K92 ["$ColorControlPoint"]
  SETTABLEKS R21 R20 K84 ["ImageColor3"]
  GETIMPORT R21 K95 [UDim2.fromOffset]
  LOADN R22 12
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K85 ["Size"]
  LOADN R21 20
  SETTABLEKS R21 R20 K56 ["ZIndex"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K96 [".ControlLine"]
  DUPTABLE R21 K57 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R22 0
  SETTABLEKS R22 R21 K55 ["BorderSizePixel"]
  LOADN R22 20
  SETTABLEKS R22 R21 K56 ["ZIndex"]
  LOADK R22 K66 ["$ColorControlLine"]
  SETTABLEKS R22 R21 K51 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K97 [".GridCurve"]
  DUPTABLE R22 K98 [{"Color3", "Thickness"}]
  LOADK R23 K58 ["$ColorGridLine"]
  SETTABLEKS R23 R22 K36 ["Color3"]
  LOADN R23 2
  SETTABLEKS R23 R22 K68 ["Thickness"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K99 [".GuideCurve"]
  DUPTABLE R23 K98 [{"Color3", "Thickness"}]
  LOADK R24 K66 ["$ColorControlLine"]
  SETTABLEKS R24 R23 K36 ["Color3"]
  LOADN R24 1
  SETTABLEKS R24 R23 K68 ["Thickness"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K100 [".Knob"]
  DUPTABLE R24 K101 [{"BackgroundTransparency", "Image", "ImageColor3"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K60 ["BackgroundTransparency"]
  LOADK R25 K91 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R25 R24 K83 ["Image"]
  LOADK R25 K102 ["$ColorKnob"]
  SETTABLEKS R25 R24 K84 ["ImageColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K103 [".KnobBackArc"]
  DUPTABLE R25 K98 [{"Color3", "Thickness"}]
  LOADK R26 K104 ["$ColorKnobBackArc"]
  SETTABLEKS R26 R25 K36 ["Color3"]
  LOADN R26 3
  SETTABLEKS R26 R25 K68 ["Thickness"]
  CALL R23 2 1
  SETLIST R7 R8 16 [1]
  MOVE R8 R2
  LOADK R9 K105 [".KnobArc"]
  DUPTABLE R10 K98 [{"Color3", "Thickness"}]
  LOADK R11 K106 ["$ColorKnobArc"]
  SETTABLEKS R11 R10 K36 ["Color3"]
  LOADN R11 3
  SETTABLEKS R11 R10 K68 ["Thickness"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K107 [".KnobTick"]
  DUPTABLE R11 K98 [{"Color3", "Thickness"}]
  LOADK R12 K108 ["$ColorKnobTick"]
  SETTABLEKS R12 R11 K36 ["Color3"]
  LOADN R12 3
  SETTABLEKS R12 R11 K68 ["Thickness"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K109 [".TopButton"]
  DUPTABLE R12 K110 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K60 ["BackgroundTransparency"]
  LOADK R13 K111 ["$ColorTopButton"]
  SETTABLEKS R13 R12 K51 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K112 [".DoubleArrowButton"]
  NEWTABLE R13 0 0
  CALL R11 2 -1
  SETLIST R7 R8 -1 [17]
  MOVE R8 R3
  LOADK R9 K2 ["AudioCompressorEditor"]
  MOVE R10 R7
  MOVE R11 R6
  CALL R8 3 -1
  RETURN R8 -1
