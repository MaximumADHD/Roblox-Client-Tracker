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
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-NotificationHeader"]
  DUPTABLE R5 K13 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 40
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Size"]
  LOADK R6 K17 ["$BackgroundDefault"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K18 ["::UIListLayout"]
  DUPTABLE R9 K23 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R10 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K19 ["FillDirection"]
  GETIMPORT R10 K28 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K20 ["HorizontalAlignment"]
  GETIMPORT R10 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K21 ["SortOrder"]
  GETIMPORT R10 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R10 R9 K22 ["VerticalAlignment"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K33 ["::UIPadding"]
  DUPTABLE R10 K38 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["PaddingLeft"]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["PaddingRight"]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K36 ["PaddingTop"]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K37 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K41 ["> #Title"]
  DUPTABLE R11 K47 [{"Size", "BackgroundColor3", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K16 [UDim2.new]
  LOADK R13 K48 [0.75]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 40
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Size"]
  LOADK R12 K17 ["$BackgroundDefault"]
  SETTABLEKS R12 R11 K11 ["BackgroundColor3"]
  LOADK R12 K49 ["$TextPrimary"]
  SETTABLEKS R12 R11 K42 ["TextColor3"]
  LOADN R12 20
  SETTABLEKS R12 R11 K43 ["TextSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K12 ["BorderSizePixel"]
  GETIMPORT R12 K51 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R12 R11 K44 ["Font"]
  GETIMPORT R12 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K45 ["TextXAlignment"]
  GETIMPORT R12 K54 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K46 ["TextYAlignment"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K55 ["> #SettingsFrame"]
  DUPTABLE R12 K13 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R13 K16 [UDim2.new]
  LOADK R14 K56 [0.25]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 40
  CALL R13 4 1
  SETTABLEKS R13 R12 K10 ["Size"]
  LOADK R13 K17 ["$BackgroundDefault"]
  SETTABLEKS R13 R12 K11 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K12 ["BorderSizePixel"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K57 ["> #SettingsButton"]
  DUPTABLE R16 K60 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K16 [UDim2.new]
  LOADN R18 0
  LOADN R19 20
  LOADN R20 0
  LOADN R21 20
  CALL R17 4 1
  SETTABLEKS R17 R16 K10 ["Size"]
  GETIMPORT R17 K16 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADK R20 K61 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K58 ["Position"]
  GETIMPORT R17 K63 [Vector2.new]
  LOADN R18 1
  LOADK R19 K61 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["AnchorPoint"]
  LOADK R17 K17 ["$BackgroundDefault"]
  SETTABLEKS R17 R16 K11 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K12 ["BorderSizePixel"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K64 [":hover"]
  DUPTABLE R20 K65 [{"BackgroundColor3"}]
  LOADK R21 K66 ["$SecondaryHoverBackground"]
  SETTABLEKS R21 R20 K11 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K67 ["::UICorner"]
  DUPTABLE R21 K69 [{"CornerRadius"}]
  GETIMPORT R22 K40 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K68 ["CornerRadius"]
  CALL R19 2 -1
  SETLIST R17 R18 4294967295 [1]
  CALL R14 3 -1
  SETLIST R13 R14 4294967295 [1]
  CALL R10 3 -1
  SETLIST R6 R7 4294967295 [1]
  CALL R3 3 -1
  RETURN R3 -1
