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
  LOADN R10 34
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Size"]
  LOADK R6 K17 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K18 ["::UIPadding"]
  DUPTABLE R9 K23 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R10 K25 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["PaddingLeft"]
  GETIMPORT R10 K25 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["PaddingRight"]
  GETIMPORT R10 K25 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["PaddingTop"]
  GETIMPORT R10 K25 [UDim.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["PaddingBottom"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K26 ["> #Title"]
  DUPTABLE R10 K33 [{"Size", "Position", "BackgroundColor3", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R11 K16 [UDim2.new]
  LOADK R12 K34 [0.75]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 40
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K27 ["Position"]
  LOADK R11 K17 ["$BackgroundPaper"]
  SETTABLEKS R11 R10 K11 ["BackgroundColor3"]
  LOADK R11 K35 ["$TextPrimary"]
  SETTABLEKS R11 R10 K28 ["TextColor3"]
  LOADN R11 20
  SETTABLEKS R11 R10 K29 ["TextSize"]
  LOADN R11 0
  SETTABLEKS R11 R10 K12 ["BorderSizePixel"]
  GETIMPORT R11 K38 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R11 R10 K30 ["Font"]
  GETIMPORT R11 K40 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K31 ["TextXAlignment"]
  GETIMPORT R11 K42 [Enum.TextYAlignment.Center]
  SETTABLEKS R11 R10 K32 ["TextYAlignment"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K18 ["::UIPadding"]
  DUPTABLE R14 K43 [{"PaddingLeft"}]
  GETIMPORT R15 K25 [UDim.new]
  LOADN R16 0
  LOADN R17 3
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["PaddingLeft"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K44 ["> #MoreOptionsFrame"]
  DUPTABLE R11 K46 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R12 K16 [UDim2.new]
  LOADK R13 K47 [0.25]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 40
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Size"]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Position"]
  GETIMPORT R12 K49 [Vector2.new]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K45 ["AnchorPoint"]
  LOADK R12 K17 ["$BackgroundPaper"]
  SETTABLEKS R12 R11 K11 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K12 ["BorderSizePixel"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K50 ["> #MoreOptionsButton"]
  DUPTABLE R15 K46 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 0
  LOADN R18 28
  LOADN R19 0
  LOADN R20 28
  CALL R16 4 1
  SETTABLEKS R16 R15 K10 ["Size"]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADK R19 K51 [0.5]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K27 ["Position"]
  GETIMPORT R16 K49 [Vector2.new]
  LOADN R17 1
  LOADK R18 K51 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K45 ["AnchorPoint"]
  LOADK R16 K17 ["$BackgroundPaper"]
  SETTABLEKS R16 R15 K11 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K12 ["BorderSizePixel"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K52 [":hover"]
  DUPTABLE R19 K53 [{"BackgroundColor3"}]
  LOADK R20 K54 ["$ActionHover"]
  SETTABLEKS R20 R19 K11 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K55 [":pressed"]
  DUPTABLE R20 K53 [{"BackgroundColor3"}]
  LOADK R21 K56 ["$ActionActivated"]
  SETTABLEKS R21 R20 K11 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K57 ["::UICorner"]
  DUPTABLE R21 K59 [{"CornerRadius"}]
  GETIMPORT R22 K25 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K58 ["CornerRadius"]
  CALL R19 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
