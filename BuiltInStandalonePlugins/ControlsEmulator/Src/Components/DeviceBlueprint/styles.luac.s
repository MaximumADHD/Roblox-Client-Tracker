MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["StyleConstants"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-DeviceBlueprint"]
  DUPTABLE R6 K14 [{"BorderSizePixel"}]
  LOADN R7 0
  SETTABLEKS R7 R6 K13 ["BorderSizePixel"]
  NEWTABLE R7 0 8
  MOVE R8 R3
  LOADK R9 K15 ["::UIAspectRatioConstraint"]
  DUPTABLE R10 K17 [{"AspectRatio"}]
  LOADK R11 K18 [1.5]
  SETTABLEKS R11 R10 K16 ["AspectRatio"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K19 ["::UISizeConstraint"]
  DUPTABLE R11 K21 [{"MaxSize"}]
  GETIMPORT R12 K24 [Vector2.new]
  LOADN R13 16
  LOADN R14 244
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["MaxSize"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K25 ["::UIListLayout"]
  DUPTABLE R12 K29 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R13 K32 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K26 ["SortOrder"]
  GETIMPORT R13 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K27 ["HorizontalAlignment"]
  GETIMPORT R13 K36 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K28 ["FillDirection"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K37 ["> .ControllerLayout"]
  DUPTABLE R13 K39 [{"BackgroundColor3"}]
  LOADK R14 K40 ["$BlueprintBackgroundColor"]
  SETTABLEKS R14 R13 K38 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K41 [">> .Blueprint-Image"]
  DUPTABLE R14 K45 [{"Size", "ZIndex", "BackgroundTransparency"}]
  GETIMPORT R15 K47 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADK R18 K48 [0.75]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K42 ["Size"]
  LOADN R15 255
  SETTABLEKS R15 R14 K43 ["ZIndex"]
  LOADN R15 1
  SETTABLEKS R15 R14 K44 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K49 ["> TextLabel"]
  DUPTABLE R15 K55 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R16 R2 K56 ["normalFontSize"]
  SETTABLEKS R16 R15 K50 ["TextSize"]
  GETIMPORT R16 K58 [Enum.Font.Gotham]
  SETTABLEKS R16 R15 K51 ["Font"]
  LOADK R16 K59 ["$TextPrimary"]
  SETTABLEKS R16 R15 K52 ["TextColor3"]
  GETIMPORT R16 K47 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 30
  CALL R16 4 1
  SETTABLEKS R16 R15 K42 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K44 ["BackgroundTransparency"]
  GETIMPORT R16 K60 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K53 ["TextXAlignment"]
  GETIMPORT R16 K61 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K54 ["TextYAlignment"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K62 ["> TextButton"]
  DUPTABLE R16 K55 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R17 R2 K56 ["normalFontSize"]
  SETTABLEKS R17 R16 K50 ["TextSize"]
  GETIMPORT R17 K58 [Enum.Font.Gotham]
  SETTABLEKS R17 R16 K51 ["Font"]
  LOADK R17 K59 ["$TextPrimary"]
  SETTABLEKS R17 R16 K52 ["TextColor3"]
  GETIMPORT R17 K47 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 60
  CALL R17 4 1
  SETTABLEKS R17 R16 K42 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K44 ["BackgroundTransparency"]
  GETIMPORT R17 K60 [Enum.TextXAlignment.Center]
  SETTABLEKS R17 R16 K53 ["TextXAlignment"]
  GETIMPORT R17 K61 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K54 ["TextYAlignment"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K63 [">> .X-Circle"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R3
  LOADK R20 K64 ["::UICorner"]
  DUPTABLE R21 K66 [{"CornerRadius"}]
  GETIMPORT R22 K68 [UDim.new]
  LOADN R23 1
  LOADN R24 0
  CALL R22 2 1
  SETTABLEKS R22 R21 K65 ["CornerRadius"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
