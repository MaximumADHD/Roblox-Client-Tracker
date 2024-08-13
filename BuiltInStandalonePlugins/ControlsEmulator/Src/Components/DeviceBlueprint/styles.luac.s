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
  DUPTABLE R6 K17 [{"BorderSizePixel", "BackgroundColor3", "Position", "AnchorPoint"}]
  LOADN R7 0
  SETTABLEKS R7 R6 K13 ["BorderSizePixel"]
  LOADK R7 K18 ["$BlueprintBackgroundColor"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  GETIMPORT R7 K21 [UDim2.new]
  LOADK R8 K22 [0.5]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K15 ["Position"]
  GETIMPORT R7 K24 [Vector2.new]
  LOADK R8 K25 [0.52]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["AnchorPoint"]
  NEWTABLE R7 0 9
  MOVE R8 R3
  LOADK R9 K26 ["::UIAspectRatioConstraint"]
  DUPTABLE R10 K28 [{"AspectRatio"}]
  LOADK R11 K29 [1.5]
  SETTABLEKS R11 R10 K27 ["AspectRatio"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K30 ["::UISizeConstraint"]
  DUPTABLE R11 K32 [{"MaxSize"}]
  GETIMPORT R12 K24 [Vector2.new]
  LOADN R13 16
  LOADN R14 244
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["MaxSize"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K33 ["::UIListLayout"]
  DUPTABLE R12 K37 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R13 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K34 ["SortOrder"]
  GETIMPORT R13 K42 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K35 ["HorizontalAlignment"]
  GETIMPORT R13 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K36 ["FillDirection"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K45 ["> .Component-ControllerLayout"]
  DUPTABLE R13 K46 [{"BackgroundColor3"}]
  LOADK R14 K18 ["$BlueprintBackgroundColor"]
  SETTABLEKS R14 R13 K14 ["BackgroundColor3"]
  NEWTABLE R14 0 1
  MOVE R15 R3
  LOADK R16 K47 [".Mappings-Visible::UIPadding"]
  DUPTABLE R17 K52 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R18 K54 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K48 ["PaddingTop"]
  GETIMPORT R18 K54 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["PaddingBottom"]
  LOADK R18 K55 ["$BlueprintWithMappingsPadding"]
  SETTABLEKS R18 R17 K50 ["PaddingLeft"]
  LOADK R18 K55 ["$BlueprintWithMappingsPadding"]
  SETTABLEKS R18 R17 K51 ["PaddingRight"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R3
  LOADK R13 K56 [">> .Component-GamepadControls"]
  DUPTABLE R14 K58 [{"BackgroundTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K57 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K59 [">> .Blueprint-Image"]
  DUPTABLE R15 K62 [{"Size", "ZIndex", "BackgroundTransparency"}]
  GETIMPORT R16 K21 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADK R19 K63 [0.75]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K60 ["Size"]
  LOADN R16 255
  SETTABLEKS R16 R15 K61 ["ZIndex"]
  LOADN R16 1
  SETTABLEKS R16 R15 K57 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K64 ["> TextLabel"]
  DUPTABLE R16 K70 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R17 R2 K71 ["normalFontSize"]
  SETTABLEKS R17 R16 K65 ["TextSize"]
  GETIMPORT R17 K73 [Enum.Font.Gotham]
  SETTABLEKS R17 R16 K66 ["Font"]
  LOADK R17 K74 ["$TextPrimary"]
  SETTABLEKS R17 R16 K67 ["TextColor3"]
  GETIMPORT R17 K21 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 30
  CALL R17 4 1
  SETTABLEKS R17 R16 K60 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K57 ["BackgroundTransparency"]
  GETIMPORT R17 K75 [Enum.TextXAlignment.Center]
  SETTABLEKS R17 R16 K68 ["TextXAlignment"]
  GETIMPORT R17 K76 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K69 ["TextYAlignment"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K77 ["> TextButton"]
  DUPTABLE R17 K70 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R18 R2 K71 ["normalFontSize"]
  SETTABLEKS R18 R17 K65 ["TextSize"]
  GETIMPORT R18 K73 [Enum.Font.Gotham]
  SETTABLEKS R18 R17 K66 ["Font"]
  LOADK R18 K74 ["$TextPrimary"]
  SETTABLEKS R18 R17 K67 ["TextColor3"]
  GETIMPORT R18 K21 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 60
  CALL R18 4 1
  SETTABLEKS R18 R17 K60 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K57 ["BackgroundTransparency"]
  GETIMPORT R18 K75 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K68 ["TextXAlignment"]
  GETIMPORT R18 K76 [Enum.TextYAlignment.Center]
  SETTABLEKS R18 R17 K69 ["TextYAlignment"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K78 [">> .X-Circle"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R3
  LOADK R21 K79 ["::UICorner"]
  DUPTABLE R22 K81 [{"CornerRadius"}]
  GETIMPORT R23 K54 [UDim.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 1
  SETTABLEKS R23 R22 K80 ["CornerRadius"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
