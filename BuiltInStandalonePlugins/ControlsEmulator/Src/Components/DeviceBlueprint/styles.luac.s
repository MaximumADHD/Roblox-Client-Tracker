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
  LOADK R8 K22 [0.5]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["AnchorPoint"]
  NEWTABLE R7 0 7
  MOVE R8 R3
  LOADK R9 K25 ["::UIAspectRatioConstraint"]
  DUPTABLE R10 K27 [{"AspectRatio"}]
  LOADK R11 K28 [1.5]
  SETTABLEKS R11 R10 K26 ["AspectRatio"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K29 ["::UISizeConstraint"]
  DUPTABLE R11 K32 [{"MaxSize", "MinSize"}]
  GETIMPORT R12 K24 [Vector2.new]
  LOADN R13 16
  LOADN R14 164
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["MaxSize"]
  GETIMPORT R12 K24 [Vector2.new]
  LOADN R13 44
  LOADN R14 200
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["MinSize"]
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
  LOADK R12 K45 ["> #ControllerLayout"]
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
  LOADK R13 K56 [">> #GamepadBlueprint"]
  DUPTABLE R14 K60 [{"AnchorPoint", "Position", "Size", "ZIndex", "BackgroundTransparency"}]
  GETIMPORT R15 K24 [Vector2.new]
  LOADK R16 K22 [0.5]
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K16 ["AnchorPoint"]
  GETIMPORT R15 K21 [UDim2.new]
  LOADK R16 K22 [0.5]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K15 ["Position"]
  GETIMPORT R15 K21 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADK R18 K61 [0.793]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K57 ["Size"]
  LOADN R15 255
  SETTABLEKS R15 R14 K58 ["ZIndex"]
  LOADN R15 1
  SETTABLEKS R15 R14 K59 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K62 ["> TextLabel"]
  DUPTABLE R15 K68 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R16 R2 K69 ["normalFontSize"]
  SETTABLEKS R16 R15 K63 ["TextSize"]
  GETTABLEKS R16 R2 K70 ["defaultFont"]
  SETTABLEKS R16 R15 K64 ["Font"]
  LOADK R16 K71 ["$TextPrimary"]
  SETTABLEKS R16 R15 K65 ["TextColor3"]
  GETIMPORT R16 K21 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 30
  CALL R16 4 1
  SETTABLEKS R16 R15 K57 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K59 ["BackgroundTransparency"]
  GETIMPORT R16 K72 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K66 ["TextXAlignment"]
  GETIMPORT R16 K73 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K67 ["TextYAlignment"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K74 ["> TextButton"]
  DUPTABLE R16 K68 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R17 R2 K69 ["normalFontSize"]
  SETTABLEKS R17 R16 K63 ["TextSize"]
  GETTABLEKS R17 R2 K70 ["defaultFont"]
  SETTABLEKS R17 R16 K64 ["Font"]
  LOADK R17 K71 ["$TextPrimary"]
  SETTABLEKS R17 R16 K65 ["TextColor3"]
  GETIMPORT R17 K21 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 60
  CALL R17 4 1
  SETTABLEKS R17 R16 K57 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K59 ["BackgroundTransparency"]
  GETIMPORT R17 K72 [Enum.TextXAlignment.Center]
  SETTABLEKS R17 R16 K66 ["TextXAlignment"]
  GETIMPORT R17 K73 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K67 ["TextYAlignment"]
  CALL R14 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
