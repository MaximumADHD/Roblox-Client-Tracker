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
  DUPTABLE R5 K22 [{"ColorGridLine", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  GETIMPORT R6 K25 [Color3.fromRGB]
  LOADN R7 155
  LOADN R8 155
  LOADN R9 155
  CALL R6 3 1
  SETTABLEKS R6 R5 K18 ["ColorGridLine"]
  GETIMPORT R6 K25 [Color3.fromRGB]
  LOADN R7 252
  LOADN R8 116
  LOADN R9 116
  CALL R6 3 1
  SETTABLEKS R6 R5 K19 ["ColorKeypoint"]
  GETIMPORT R6 K25 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLEKS R6 R5 K20 ["ColorKeypointSelected"]
  JUMPIFNOT R4 [+2]
  LOADK R6 K26 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
  JUMP [+1]
  LOADK R6 K27 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R6 R5 K21 ["CursorOpenedHand"]
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K28 [".GridLine"]
  DUPTABLE R9 K32 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K29 ["BorderSizePixel"]
  LOADN R10 2
  SETTABLEKS R10 R9 K30 ["ZIndex"]
  LOADK R10 K33 ["$ColorGridLine"]
  SETTABLEKS R10 R9 K31 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K34 [".GridLabel"]
  DUPTABLE R10 K37 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K35 ["BackgroundTransparency"]
  LOADK R11 K33 ["$ColorGridLine"]
  SETTABLEKS R11 R10 K36 ["TextColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K38 [".SequenceKeypoint"]
  DUPTABLE R11 K42 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Size", "Text", "ZIndex"}]
  GETIMPORT R12 K45 [Vector2.new]
  LOADK R13 K46 [0.5]
  LOADK R14 K46 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["AnchorPoint"]
  LOADK R12 K47 ["$ColorKeypoint"]
  SETTABLEKS R12 R11 K31 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K35 ["BackgroundTransparency"]
  GETIMPORT R12 K50 [UDim2.fromOffset]
  LOADN R13 8
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K40 ["Size"]
  LOADK R12 K51 [""]
  SETTABLEKS R12 R11 K41 ["Text"]
  LOADN R12 4
  SETTABLEKS R12 R11 K30 ["ZIndex"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K52 [".Selected"]
  DUPTABLE R15 K53 [{"BackgroundColor3"}]
  LOADK R16 K54 ["$ColorKeypointSelected"]
  SETTABLEKS R16 R15 K31 ["BackgroundColor3"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K55 ["::UIStroke"]
  DUPTABLE R19 K60 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R20 K63 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R20 R19 K56 ["ApplyStrokeMode"]
  GETIMPORT R20 K25 [Color3.fromRGB]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R20 3 1
  SETTABLEKS R20 R19 K57 ["Color"]
  LOADN R20 2
  SETTABLEKS R20 R19 K58 ["Thickness"]
  LOADK R20 K64 [0.6]
  SETTABLEKS R20 R19 K59 ["Transparency"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K65 [".CurveLine"]
  DUPTABLE R12 K66 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K29 ["BorderSizePixel"]
  LOADN R13 3
  SETTABLEKS R13 R12 K30 ["ZIndex"]
  LOADK R13 K64 [0.6]
  SETTABLEKS R13 R12 K35 ["BackgroundTransparency"]
  LOADK R13 K47 ["$ColorKeypoint"]
  SETTABLEKS R13 R12 K31 ["BackgroundColor3"]
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K67 [".SelectedStart"]
  DUPTABLE R16 K53 [{"BackgroundColor3"}]
  GETIMPORT R17 K25 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 255
  LOADN R20 255
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["BackgroundColor3"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K68 ["::UIGradient"]
  DUPTABLE R20 K69 [{"Color"}]
  GETIMPORT R21 K71 [ColorSequence.new]
  GETTABLEKS R22 R5 K20 ["ColorKeypointSelected"]
  GETTABLEKS R23 R5 K19 ["ColorKeypoint"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K57 ["Color"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K72 [".SelectedEnd"]
  DUPTABLE R17 K53 [{"BackgroundColor3"}]
  GETIMPORT R18 K25 [Color3.fromRGB]
  LOADN R19 255
  LOADN R20 255
  LOADN R21 255
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["BackgroundColor3"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K68 ["::UIGradient"]
  DUPTABLE R21 K69 [{"Color"}]
  GETIMPORT R22 K71 [ColorSequence.new]
  GETTABLEKS R23 R5 K19 ["ColorKeypoint"]
  GETTABLEKS R24 R5 K20 ["ColorKeypointSelected"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K57 ["Color"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  GETIMPORT R12 K15 [game]
  LOADK R14 K73 ["AudioPluginFontFixAt"]
  NAMECALL R12 R12 K17 ["GetFastFlag"]
  CALL R12 2 1
  JUMPIFNOT R12 [+12]
  MOVE R11 R2
  LOADK R12 K74 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R13 K77 [{"Font", "TextSize"}]
  GETIMPORT R14 K79 [Enum.Font.SourceSans]
  SETTABLEKS R14 R13 K75 ["Font"]
  LOADN R14 15
  SETTABLEKS R14 R13 K76 ["TextSize"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETLIST R6 R7 5 [1]
  MOVE R7 R3
  LOADK R8 K2 ["AttenuationCurveEditor"]
  MOVE R9 R6
  MOVE R10 R5
  CALL R7 3 -1
  RETURN R7 -1
