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
  LOADK R4 K9 [".Component-NotificationText"]
  DUPTABLE R5 K13 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R6 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K10 ["AutomaticSize"]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K17 ["> #Subject"]
  DUPTABLE R9 K27 [{"RichText", "Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K18 ["RichText"]
  GETIMPORT R10 K30 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K19 ["Size"]
  GETIMPORT R10 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K10 ["AutomaticSize"]
  LOADN R10 1
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  LOADK R10 K31 ["$TextPrimary"]
  SETTABLEKS R10 R9 K20 ["TextColor3"]
  LOADN R10 18
  SETTABLEKS R10 R9 K21 ["TextSize"]
  GETIMPORT R10 K33 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K22 ["Font"]
  LOADB R10 1
  SETTABLEKS R10 R9 K23 ["TextWrapped"]
  GETIMPORT R10 K35 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R10 R9 K24 ["TextTruncate"]
  GETIMPORT R10 K37 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K25 ["TextXAlignment"]
  GETIMPORT R10 K39 [Enum.TextYAlignment.Top]
  SETTABLEKS R10 R9 K26 ["TextYAlignment"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K40 ["::UISizeConstraint"]
  DUPTABLE R13 K43 [{"MaxSize", "MinSize"}]
  GETIMPORT R14 K45 [Vector2.new]
  LOADK R15 K46 [∞]
  LOADN R16 36
  CALL R14 2 1
  SETTABLEKS R14 R13 K41 ["MaxSize"]
  GETIMPORT R14 K45 [Vector2.new]
  LOADN R15 0
  LOADN R16 18
  CALL R14 2 1
  SETTABLEKS R14 R13 K42 ["MinSize"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K47 ["> #Subline"]
  DUPTABLE R10 K48 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R11 K30 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K19 ["Size"]
  GETIMPORT R11 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K10 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  LOADK R11 K49 ["$TextSecondary"]
  SETTABLEKS R11 R10 K20 ["TextColor3"]
  LOADN R11 18
  SETTABLEKS R11 R10 K21 ["TextSize"]
  GETIMPORT R11 K33 [Enum.Font.SourceSans]
  SETTABLEKS R11 R10 K22 ["Font"]
  LOADB R11 1
  SETTABLEKS R11 R10 K23 ["TextWrapped"]
  GETIMPORT R11 K35 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R11 R10 K24 ["TextTruncate"]
  GETIMPORT R11 K37 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K25 ["TextXAlignment"]
  GETIMPORT R11 K39 [Enum.TextYAlignment.Top]
  SETTABLEKS R11 R10 K26 ["TextYAlignment"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K40 ["::UISizeConstraint"]
  DUPTABLE R14 K43 [{"MaxSize", "MinSize"}]
  GETIMPORT R15 K45 [Vector2.new]
  LOADK R16 K46 [∞]
  LOADN R17 36
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["MaxSize"]
  GETIMPORT R15 K45 [Vector2.new]
  LOADN R16 0
  LOADN R17 18
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["MinSize"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K50 ["> #ElapsedTime"]
  DUPTABLE R11 K51 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K19 ["Size"]
  GETIMPORT R12 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K10 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  LOADK R12 K49 ["$TextSecondary"]
  SETTABLEKS R12 R11 K20 ["TextColor3"]
  LOADN R12 15
  SETTABLEKS R12 R11 K21 ["TextSize"]
  GETIMPORT R12 K33 [Enum.Font.SourceSans]
  SETTABLEKS R12 R11 K22 ["Font"]
  GETIMPORT R12 K35 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R12 R11 K24 ["TextTruncate"]
  GETIMPORT R12 K37 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K25 ["TextXAlignment"]
  GETIMPORT R12 K39 [Enum.TextYAlignment.Top]
  SETTABLEKS R12 R11 K26 ["TextYAlignment"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
