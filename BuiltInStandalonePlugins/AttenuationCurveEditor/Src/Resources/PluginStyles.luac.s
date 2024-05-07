MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
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
  DUPTABLE R4 K15 [{"ColorGridLine", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  GETIMPORT R5 K18 [Color3.fromRGB]
  LOADN R6 155
  LOADN R7 155
  LOADN R8 155
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["ColorGridLine"]
  GETIMPORT R5 K18 [Color3.fromRGB]
  LOADN R6 252
  LOADN R7 116
  LOADN R8 116
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["ColorKeypoint"]
  GETIMPORT R5 K18 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K13 ["ColorKeypointSelected"]
  LOADK R5 K19 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R5 R4 K14 ["CursorOpenedHand"]
  NEWTABLE R5 0 4
  MOVE R6 R2
  LOADK R7 K20 [".GridLine"]
  DUPTABLE R8 K24 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K21 ["BorderSizePixel"]
  LOADN R9 2
  SETTABLEKS R9 R8 K22 ["ZIndex"]
  LOADK R9 K25 ["$ColorGridLine"]
  SETTABLEKS R9 R8 K23 ["BackgroundColor3"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K26 [".GridLabel"]
  DUPTABLE R9 K29 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K27 ["BackgroundTransparency"]
  LOADK R10 K25 ["$ColorGridLine"]
  SETTABLEKS R10 R9 K28 ["TextColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K30 [".SequenceKeypoint"]
  DUPTABLE R10 K34 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Size", "Text", "ZIndex"}]
  GETIMPORT R11 K37 [Vector2.new]
  LOADK R12 K38 [0.5]
  LOADK R13 K38 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["AnchorPoint"]
  LOADK R11 K39 ["$ColorKeypoint"]
  SETTABLEKS R11 R10 K23 ["BackgroundColor3"]
  LOADN R11 0
  SETTABLEKS R11 R10 K27 ["BackgroundTransparency"]
  GETIMPORT R11 K42 [UDim2.fromOffset]
  LOADN R12 8
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Size"]
  LOADK R11 K43 [""]
  SETTABLEKS R11 R10 K33 ["Text"]
  LOADN R11 4
  SETTABLEKS R11 R10 K22 ["ZIndex"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K44 [".Selected"]
  DUPTABLE R14 K45 [{"BackgroundColor3"}]
  LOADK R15 K46 ["$ColorKeypointSelected"]
  SETTABLEKS R15 R14 K23 ["BackgroundColor3"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K47 ["::UIStroke"]
  DUPTABLE R18 K52 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R19 K55 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R19 R18 K48 ["ApplyStrokeMode"]
  GETIMPORT R19 K18 [Color3.fromRGB]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R19 3 1
  SETTABLEKS R19 R18 K49 ["Color"]
  LOADN R19 2
  SETTABLEKS R19 R18 K50 ["Thickness"]
  LOADK R19 K56 [0.6]
  SETTABLEKS R19 R18 K51 ["Transparency"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K57 [".CurveLine"]
  DUPTABLE R11 K58 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K21 ["BorderSizePixel"]
  LOADN R12 3
  SETTABLEKS R12 R11 K22 ["ZIndex"]
  LOADK R12 K56 [0.6]
  SETTABLEKS R12 R11 K27 ["BackgroundTransparency"]
  LOADK R12 K39 ["$ColorKeypoint"]
  SETTABLEKS R12 R11 K23 ["BackgroundColor3"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K59 [".SelectedStart"]
  DUPTABLE R15 K45 [{"BackgroundColor3"}]
  GETIMPORT R16 K18 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["BackgroundColor3"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K60 ["::UIGradient"]
  DUPTABLE R19 K61 [{"Color"}]
  GETIMPORT R20 K63 [ColorSequence.new]
  GETTABLEKS R21 R4 K13 ["ColorKeypointSelected"]
  GETTABLEKS R22 R4 K12 ["ColorKeypoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["Color"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K64 [".SelectedEnd"]
  DUPTABLE R16 K45 [{"BackgroundColor3"}]
  GETIMPORT R17 K18 [Color3.fromRGB]
  LOADN R18 255
  LOADN R19 255
  LOADN R20 255
  CALL R17 3 1
  SETTABLEKS R17 R16 K23 ["BackgroundColor3"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K60 ["::UIGradient"]
  DUPTABLE R20 K61 [{"Color"}]
  GETIMPORT R21 K63 [ColorSequence.new]
  GETTABLEKS R22 R4 K12 ["ColorKeypoint"]
  GETTABLEKS R23 R4 K13 ["ColorKeypointSelected"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K49 ["Color"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R5 R6 -1 [1]
  MOVE R6 R3
  LOADK R7 K2 ["AttenuationCurveEditor"]
  MOVE R8 R5
  MOVE R9 R4
  CALL R6 3 -1
  RETURN R6 -1
