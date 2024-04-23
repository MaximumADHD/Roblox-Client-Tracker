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
  LOADK R4 K9 [".Component-BasicExample"]
  DUPTABLE R5 K12 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R6 K13 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K10 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K14 ["::UICorner"]
  DUPTABLE R9 K16 [{"CornerRadius"}]
  GETIMPORT R10 K19 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["CornerRadius"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K20 [":hover"]
  DUPTABLE R10 K21 [{"BackgroundColor3"}]
  LOADK R11 K22 ["$BackgroundHover"]
  SETTABLEKS R11 R10 K10 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 ["> #OptionalContent"]
  DUPTABLE R11 K31 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  LOADN R12 24
  SETTABLEKS R12 R11 K24 ["TextSize"]
  GETIMPORT R12 K34 [Enum.Font.Gotham]
  SETTABLEKS R12 R11 K25 ["Font"]
  LOADK R12 K35 ["$TextPrimary"]
  SETTABLEKS R12 R11 K26 ["TextColor3"]
  GETIMPORT R12 K37 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 50
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["BackgroundTransparency"]
  GETIMPORT R12 K39 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K29 ["TextXAlignment"]
  GETIMPORT R12 K40 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K30 ["TextYAlignment"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
