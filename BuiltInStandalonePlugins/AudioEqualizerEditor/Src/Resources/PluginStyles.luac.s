MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioEqualizerEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K11 ["Styling"]
  GETTABLEKS R3 R4 K12 ["createStyleRule"]
  GETTABLEKS R5 R2 K11 ["Styling"]
  GETTABLEKS R4 R5 K13 ["createStyleSheet"]
  GETIMPORT R5 K15 [game]
  LOADK R7 K16 ["ImprovedCursors"]
  NAMECALL R5 R5 K17 ["GetFastFlag"]
  CALL R5 2 1
  DUPTABLE R6 K27 [{"ColorControlPoint", "ColorControlPointHovered", "ColorControlPointPressed", "ColorAnalyzerCurve", "ColorFullCurve", "ColorFullCurveDisabled", "ColorCurve", "ColorGridLine", "CursorOpenedHand"}]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["ColorControlPoint"]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 175
  LOADN R9 70
  LOADN R10 75
  CALL R7 3 1
  SETTABLEKS R7 R6 K19 ["ColorControlPointHovered"]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 100
  LOADN R9 30
  LOADN R10 50
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["ColorControlPointPressed"]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 200
  LOADN R9 150
  LOADN R10 75
  CALL R7 3 1
  SETTABLEKS R7 R6 K21 ["ColorAnalyzerCurve"]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K22 ["ColorFullCurve"]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 155
  LOADN R9 100
  LOADN R10 100
  CALL R7 3 1
  SETTABLEKS R7 R6 K23 ["ColorFullCurveDisabled"]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 155
  LOADN R9 155
  LOADN R10 155
  CALL R7 3 1
  SETTABLEKS R7 R6 K24 ["ColorCurve"]
  GETIMPORT R7 K30 [Color3.fromRGB]
  LOADN R8 155
  LOADN R9 155
  LOADN R10 155
  CALL R7 3 1
  SETTABLEKS R7 R6 K25 ["ColorGridLine"]
  JUMPIFNOT R5 [+2]
  LOADK R7 K31 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R7 K32 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R7 R6 K26 ["CursorOpenedHand"]
  NEWTABLE R7 0 8
  MOVE R8 R3
  LOADK R9 K33 [".GridLine"]
  DUPTABLE R10 K37 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K34 ["BorderSizePixel"]
  LOADN R11 2
  SETTABLEKS R11 R10 K35 ["ZIndex"]
  LOADK R11 K38 ["$ColorGridLine"]
  SETTABLEKS R11 R10 K36 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K39 [".GridLabel"]
  DUPTABLE R11 K42 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K40 ["BackgroundTransparency"]
  LOADK R12 K38 ["$ColorGridLine"]
  SETTABLEKS R12 R11 K41 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K43 [".AnalyzerCurve"]
  DUPTABLE R12 K45 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R13 10
  SETTABLEKS R13 R12 K35 ["ZIndex"]
  LOADK R13 K46 ["$ColorAnalyzerCurve"]
  SETTABLEKS R13 R12 K28 ["Color3"]
  LOADN R13 1
  SETTABLEKS R13 R12 K44 ["Thickness"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K47 [".FullCurve"]
  DUPTABLE R13 K45 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K35 ["ZIndex"]
  LOADK R14 K48 ["$ColorFullCurve"]
  SETTABLEKS R14 R13 K28 ["Color3"]
  LOADN R14 2
  SETTABLEKS R14 R13 K44 ["Thickness"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K49 [".FullCurveDisabled"]
  DUPTABLE R14 K45 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R15 10
  SETTABLEKS R15 R14 K35 ["ZIndex"]
  LOADK R15 K50 ["$ColorFullCurveDisabled"]
  SETTABLEKS R15 R14 K28 ["Color3"]
  LOADN R15 2
  SETTABLEKS R15 R14 K44 ["Thickness"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K51 [".Curve"]
  DUPTABLE R15 K45 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R16 9
  SETTABLEKS R16 R15 K35 ["ZIndex"]
  LOADK R16 K52 ["$ColorCurve"]
  SETTABLEKS R16 R15 K28 ["Color3"]
  LOADN R16 1
  SETTABLEKS R16 R15 K44 ["Thickness"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K53 [".ControlPoint"]
  DUPTABLE R16 K58 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Size", "ZIndex"}]
  GETIMPORT R17 K61 [Vector2.new]
  LOADK R18 K62 [0.5]
  LOADK R19 K62 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K54 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K40 ["BackgroundTransparency"]
  LOADK R17 K63 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R17 R16 K55 ["Image"]
  LOADK R17 K64 ["$ColorControlPoint"]
  SETTABLEKS R17 R16 K56 ["ImageColor3"]
  GETIMPORT R17 K67 [UDim2.fromOffset]
  LOADN R18 24
  LOADN R19 24
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["Size"]
  LOADN R17 20
  SETTABLEKS R17 R16 K35 ["ZIndex"]
  NEWTABLE R17 0 4
  MOVE R18 R3
  LOADK R19 K68 ["> ImageLabel"]
  DUPTABLE R20 K71 [{"BackgroundTransparency", "Image", "ImageTransparency", "Position", "Size", "ZIndex"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K40 ["BackgroundTransparency"]
  LOADK R21 K63 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R21 R20 K55 ["Image"]
  LOADK R21 K72 [0.6]
  SETTABLEKS R21 R20 K69 ["ImageTransparency"]
  GETIMPORT R21 K74 [UDim2.fromScale]
  LOADK R22 K75 [0.1]
  LOADK R23 K75 [0.1]
  CALL R21 2 1
  SETTABLEKS R21 R20 K70 ["Position"]
  GETIMPORT R21 K74 [UDim2.fromScale]
  LOADK R22 K76 [0.8]
  LOADK R23 K76 [0.8]
  CALL R21 2 1
  SETTABLEKS R21 R20 K57 ["Size"]
  LOADN R21 21
  SETTABLEKS R21 R20 K35 ["ZIndex"]
  CALL R18 2 1
  MOVE R19 R3
  LOADK R20 K77 ["> TextLabel"]
  DUPTABLE R21 K80 [{"BackgroundTransparency", "FontFace", "Position", "Size", "TextSize", "ZIndex"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K40 ["BackgroundTransparency"]
  GETIMPORT R22 K82 [Font.new]
  LOADK R23 K83 ["rbxasset://fonts/families/Montserrat.json"]
  GETIMPORT R24 K87 [Enum.FontWeight.Bold]
  CALL R22 2 1
  SETTABLEKS R22 R21 K78 ["FontFace"]
  GETIMPORT R22 K74 [UDim2.fromScale]
  LOADK R23 K75 [0.1]
  LOADK R24 K75 [0.1]
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["Position"]
  GETIMPORT R22 K74 [UDim2.fromScale]
  LOADK R23 K76 [0.8]
  LOADK R24 K76 [0.8]
  CALL R22 2 1
  SETTABLEKS R22 R21 K57 ["Size"]
  LOADN R22 18
  SETTABLEKS R22 R21 K79 ["TextSize"]
  LOADN R22 22
  SETTABLEKS R22 R21 K35 ["ZIndex"]
  CALL R19 2 1
  MOVE R20 R3
  LOADK R21 K88 [".Hovered"]
  DUPTABLE R22 K89 [{"ImageColor3"}]
  LOADK R23 K90 ["$ColorControlPointHovered"]
  SETTABLEKS R23 R22 K56 ["ImageColor3"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K91 [".Pressed"]
  DUPTABLE R23 K89 [{"ImageColor3"}]
  LOADK R24 K92 ["$ColorControlPointPressed"]
  SETTABLEKS R24 R23 K56 ["ImageColor3"]
  CALL R21 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  GETTABLEKS R16 R1 K93 ["getFFlagAudioPluginFontFixEq"]
  CALL R16 0 1
  JUMPIFNOT R16 [+12]
  MOVE R15 R3
  LOADK R16 K94 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R17 K95 [{"Font", "TextSize"}]
  GETIMPORT R18 K97 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K81 ["Font"]
  LOADN R18 15
  SETTABLEKS R18 R17 K79 ["TextSize"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETLIST R7 R8 8 [1]
  MOVE R8 R4
  LOADK R9 K2 ["AudioEqualizerEditor"]
  MOVE R10 R7
  MOVE R11 R6
  CALL R8 3 -1
  RETURN R8 -1
