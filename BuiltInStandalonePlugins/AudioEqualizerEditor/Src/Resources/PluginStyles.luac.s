MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioEqualizerEditor"]
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
  DUPTABLE R4 K20 [{"ColorControlPoint", "ColorControlPointHovered", "ColorControlPointPressed", "ColorAnalyzerCurve", "ColorFullCurve", "ColorFullCurveDisabled", "ColorCurve", "ColorGridLine", "CursorOpenedHand"}]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 100
  LOADN R8 100
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["ColorControlPoint"]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 175
  LOADN R7 70
  LOADN R8 75
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["ColorControlPointHovered"]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 100
  LOADN R7 30
  LOADN R8 50
  CALL R5 3 1
  SETTABLEKS R5 R4 K13 ["ColorControlPointPressed"]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 200
  LOADN R7 150
  LOADN R8 75
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["ColorAnalyzerCurve"]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 100
  LOADN R8 100
  CALL R5 3 1
  SETTABLEKS R5 R4 K15 ["ColorFullCurve"]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 155
  LOADN R7 100
  LOADN R8 100
  CALL R5 3 1
  SETTABLEKS R5 R4 K16 ["ColorFullCurveDisabled"]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 155
  LOADN R7 155
  LOADN R8 155
  CALL R5 3 1
  SETTABLEKS R5 R4 K17 ["ColorCurve"]
  GETIMPORT R5 K23 [Color3.fromRGB]
  LOADN R6 155
  LOADN R7 155
  LOADN R8 155
  CALL R5 3 1
  SETTABLEKS R5 R4 K18 ["ColorGridLine"]
  LOADK R5 K24 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R5 R4 K19 ["CursorOpenedHand"]
  NEWTABLE R5 0 7
  MOVE R6 R2
  LOADK R7 K25 [".GridLine"]
  DUPTABLE R8 K29 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K26 ["BorderSizePixel"]
  LOADN R9 2
  SETTABLEKS R9 R8 K27 ["ZIndex"]
  LOADK R9 K30 ["$ColorGridLine"]
  SETTABLEKS R9 R8 K28 ["BackgroundColor3"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K31 [".GridLabel"]
  DUPTABLE R9 K34 [{"BackgroundTransparency", "TextColor3"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K32 ["BackgroundTransparency"]
  LOADK R10 K30 ["$ColorGridLine"]
  SETTABLEKS R10 R9 K33 ["TextColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K35 [".AnalyzerCurve"]
  DUPTABLE R10 K37 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R11 10
  SETTABLEKS R11 R10 K27 ["ZIndex"]
  LOADK R11 K38 ["$ColorAnalyzerCurve"]
  SETTABLEKS R11 R10 K21 ["Color3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K36 ["Thickness"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K39 [".FullCurve"]
  DUPTABLE R11 K37 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R12 10
  SETTABLEKS R12 R11 K27 ["ZIndex"]
  LOADK R12 K40 ["$ColorFullCurve"]
  SETTABLEKS R12 R11 K21 ["Color3"]
  LOADN R12 2
  SETTABLEKS R12 R11 K36 ["Thickness"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K41 [".FullCurveDisabled"]
  DUPTABLE R12 K37 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R13 10
  SETTABLEKS R13 R12 K27 ["ZIndex"]
  LOADK R13 K42 ["$ColorFullCurveDisabled"]
  SETTABLEKS R13 R12 K21 ["Color3"]
  LOADN R13 2
  SETTABLEKS R13 R12 K36 ["Thickness"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K43 [".Curve"]
  DUPTABLE R13 K37 [{"ZIndex", "Color3", "Thickness"}]
  LOADN R14 9
  SETTABLEKS R14 R13 K27 ["ZIndex"]
  LOADK R14 K44 ["$ColorCurve"]
  SETTABLEKS R14 R13 K21 ["Color3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K36 ["Thickness"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K45 [".ControlPoint"]
  DUPTABLE R14 K50 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Size", "ZIndex"}]
  GETIMPORT R15 K53 [Vector2.new]
  LOADK R16 K54 [0.5]
  LOADK R17 K54 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["AnchorPoint"]
  LOADN R15 1
  SETTABLEKS R15 R14 K32 ["BackgroundTransparency"]
  LOADK R15 K55 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R15 R14 K47 ["Image"]
  LOADK R15 K56 ["$ColorControlPoint"]
  SETTABLEKS R15 R14 K48 ["ImageColor3"]
  GETIMPORT R15 K59 [UDim2.fromOffset]
  LOADN R16 24
  LOADN R17 24
  CALL R15 2 1
  SETTABLEKS R15 R14 K49 ["Size"]
  LOADN R15 20
  SETTABLEKS R15 R14 K27 ["ZIndex"]
  NEWTABLE R15 0 4
  MOVE R16 R2
  LOADK R17 K60 ["> ImageLabel"]
  DUPTABLE R18 K63 [{"BackgroundTransparency", "Image", "ImageTransparency", "Position", "Size", "ZIndex"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K32 ["BackgroundTransparency"]
  LOADK R19 K55 ["rbxasset://textures/smallWhiteCircle.png"]
  SETTABLEKS R19 R18 K47 ["Image"]
  LOADK R19 K64 [0.6]
  SETTABLEKS R19 R18 K61 ["ImageTransparency"]
  GETIMPORT R19 K66 [UDim2.fromScale]
  LOADK R20 K67 [0.1]
  LOADK R21 K67 [0.1]
  CALL R19 2 1
  SETTABLEKS R19 R18 K62 ["Position"]
  GETIMPORT R19 K66 [UDim2.fromScale]
  LOADK R20 K68 [0.8]
  LOADK R21 K68 [0.8]
  CALL R19 2 1
  SETTABLEKS R19 R18 K49 ["Size"]
  LOADN R19 21
  SETTABLEKS R19 R18 K27 ["ZIndex"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K69 ["> TextLabel"]
  DUPTABLE R19 K72 [{"BackgroundTransparency", "FontFace", "Position", "Size", "TextSize", "ZIndex"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K32 ["BackgroundTransparency"]
  GETIMPORT R20 K74 [Font.new]
  LOADK R21 K75 ["rbxasset://fonts/families/Montserrat.json"]
  GETIMPORT R22 K79 [Enum.FontWeight.Bold]
  CALL R20 2 1
  SETTABLEKS R20 R19 K70 ["FontFace"]
  GETIMPORT R20 K66 [UDim2.fromScale]
  LOADK R21 K67 [0.1]
  LOADK R22 K67 [0.1]
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["Position"]
  GETIMPORT R20 K66 [UDim2.fromScale]
  LOADK R21 K68 [0.8]
  LOADK R22 K68 [0.8]
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["Size"]
  LOADN R20 18
  SETTABLEKS R20 R19 K71 ["TextSize"]
  LOADN R20 22
  SETTABLEKS R20 R19 K27 ["ZIndex"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K80 [".Hovered"]
  DUPTABLE R20 K81 [{"ImageColor3"}]
  LOADK R21 K82 ["$ColorControlPointHovered"]
  SETTABLEKS R21 R20 K48 ["ImageColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K83 [".Pressed"]
  DUPTABLE R21 K81 [{"ImageColor3"}]
  LOADK R22 K84 ["$ColorControlPointPressed"]
  SETTABLEKS R22 R21 K48 ["ImageColor3"]
  CALL R19 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R5 R6 -1 [1]
  MOVE R6 R3
  LOADK R7 K2 ["AudioEqualizerEditor"]
  MOVE R8 R5
  MOVE R9 R4
  CALL R6 3 -1
  RETURN R6 -1
