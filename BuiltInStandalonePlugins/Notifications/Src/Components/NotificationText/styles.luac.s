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
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagNotificationRedesignM1Q42025"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K11 ["Styling"]
  GETTABLEKS R3 R4 K12 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K13 [".Component-NotificationText"]
  DUPTABLE R6 K17 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R7 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K14 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K15 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K21 ["> #Subject"]
  DUPTABLE R10 K31 [{"RichText", "Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K22 ["RichText"]
  GETIMPORT R11 K34 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Size"]
  GETIMPORT R11 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K14 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K15 ["BackgroundTransparency"]
  LOADK R11 K35 ["$TextPrimary"]
  SETTABLEKS R11 R10 K24 ["TextColor3"]
  MOVE R12 R2
  CALL R12 0 1
  JUMPIF R12 [+2]
  LOADN R11 18
  JUMP [+1]
  LOADK R11 K36 ["$CardSubjectTextSize"]
  SETTABLEKS R11 R10 K25 ["TextSize"]
  GETIMPORT R11 K38 [Enum.Font.SourceSans]
  SETTABLEKS R11 R10 K26 ["Font"]
  LOADB R11 1
  SETTABLEKS R11 R10 K27 ["TextWrapped"]
  GETIMPORT R11 K40 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R11 R10 K28 ["TextTruncate"]
  GETIMPORT R11 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K29 ["TextXAlignment"]
  GETIMPORT R11 K44 [Enum.TextYAlignment.Top]
  SETTABLEKS R11 R10 K30 ["TextYAlignment"]
  NEWTABLE R11 0 1
  MOVE R12 R3
  LOADK R13 K45 ["::UISizeConstraint"]
  DUPTABLE R14 K48 [{"MaxSize", "MinSize"}]
  GETIMPORT R15 K50 [Vector2.new]
  LOADK R16 K51 [∞]
  LOADN R17 36
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["MaxSize"]
  GETIMPORT R15 K50 [Vector2.new]
  LOADN R16 0
  LOADN R17 18
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["MinSize"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R3
  LOADK R10 K52 ["> #Subline"]
  DUPTABLE R11 K53 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K34 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K23 ["Size"]
  GETIMPORT R12 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K14 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K15 ["BackgroundTransparency"]
  LOADK R12 K54 ["$TextSecondary"]
  SETTABLEKS R12 R11 K24 ["TextColor3"]
  LOADN R12 18
  SETTABLEKS R12 R11 K25 ["TextSize"]
  GETIMPORT R12 K38 [Enum.Font.SourceSans]
  SETTABLEKS R12 R11 K26 ["Font"]
  LOADB R12 1
  SETTABLEKS R12 R11 K27 ["TextWrapped"]
  GETIMPORT R12 K40 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R12 R11 K28 ["TextTruncate"]
  GETIMPORT R12 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K29 ["TextXAlignment"]
  GETIMPORT R12 K44 [Enum.TextYAlignment.Top]
  SETTABLEKS R12 R11 K30 ["TextYAlignment"]
  NEWTABLE R12 0 1
  MOVE R13 R3
  LOADK R14 K45 ["::UISizeConstraint"]
  DUPTABLE R15 K48 [{"MaxSize", "MinSize"}]
  GETIMPORT R16 K50 [Vector2.new]
  LOADK R17 K51 [∞]
  LOADN R18 36
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["MaxSize"]
  GETIMPORT R16 K50 [Vector2.new]
  LOADN R17 0
  LOADN R18 18
  CALL R16 2 1
  SETTABLEKS R16 R15 K47 ["MinSize"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K55 ["> #ElapsedTime"]
  DUPTABLE R12 K56 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R13 K34 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K23 ["Size"]
  GETIMPORT R13 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K14 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K15 ["BackgroundTransparency"]
  LOADK R13 K54 ["$TextSecondary"]
  SETTABLEKS R13 R12 K24 ["TextColor3"]
  LOADN R13 15
  SETTABLEKS R13 R12 K25 ["TextSize"]
  GETIMPORT R13 K38 [Enum.Font.SourceSans]
  SETTABLEKS R13 R12 K26 ["Font"]
  GETIMPORT R13 K40 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R13 R12 K28 ["TextTruncate"]
  GETIMPORT R13 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K29 ["TextXAlignment"]
  GETIMPORT R13 K44 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K30 ["TextYAlignment"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
