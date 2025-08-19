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
  GETTABLEKS R4 R2 K11 ["Styling"]
  GETTABLEKS R3 R4 K12 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K13 [">> .FindReplaceAll-ReplaceAllConfirmationDialog"]
  DUPTABLE R6 K18 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R7 K21 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R1 K22 ["widgetHeaderLineHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  GETIMPORT R7 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K15 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K16 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K17 ["BorderSizePixel"]
  NEWTABLE R7 0 4
  MOVE R8 R3
  LOADK R9 K26 ["::UIPadding"]
  DUPTABLE R10 K29 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R11 K31 [UDim.new]
  LOADN R12 0
  GETTABLEKS R13 R1 K32 ["paddingSmall"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["PaddingTop"]
  GETIMPORT R11 K31 [UDim.new]
  LOADN R12 0
  GETTABLEKS R13 R1 K32 ["paddingSmall"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["PaddingBottom"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K33 ["::UIListLayout"]
  DUPTABLE R11 K37 [{"ItemLineAlignment", "HorizontalFlex", "Padding"}]
  GETIMPORT R12 K39 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R12 R11 K34 ["ItemLineAlignment"]
  GETIMPORT R12 K42 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R12 R11 K35 ["HorizontalFlex"]
  GETIMPORT R12 K31 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R1 K32 ["paddingSmall"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K36 ["Padding"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K43 ["> .ReplaceAllDialogText"]
  DUPTABLE R12 K48 [{"BackgroundTransparency", "TextColor3", "TextXAlignment", "TextSize", "TextWrap", "AutomaticSize", "Size", "BorderSizePixel"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K16 ["BackgroundTransparency"]
  LOADK R13 K49 ["$ColorContentDefault"]
  SETTABLEKS R13 R12 K44 ["TextColor3"]
  GETIMPORT R13 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K45 ["TextXAlignment"]
  GETTABLEKS R14 R1 K53 ["confirmationDialogTextSize"]
  MULK R13 R14 K52 [1.257]
  SETTABLEKS R13 R12 K46 ["TextSize"]
  LOADB R13 1
  SETTABLEKS R13 R12 K47 ["TextWrap"]
  GETIMPORT R13 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K15 ["AutomaticSize"]
  GETIMPORT R13 K55 [UDim2.fromOffset]
  GETTABLEKS R14 R1 K56 ["replaceAllConfirmationLabelWidth"]
  GETTABLEKS R15 R1 K22 ["widgetHeaderLineHeight"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Size"]
  LOADN R13 0
  SETTABLEKS R13 R12 K17 ["BorderSizePixel"]
  NEWTABLE R13 0 2
  MOVE R14 R3
  LOADK R15 K26 ["::UIPadding"]
  DUPTABLE R16 K58 [{"PaddingLeft"}]
  GETIMPORT R17 K31 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R1 K32 ["paddingSmall"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["PaddingLeft"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K59 ["::UISizeConstraint"]
  DUPTABLE R17 K61 [{"MinSize"}]
  GETIMPORT R18 K63 [Vector2.new]
  GETTABLEKS R19 R1 K56 ["replaceAllConfirmationLabelWidth"]
  GETTABLEKS R20 R1 K22 ["widgetHeaderLineHeight"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K60 ["MinSize"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R3
  LOADK R12 K64 ["> .DialogButtonFrame"]
  DUPTABLE R13 K65 [{"BackgroundTransparency", "AutomaticSize", "BorderSizePixel"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K16 ["BackgroundTransparency"]
  GETIMPORT R14 K67 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K15 ["AutomaticSize"]
  LOADN R14 0
  SETTABLEKS R14 R13 K17 ["BorderSizePixel"]
  NEWTABLE R14 0 4
  MOVE R15 R3
  LOADK R16 K33 ["::UIListLayout"]
  DUPTABLE R17 K68 [{"ItemLineAlignment", "Padding"}]
  GETIMPORT R18 K39 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R18 R17 K34 ["ItemLineAlignment"]
  GETIMPORT R18 K31 [UDim.new]
  LOADN R19 0
  GETTABLEKS R20 R1 K32 ["paddingSmall"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K36 ["Padding"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K69 ["> .DialogButton"]
  DUPTABLE R18 K71 [{"Size", "AutomaticSize", "Font", "TextSize"}]
  GETIMPORT R19 K55 [UDim2.fromOffset]
  GETTABLEKS R20 R1 K22 ["widgetHeaderLineHeight"]
  GETTABLEKS R21 R1 K22 ["widgetHeaderLineHeight"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETIMPORT R19 K73 [Enum.AutomaticSize.X]
  SETTABLEKS R19 R18 K15 ["AutomaticSize"]
  GETTABLEKS R19 R1 K74 ["defaultFontBold"]
  SETTABLEKS R19 R18 K70 ["Font"]
  GETTABLEKS R20 R1 K53 ["confirmationDialogTextSize"]
  MULK R19 R20 K52 [1.257]
  SETTABLEKS R19 R18 K46 ["TextSize"]
  NEWTABLE R19 0 3
  MOVE R20 R3
  LOADK R21 K75 ["::UICorner"]
  DUPTABLE R22 K77 [{"CornerRadius"}]
  GETIMPORT R23 K31 [UDim.new]
  LOADN R24 0
  GETTABLEKS R25 R1 K78 ["radiusMedium"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K76 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K59 ["::UISizeConstraint"]
  DUPTABLE R23 K61 [{"MinSize"}]
  GETIMPORT R24 K55 [UDim2.fromOffset]
  GETTABLEKS R25 R1 K22 ["widgetHeaderLineHeight"]
  GETTABLEKS R26 R1 K22 ["widgetHeaderLineHeight"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K60 ["MinSize"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K26 ["::UIPadding"]
  DUPTABLE R24 K80 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R25 K31 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R1 K32 ["paddingSmall"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K57 ["PaddingLeft"]
  GETIMPORT R25 K31 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R1 K32 ["paddingSmall"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K79 ["PaddingRight"]
  GETIMPORT R25 K31 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R1 K32 ["paddingSmall"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K27 ["PaddingTop"]
  GETIMPORT R25 K31 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R1 K32 ["paddingSmall"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K28 ["PaddingBottom"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R3
  LOADK R18 K81 ["> .YesButton"]
  DUPTABLE R19 K83 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R20 K84 ["$ColorActionEmphasisBackground"]
  SETTABLEKS R20 R19 K82 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K16 ["BackgroundTransparency"]
  LOADK R20 K85 ["$ColorActionEmphasisForeground"]
  SETTABLEKS R20 R19 K44 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R3
  LOADK R19 K86 ["> .NoButton"]
  DUPTABLE R20 K83 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
  LOADK R21 K87 ["$ColorActionStandardBackground"]
  SETTABLEKS R21 R20 K82 ["BackgroundColor3"]
  LOADK R21 K88 ["$ColorActionStandardBackgroundTransparency"]
  SETTABLEKS R21 R20 K16 ["BackgroundTransparency"]
  LOADK R21 K89 ["$ColorActionStandardForeground"]
  SETTABLEKS R21 R20 K44 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
