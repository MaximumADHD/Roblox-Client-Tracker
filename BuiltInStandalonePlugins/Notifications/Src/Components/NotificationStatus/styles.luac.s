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
  GETTABLEKS R3 R4 K9 ["PluginStyles"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  LOADK R6 K12 ["CardElapsedTimeTextSize"]
  NAMECALL R4 R2 K13 ["GetAttribute"]
  CALL R4 2 1
  LOADK R7 K14 ["CardSubjectTextSize"]
  NAMECALL R5 R2 K13 ["GetAttribute"]
  CALL R5 2 1
  SUB R7 R5 R4
  DIVK R6 R7 K15 [2]
  LOADN R7 0
  JUMPIFNOTLT R6 R7 [+2]
  LOADN R6 0
  MOVE R7 R3
  LOADK R8 K16 [".Component-InnerNotificationStatus"]
  DUPTABLE R9 K20 [{"Size", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R10 K23 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K18 ["BackgroundTransparency"]
  GETIMPORT R10 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K19 ["AutomaticSize"]
  NEWTABLE R10 0 4
  MOVE R11 R3
  LOADK R12 K27 ["::UIPadding"]
  DUPTABLE R13 K29 [{"PaddingTop"}]
  GETIMPORT R14 K32 [UDim.new]
  LOADN R15 0
  MOVE R16 R6
  CALL R14 2 1
  SETTABLEKS R14 R13 K28 ["PaddingTop"]
  CALL R11 2 1
  MOVE R12 R3
  LOADK R13 K33 ["::UIListLayout"]
  DUPTABLE R14 K39 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R15 K41 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K34 ["FillDirection"]
  GETIMPORT R15 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K35 ["SortOrder"]
  GETIMPORT R15 K45 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K36 ["HorizontalAlignment"]
  GETIMPORT R15 K47 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K37 ["VerticalAlignment"]
  LOADK R15 K48 ["$MarginSmall"]
  SETTABLEKS R15 R14 K38 ["Padding"]
  CALL R12 2 1
  MOVE R13 R3
  LOADK R14 K49 ["> #Indicator"]
  DUPTABLE R15 K51 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K18 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K50 ["BorderSizePixel"]
  LOADK R16 K52 ["$CardStatusIndicatorSize"]
  SETTABLEKS R16 R15 K17 ["Size"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K53 ["> #ElapsedTime"]
  DUPTABLE R16 K57 [{"AutomaticSize", "BackgroundTransparency", "TextColor3", "TextSize", "Font"}]
  GETIMPORT R17 K59 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K19 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K18 ["BackgroundTransparency"]
  LOADK R17 K60 ["$TextSecondary"]
  SETTABLEKS R17 R16 K54 ["TextColor3"]
  SETTABLEKS R4 R16 K55 ["TextSize"]
  GETIMPORT R17 K62 [Enum.Font.SourceSans]
  SETTABLEKS R17 R16 K56 ["Font"]
  CALL R14 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  RETURN R7 -1
