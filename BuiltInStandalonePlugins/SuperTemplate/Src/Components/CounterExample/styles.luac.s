MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SuperTemplate"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-CounterExample"]
  DUPTABLE R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R6 K14 ["$BackgroundPaper"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K15 ["::UICorner"]
  DUPTABLE R9 K17 [{"CornerRadius"}]
  GETIMPORT R10 K20 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["CornerRadius"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [":hover"]
  DUPTABLE R10 K22 [{"BackgroundColor3"}]
  LOADK R11 K23 ["$BackgroundHover"]
  SETTABLEKS R11 R10 K11 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K24 ["> TextLabel"]
  DUPTABLE R11 K32 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  LOADN R12 24
  SETTABLEKS R12 R11 K25 ["TextSize"]
  GETIMPORT R12 K35 [Enum.Font.Gotham]
  SETTABLEKS R12 R11 K26 ["Font"]
  LOADK R12 K36 ["$TextPrimary"]
  SETTABLEKS R12 R11 K27 ["TextColor3"]
  GETIMPORT R12 K38 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 50
  CALL R12 4 1
  SETTABLEKS R12 R11 K28 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K29 ["BackgroundTransparency"]
  GETIMPORT R12 K40 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K30 ["TextXAlignment"]
  GETIMPORT R12 K41 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K31 ["TextYAlignment"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K42 ["> TextButton"]
  DUPTABLE R12 K32 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
  LOADN R13 50
  SETTABLEKS R13 R12 K25 ["TextSize"]
  GETIMPORT R13 K35 [Enum.Font.Gotham]
  SETTABLEKS R13 R12 K26 ["Font"]
  LOADK R13 K36 ["$TextPrimary"]
  SETTABLEKS R13 R12 K27 ["TextColor3"]
  GETIMPORT R13 K38 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 100
  CALL R13 4 1
  SETTABLEKS R13 R12 K28 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K29 ["BackgroundTransparency"]
  GETIMPORT R13 K40 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K30 ["TextXAlignment"]
  GETIMPORT R13 K41 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K31 ["TextYAlignment"]
  CALL R10 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
