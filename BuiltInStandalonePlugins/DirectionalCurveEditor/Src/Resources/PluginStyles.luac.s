MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DirectionalCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K9 ["Packages"]
  GETTABLEKS R2 R3 K10 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K11 ["Styling"]
  GETTABLEKS R2 R3 K12 ["createStyleRule"]
  GETTABLEKS R4 R1 K11 ["Styling"]
  GETTABLEKS R3 R4 K13 ["createStyleSheet"]
  GETIMPORT R4 K15 [game]
  LOADK R6 K16 ["ImprovedCursors"]
  NAMECALL R4 R4 K17 ["GetFastFlag"]
  CALL R4 2 1
  DUPTABLE R5 K25 [{"ColorCurve", "ColorCurveEnd", "ColorGridLine", "ColorGridLinePath", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  GETIMPORT R6 K28 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 100
  LOADN R9 100
  CALL R6 3 1
  SETTABLEKS R6 R5 K18 ["ColorCurve"]
  GETIMPORT R6 K28 [Color3.fromRGB]
  LOADN R7 200
  LOADN R8 50
  LOADN R9 50
  CALL R6 3 1
  SETTABLEKS R6 R5 K19 ["ColorCurveEnd"]
  GETIMPORT R6 K28 [Color3.fromRGB]
  LOADN R7 155
  LOADN R8 155
  LOADN R9 155
  CALL R6 3 1
  SETTABLEKS R6 R5 K20 ["ColorGridLine"]
  GETIMPORT R6 K28 [Color3.fromRGB]
  LOADN R7 100
  LOADN R8 100
  LOADN R9 100
  CALL R6 3 1
  SETTABLEKS R6 R5 K21 ["ColorGridLinePath"]
  GETIMPORT R6 K28 [Color3.fromRGB]
  LOADN R7 252
  LOADN R8 116
  LOADN R9 116
  CALL R6 3 1
  SETTABLEKS R6 R5 K22 ["ColorKeypoint"]
  GETIMPORT R6 K28 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLEKS R6 R5 K23 ["ColorKeypointSelected"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K29 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R6 K30 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R6 R5 K24 ["CursorOpenedHand"]
  NEWTABLE R6 0 9
  MOVE R7 R2
  LOADK R8 K31 [".GridLine"]
  DUPTABLE R9 K35 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K32 ["BorderSizePixel"]
  LOADN R10 2
  SETTABLEKS R10 R9 K33 ["ZIndex"]
  LOADK R10 K36 ["$ColorGridLine"]
  SETTABLEKS R10 R9 K34 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K37 [".GridLinePath2D"]
  DUPTABLE R10 K39 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R11 255
  SETTABLEKS R11 R10 K33 ["ZIndex"]
  LOADN R11 1
  SETTABLEKS R11 R10 K38 ["Thickness"]
  LOADK R11 K40 ["$ColorGridLinePath"]
  SETTABLEKS R11 R10 K26 ["Color3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K41 [".GridLabel"]
  DUPTABLE R11 K44 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K42 ["BackgroundTransparency"]
  LOADK R12 K36 ["$ColorGridLine"]
  SETTABLEKS R12 R11 K43 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K45 [".CurvePoint"]
  DUPTABLE R12 K50 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Size", "ZIndex"}]
  GETIMPORT R13 K53 [Vector2.new]
  LOADK R14 K54 [0.5]
  LOADK R15 K54 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K46 ["AnchorPoint"]
  LOADN R13 1
  SETTABLEKS R13 R12 K42 ["BackgroundTransparency"]
  LOADK R13 K55 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R13 R12 K47 ["Image"]
  LOADK R13 K56 ["$ColorKeypoint"]
  SETTABLEKS R13 R12 K48 ["ImageColor3"]
  GETIMPORT R13 K59 [UDim2.fromOffset]
  LOADN R14 4
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K49 ["Size"]
  LOADN R13 5
  SETTABLEKS R13 R12 K33 ["ZIndex"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K60 [".SequenceKeypoint"]
  DUPTABLE R13 K62 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Size", "Text", "ZIndex"}]
  GETIMPORT R14 K53 [Vector2.new]
  LOADK R15 K54 [0.5]
  LOADK R16 K54 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K46 ["AnchorPoint"]
  LOADK R14 K56 ["$ColorKeypoint"]
  SETTABLEKS R14 R13 K34 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K42 ["BackgroundTransparency"]
  GETIMPORT R14 K59 [UDim2.fromOffset]
  LOADN R15 8
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K49 ["Size"]
  LOADK R14 K63 [""]
  SETTABLEKS R14 R13 K61 ["Text"]
  LOADN R14 4
  SETTABLEKS R14 R13 K33 ["ZIndex"]
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K64 [".Selected"]
  DUPTABLE R17 K65 [{"BackgroundColor3"}]
  LOADK R18 K66 ["$ColorKeypointSelected"]
  SETTABLEKS R18 R17 K34 ["BackgroundColor3"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K67 ["::UIStroke"]
  DUPTABLE R21 K71 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R22 K74 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R22 R21 K68 ["ApplyStrokeMode"]
  GETIMPORT R22 K28 [Color3.fromRGB]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  CALL R22 3 1
  SETTABLEKS R22 R21 K69 ["Color"]
  LOADN R22 2
  SETTABLEKS R22 R21 K38 ["Thickness"]
  LOADK R22 K75 [0.6]
  SETTABLEKS R22 R21 K70 ["Transparency"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K76 [".CurveLine"]
  DUPTABLE R14 K77 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K32 ["BorderSizePixel"]
  LOADN R15 3
  SETTABLEKS R15 R14 K33 ["ZIndex"]
  LOADK R15 K75 [0.6]
  SETTABLEKS R15 R14 K42 ["BackgroundTransparency"]
  LOADK R15 K56 ["$ColorKeypoint"]
  SETTABLEKS R15 R14 K34 ["BackgroundColor3"]
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K78 [".SelectedStart"]
  DUPTABLE R18 K65 [{"BackgroundColor3"}]
  GETIMPORT R19 K28 [Color3.fromRGB]
  LOADN R20 255
  LOADN R21 255
  LOADN R22 255
  CALL R19 3 1
  SETTABLEKS R19 R18 K34 ["BackgroundColor3"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K79 ["::UIGradient"]
  DUPTABLE R22 K80 [{"Color"}]
  GETIMPORT R23 K82 [ColorSequence.new]
  GETTABLEKS R24 R5 K23 ["ColorKeypointSelected"]
  GETTABLEKS R25 R5 K22 ["ColorKeypoint"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["Color"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K83 [".SelectedEnd"]
  DUPTABLE R19 K65 [{"BackgroundColor3"}]
  GETIMPORT R20 K28 [Color3.fromRGB]
  LOADN R21 255
  LOADN R22 255
  LOADN R23 255
  CALL R20 3 1
  SETTABLEKS R20 R19 K34 ["BackgroundColor3"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K79 ["::UIGradient"]
  DUPTABLE R23 K80 [{"Color"}]
  GETIMPORT R24 K82 [ColorSequence.new]
  GETTABLEKS R25 R5 K22 ["ColorKeypoint"]
  GETTABLEKS R26 R5 K23 ["ColorKeypointSelected"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K69 ["Color"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K84 [".CurveLinePath2D"]
  DUPTABLE R15 K39 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R16 4
  SETTABLEKS R16 R15 K33 ["ZIndex"]
  LOADN R16 2
  SETTABLEKS R16 R15 K38 ["Thickness"]
  LOADK R16 K85 ["$ColorCurve"]
  SETTABLEKS R16 R15 K26 ["Color3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K86 [".EndLinePath2D"]
  DUPTABLE R16 K39 [{"ZIndex", "Thickness", "Color3"}]
  LOADN R17 4
  SETTABLEKS R17 R16 K33 ["ZIndex"]
  LOADN R17 1
  SETTABLEKS R17 R16 K38 ["Thickness"]
  LOADK R17 K87 ["$ColorCurveEnd"]
  SETTABLEKS R17 R16 K26 ["Color3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K88 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R17 K91 [{"Font", "TextSize"}]
  GETIMPORT R18 K93 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K89 ["Font"]
  LOADN R18 15
  SETTABLEKS R18 R17 K90 ["TextSize"]
  CALL R15 2 -1
  SETLIST R6 R7 -1 [1]
  MOVE R7 R3
  LOADK R8 K2 ["DirectionalCurveEditor"]
  MOVE R9 R6
  MOVE R10 R5
  CALL R7 3 -1
  RETURN R7 -1
