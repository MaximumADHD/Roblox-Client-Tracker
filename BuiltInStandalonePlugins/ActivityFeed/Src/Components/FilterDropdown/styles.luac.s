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
  GETTABLEKS R3 R4 K9 ["StyleTips"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Component-FilterDropdown"]
  DUPTABLE R6 K16 [{"BorderSizePixel", "BackgroundColor3", "BorderColor3"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BorderSizePixel"]
  LOADK R7 K17 ["$BackgroundPaper"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  LOADK R7 K18 ["$BackgroundDefault"]
  SETTABLEKS R7 R6 K15 ["BorderColor3"]
  NEWTABLE R7 0 5
  MOVE R8 R3
  LOADK R9 K19 ["::UICorner"]
  DUPTABLE R10 K21 [{"CornerRadius"}]
  GETIMPORT R11 K24 [UDim.new]
  LOADN R12 0
  GETTABLEKS R13 R2 K25 ["bubbleCornerRadius"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["CornerRadius"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K26 [":hover"]
  DUPTABLE R11 K27 [{"BackgroundColor3"}]
  LOADK R12 K28 ["$ActionHover"]
  SETTABLEKS R12 R11 K14 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K29 ["::UIPadding"]
  DUPTABLE R12 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K24 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["PaddingLeft"]
  GETIMPORT R13 K24 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["PaddingRight"]
  GETIMPORT R13 K24 [UDim.new]
  LOADN R14 0
  LOADN R15 3
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["PaddingTop"]
  GETIMPORT R13 K24 [UDim.new]
  LOADN R14 0
  LOADN R15 3
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R3
  LOADK R12 K35 ["> #Selected"]
  DUPTABLE R13 K39 [{"TextColor3", "TextSize", "TextXAlignment"}]
  LOADK R14 K40 ["$TextPrimary"]
  SETTABLEKS R14 R13 K36 ["TextColor3"]
  GETTABLEKS R14 R2 K41 ["normalFontSize"]
  SETTABLEKS R14 R13 K37 ["TextSize"]
  GETIMPORT R14 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K38 ["TextXAlignment"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K45 ["> #Button"]
  DUPTABLE R14 K50 [{"Position", "Size", "BorderSizePixel", "BackgroundTransparency", "Image"}]
  GETIMPORT R15 K52 [UDim2.new]
  LOADN R16 1
  LOADN R17 216
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K46 ["Position"]
  GETIMPORT R15 K52 [UDim2.new]
  LOADN R16 0
  LOADN R17 40
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K47 ["Size"]
  LOADN R15 0
  SETTABLEKS R15 R14 K13 ["BorderSizePixel"]
  LOADN R15 1
  SETTABLEKS R15 R14 K48 ["BackgroundTransparency"]
  LOADK R15 K53 ["$arrowdownicon"]
  SETTABLEKS R15 R14 K49 ["Image"]
  CALL R12 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
