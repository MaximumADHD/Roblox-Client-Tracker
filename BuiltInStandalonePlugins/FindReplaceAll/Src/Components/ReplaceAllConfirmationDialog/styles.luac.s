MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["StyleConstants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["defineFlags"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K13 ["Styling"]
  GETTABLEKS R4 R5 K14 ["createStyleRule"]
  MOVE R5 R4
  LOADK R6 K15 [">> .FindReplaceAll-ReplaceAllConfirmationDialog"]
  DUPTABLE R7 K20 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R8 K23 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R1 K24 ["widgetHeaderLineHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K16 ["Size"]
  GETIMPORT R8 K27 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K17 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K18 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K19 ["BorderSizePixel"]
  NEWTABLE R8 0 4
  MOVE R9 R4
  LOADK R10 K28 ["::UIPadding"]
  DUPTABLE R11 K31 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K33 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R1 K34 ["paddingSmall"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["PaddingTop"]
  GETIMPORT R12 K33 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R1 K34 ["paddingSmall"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K35 ["::UIListLayout"]
  DUPTABLE R12 K39 [{"ItemLineAlignment", "HorizontalFlex", "Padding"}]
  GETIMPORT R13 K41 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R13 R12 K36 ["ItemLineAlignment"]
  GETIMPORT R13 K44 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R13 R12 K37 ["HorizontalFlex"]
  GETIMPORT R13 K33 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R1 K34 ["paddingSmall"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["Padding"]
  CALL R10 2 1
  MOVE R11 R4
  LOADK R12 K45 ["> .ReplaceAllDialogText"]
  DUPTABLE R13 K50 [{"BackgroundTransparency", "TextColor3", "TextXAlignment", "TextSize", "TextWrapped", "AutomaticSize", "Size", "BorderSizePixel"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K18 ["BackgroundTransparency"]
  LOADK R14 K51 ["$ColorContentDefault"]
  SETTABLEKS R14 R13 K46 ["TextColor3"]
  GETIMPORT R14 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K47 ["TextXAlignment"]
  GETTABLEKS R15 R1 K54 ["confirmationDialogTextSize"]
  GETTABLEKS R17 R3 K55 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R1 K56 ["defaultFontScale"]
  JUMP [+1]
  LOADK R16 K57 [1.257]
  MUL R14 R15 R16
  SETTABLEKS R14 R13 K48 ["TextSize"]
  LOADB R14 1
  SETTABLEKS R14 R13 K49 ["TextWrapped"]
  GETIMPORT R14 K27 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K17 ["AutomaticSize"]
  GETIMPORT R14 K59 [UDim2.fromOffset]
  GETTABLEKS R15 R1 K60 ["replaceAllConfirmationLabelWidth"]
  GETTABLEKS R16 R1 K24 ["widgetHeaderLineHeight"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["Size"]
  LOADN R14 0
  SETTABLEKS R14 R13 K19 ["BorderSizePixel"]
  NEWTABLE R14 0 2
  MOVE R15 R4
  LOADK R16 K28 ["::UIPadding"]
  DUPTABLE R17 K62 [{"PaddingLeft"}]
  GETIMPORT R18 K33 [UDim.new]
  LOADN R19 0
  GETTABLEKS R20 R1 K34 ["paddingSmall"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["PaddingLeft"]
  CALL R15 2 1
  MOVE R16 R4
  LOADK R17 K63 ["::UISizeConstraint"]
  DUPTABLE R18 K65 [{"MinSize"}]
  GETIMPORT R19 K67 [Vector2.new]
  GETTABLEKS R20 R1 K60 ["replaceAllConfirmationLabelWidth"]
  GETTABLEKS R21 R1 K24 ["widgetHeaderLineHeight"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K64 ["MinSize"]
  CALL R16 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R4
  LOADK R13 K68 ["> .DialogButtonFrame"]
  DUPTABLE R14 K69 [{"BackgroundTransparency", "AutomaticSize", "BorderSizePixel"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K18 ["BackgroundTransparency"]
  GETIMPORT R15 K71 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K17 ["AutomaticSize"]
  LOADN R15 0
  SETTABLEKS R15 R14 K19 ["BorderSizePixel"]
  NEWTABLE R15 0 4
  MOVE R16 R4
  LOADK R17 K35 ["::UIListLayout"]
  DUPTABLE R18 K72 [{"ItemLineAlignment", "Padding"}]
  GETIMPORT R19 K41 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R19 R18 K36 ["ItemLineAlignment"]
  GETIMPORT R19 K33 [UDim.new]
  LOADN R20 0
  GETTABLEKS R21 R1 K34 ["paddingSmall"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K38 ["Padding"]
  CALL R16 2 1
  MOVE R17 R4
  LOADK R18 K73 ["> .DialogButton"]
  DUPTABLE R19 K75 [{"Size", "AutomaticSize", "Font", "TextSize"}]
  GETIMPORT R20 K59 [UDim2.fromOffset]
  GETTABLEKS R21 R1 K24 ["widgetHeaderLineHeight"]
  GETTABLEKS R22 R1 K24 ["widgetHeaderLineHeight"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K16 ["Size"]
  GETIMPORT R20 K77 [Enum.AutomaticSize.X]
  SETTABLEKS R20 R19 K17 ["AutomaticSize"]
  GETTABLEKS R20 R1 K78 ["defaultFontBold"]
  SETTABLEKS R20 R19 K74 ["Font"]
  GETTABLEKS R21 R1 K54 ["confirmationDialogTextSize"]
  GETTABLEKS R23 R3 K55 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R23 0 1
  JUMPIFNOT R23 [+3]
  GETTABLEKS R22 R1 K56 ["defaultFontScale"]
  JUMP [+1]
  LOADK R22 K57 [1.257]
  MUL R20 R21 R22
  SETTABLEKS R20 R19 K48 ["TextSize"]
  NEWTABLE R20 0 3
  MOVE R21 R4
  LOADK R22 K79 ["::UICorner"]
  DUPTABLE R23 K81 [{"CornerRadius"}]
  GETIMPORT R24 K33 [UDim.new]
  LOADN R25 0
  GETTABLEKS R26 R1 K82 ["radiusMedium"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K80 ["CornerRadius"]
  CALL R21 2 1
  MOVE R22 R4
  LOADK R23 K63 ["::UISizeConstraint"]
  DUPTABLE R24 K65 [{"MinSize"}]
  GETIMPORT R25 K67 [Vector2.new]
  GETTABLEKS R26 R1 K24 ["widgetHeaderLineHeight"]
  GETTABLEKS R27 R1 K24 ["widgetHeaderLineHeight"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K64 ["MinSize"]
  CALL R22 2 1
  MOVE R23 R4
  LOADK R24 K28 ["::UIPadding"]
  DUPTABLE R25 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R26 K33 [UDim.new]
  LOADN R27 0
  GETTABLEKS R28 R1 K34 ["paddingSmall"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K61 ["PaddingLeft"]
  GETIMPORT R26 K33 [UDim.new]
  LOADN R27 0
  GETTABLEKS R28 R1 K34 ["paddingSmall"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K83 ["PaddingRight"]
  GETIMPORT R26 K33 [UDim.new]
  LOADN R27 0
  GETTABLEKS R28 R1 K34 ["paddingSmall"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K29 ["PaddingTop"]
  GETIMPORT R26 K33 [UDim.new]
  LOADN R27 0
  GETTABLEKS R28 R1 K34 ["paddingSmall"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K30 ["PaddingBottom"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R4
  LOADK R19 K85 ["> .YesButton"]
  DUPTABLE R20 K87 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R21 K88 ["$ColorActionEmphasisBackground"]
  SETTABLEKS R21 R20 K86 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K18 ["BackgroundTransparency"]
  LOADK R21 K89 ["$ColorActionEmphasisForeground"]
  SETTABLEKS R21 R20 K46 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R4
  LOADK R20 K90 ["> .NoButton"]
  DUPTABLE R21 K87 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R22 K91 ["$ColorActionStandardBackground"]
  SETTABLEKS R22 R21 K86 ["BackgroundColor3"]
  LOADK R22 K92 ["$ColorActionStandardBackgroundTransparency"]
  SETTABLEKS R22 R21 K18 ["BackgroundTransparency"]
  LOADK R22 K93 ["$ColorActionStandardForeground"]
  SETTABLEKS R22 R21 K46 ["TextColor3"]
  CALL R19 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
