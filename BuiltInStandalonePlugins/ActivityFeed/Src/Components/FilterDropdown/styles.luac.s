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
  GETTABLEKS R4 R2 K12 ["defaultPadding"]
  GETTABLEKS R5 R2 K13 ["smallPadding"]
  GETTABLEKS R6 R2 K14 ["normalFontSize"]
  MULK R8 R4 K15 [2]
  ADD R7 R6 R8
  GETTABLEKS R8 R2 K16 ["defaultIconSize"]
  GETTABLEKS R9 R2 K17 ["bubbleCornerRadius"]
  MOVE R10 R3
  LOADK R11 K18 [".Component-FilterDropdown"]
  DUPTABLE R12 K22 [{"BorderSizePixel", "BackgroundColor3", "BorderColor3"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K19 ["BorderSizePixel"]
  LOADK R13 K23 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K20 ["BackgroundColor3"]
  LOADK R13 K24 ["$BackgroundDefault"]
  SETTABLEKS R13 R12 K21 ["BorderColor3"]
  NEWTABLE R13 0 4
  MOVE R14 R3
  LOADK R15 K25 ["::UICorner"]
  DUPTABLE R16 K27 [{"CornerRadius"}]
  GETIMPORT R17 K30 [UDim.new]
  LOADN R18 0
  MOVE R19 R9
  CALL R17 2 1
  SETTABLEKS R17 R16 K26 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R3
  LOADK R16 K31 ["::UIStroke"]
  DUPTABLE R17 K33 [{"Color"}]
  LOADK R18 K34 ["$Divider"]
  SETTABLEKS R18 R17 K32 ["Color"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K35 ["> #Content"]
  DUPTABLE R18 K37 [{"Size"}]
  GETIMPORT R19 K39 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R7
  CALL R19 4 1
  SETTABLEKS R19 R18 K36 ["Size"]
  NEWTABLE R19 0 3
  MOVE R20 R3
  LOADK R21 K40 ["::UIListLayout"]
  DUPTABLE R22 K42 [{"HorizontalFlex"}]
  GETIMPORT R23 K46 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R23 R22 K41 ["HorizontalFlex"]
  CALL R20 2 1
  MOVE R21 R3
  LOADK R22 K47 ["> #Selected"]
  DUPTABLE R23 K51 [{"TextColor3", "TextSize", "TextXAlignment"}]
  LOADK R24 K52 ["$TextPrimary"]
  SETTABLEKS R24 R23 K48 ["TextColor3"]
  GETTABLEKS R24 R2 K14 ["normalFontSize"]
  SETTABLEKS R24 R23 K49 ["TextSize"]
  GETIMPORT R24 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K50 ["TextXAlignment"]
  NEWTABLE R24 0 1
  MOVE R25 R3
  LOADK R26 K55 ["::UIPadding"]
  DUPTABLE R27 K60 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R28 K30 [UDim.new]
  LOADN R29 0
  MOVE R30 R4
  CALL R28 2 1
  SETTABLEKS R28 R27 K56 ["PaddingLeft"]
  GETIMPORT R28 K30 [UDim.new]
  LOADN R29 0
  MOVE R30 R4
  CALL R28 2 1
  SETTABLEKS R28 R27 K57 ["PaddingTop"]
  GETIMPORT R28 K30 [UDim.new]
  LOADN R29 0
  MOVE R30 R4
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["PaddingBottom"]
  GETIMPORT R28 K30 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K59 ["PaddingRight"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R3
  LOADK R23 K61 ["> #DropdownIconContainer"]
  DUPTABLE R24 K63 [{"Size", "AutomaticSize"}]
  GETIMPORT R25 K39 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K36 ["Size"]
  GETIMPORT R25 K65 [Enum.AutomaticSize.X]
  SETTABLEKS R25 R24 K62 ["AutomaticSize"]
  NEWTABLE R25 0 3
  MOVE R26 R3
  LOADK R27 K40 ["::UIListLayout"]
  DUPTABLE R28 K67 [{"VerticalAlignment"}]
  GETIMPORT R29 K69 [Enum.VerticalAlignment.Center]
  SETTABLEKS R29 R28 K66 ["VerticalAlignment"]
  CALL R26 2 1
  MOVE R27 R3
  LOADK R28 K55 ["::UIPadding"]
  DUPTABLE R29 K70 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R30 K30 [UDim.new]
  LOADN R31 0
  MOVE R32 R5
  CALL R30 2 1
  SETTABLEKS R30 R29 K56 ["PaddingLeft"]
  GETIMPORT R30 K30 [UDim.new]
  LOADN R31 0
  MOVE R32 R5
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["PaddingRight"]
  CALL R27 2 1
  MOVE R28 R3
  LOADK R29 K71 ["> #DropdownIcon"]
  DUPTABLE R30 K74 [{"Size", "BorderSizePixel", "BackgroundTransparency", "Image"}]
  GETIMPORT R31 K39 [UDim2.new]
  LOADN R32 0
  MOVE R33 R8
  LOADN R34 0
  MOVE R35 R8
  CALL R31 4 1
  SETTABLEKS R31 R30 K36 ["Size"]
  LOADN R31 0
  SETTABLEKS R31 R30 K19 ["BorderSizePixel"]
  LOADN R31 1
  SETTABLEKS R31 R30 K72 ["BackgroundTransparency"]
  LOADK R31 K75 ["$arrowdownicon"]
  SETTABLEKS R31 R30 K73 ["Image"]
  CALL R28 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R3
  LOADK R18 K76 [".ContentHovered"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R3
  LOADK R22 K31 ["::UIStroke"]
  DUPTABLE R23 K33 [{"Color"}]
  LOADK R24 K77 ["$ActionHover"]
  SETTABLEKS R24 R23 K32 ["Color"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K78 [">> #DropdownIconContainer"]
  DUPTABLE R24 K79 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R25 0
  SETTABLEKS R25 R24 K72 ["BackgroundTransparency"]
  LOADK R25 K77 ["$ActionHover"]
  SETTABLEKS R25 R24 K20 ["BackgroundColor3"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  RETURN R10 -1
