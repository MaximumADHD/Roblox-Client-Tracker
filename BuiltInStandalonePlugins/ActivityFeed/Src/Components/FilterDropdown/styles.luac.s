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
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["ActivityHistoryCompactUI"]
  NAMECALL R4 R4 K15 ["GetFastFlag"]
  CALL R4 2 1
  GETTABLEKS R5 R2 K16 ["defaultPadding"]
  GETTABLEKS R6 R2 K17 ["smallPadding"]
  GETTABLEKS R7 R2 K18 ["normalFontSize"]
  JUMPIFNOT R4 [+2]
  ADDK R8 R7 K19 [2]
  JUMPIF R8 [+2]
  MULK R9 R5 K19 [2]
  ADD R8 R7 R9
  GETTABLEKS R9 R2 K20 ["defaultIconSize"]
  GETTABLEKS R10 R2 K21 ["bubbleCornerRadius"]
  MOVE R11 R3
  LOADK R12 K22 [".Component-FilterDropdown"]
  DUPTABLE R13 K26 [{"BorderSizePixel", "BackgroundColor3", "BorderColor3"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K23 ["BorderSizePixel"]
  JUMPIFNOT R4 [+2]
  LOADK R14 K27 ["$FoundationColorsBackgroundPaper"]
  JUMP [+1]
  LOADK R14 K28 ["$BackgroundPaper"]
  SETTABLEKS R14 R13 K24 ["BackgroundColor3"]
  JUMPIFNOT R4 [+2]
  LOADK R14 K29 ["$FoundationColorsBackgroundDefault"]
  JUMP [+1]
  LOADK R14 K30 ["$BackgroundDefault"]
  SETTABLEKS R14 R13 K25 ["BorderColor3"]
  NEWTABLE R14 0 4
  MOVE R15 R3
  LOADK R16 K31 ["::UICorner"]
  DUPTABLE R17 K33 [{"CornerRadius"}]
  GETIMPORT R18 K36 [UDim.new]
  LOADN R19 0
  MOVE R20 R10
  CALL R18 2 1
  SETTABLEKS R18 R17 K32 ["CornerRadius"]
  CALL R15 2 1
  MOVE R16 R3
  LOADK R17 K37 ["::UIStroke"]
  DUPTABLE R18 K39 [{"Color"}]
  JUMPIFNOT R4 [+2]
  LOADK R19 K40 ["$FoundationColorsShift300"]
  JUMP [+1]
  LOADK R19 K41 ["$Divider"]
  SETTABLEKS R19 R18 K38 ["Color"]
  CALL R16 2 1
  MOVE R17 R3
  LOADK R18 K42 ["> #Content"]
  DUPTABLE R19 K44 [{"Size"}]
  GETIMPORT R20 K46 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  MOVE R24 R8
  CALL R20 4 1
  SETTABLEKS R20 R19 K43 ["Size"]
  NEWTABLE R20 0 3
  MOVE R21 R3
  LOADK R22 K47 ["::UIListLayout"]
  DUPTABLE R23 K49 [{"HorizontalFlex"}]
  GETIMPORT R24 K53 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R24 R23 K48 ["HorizontalFlex"]
  CALL R21 2 1
  MOVE R22 R3
  LOADK R23 K54 ["> #Selected"]
  DUPTABLE R24 K58 [{"TextColor3", "TextSize", "TextXAlignment"}]
  JUMPIFNOT R4 [+2]
  LOADK R25 K59 ["$FoundationColorsContentEmphasis"]
  JUMP [+1]
  LOADK R25 K60 ["$TextPrimary"]
  SETTABLEKS R25 R24 K55 ["TextColor3"]
  GETTABLEKS R25 R2 K18 ["normalFontSize"]
  SETTABLEKS R25 R24 K56 ["TextSize"]
  GETIMPORT R25 K62 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K57 ["TextXAlignment"]
  NEWTABLE R25 0 1
  MOVE R26 R3
  LOADK R27 K63 ["::UIPadding"]
  DUPTABLE R28 K68 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R29 K36 [UDim.new]
  LOADN R30 0
  MOVE R31 R5
  CALL R29 2 1
  SETTABLEKS R29 R28 K64 ["PaddingLeft"]
  GETIMPORT R29 K36 [UDim.new]
  LOADN R30 0
  JUMPIFNOT R4 [+2]
  LOADN R31 1
  JUMP [+1]
  MOVE R31 R5
  CALL R29 2 1
  SETTABLEKS R29 R28 K65 ["PaddingTop"]
  GETIMPORT R29 K36 [UDim.new]
  LOADN R30 0
  JUMPIFNOT R4 [+2]
  LOADN R31 2
  JUMP [+1]
  MOVE R31 R5
  CALL R29 2 1
  SETTABLEKS R29 R28 K66 ["PaddingBottom"]
  GETIMPORT R29 K36 [UDim.new]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K67 ["PaddingRight"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R3
  LOADK R24 K69 ["> #DropdownIconContainer"]
  DUPTABLE R25 K71 [{"Size", "AutomaticSize"}]
  GETIMPORT R26 K46 [UDim2.new]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K43 ["Size"]
  GETIMPORT R26 K73 [Enum.AutomaticSize.X]
  SETTABLEKS R26 R25 K70 ["AutomaticSize"]
  NEWTABLE R26 0 3
  MOVE R27 R3
  LOADK R28 K47 ["::UIListLayout"]
  DUPTABLE R29 K75 [{"VerticalAlignment"}]
  GETIMPORT R30 K77 [Enum.VerticalAlignment.Center]
  SETTABLEKS R30 R29 K74 ["VerticalAlignment"]
  CALL R27 2 1
  MOVE R28 R3
  LOADK R29 K63 ["::UIPadding"]
  DUPTABLE R30 K78 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R31 K36 [UDim.new]
  LOADN R32 0
  MOVE R33 R6
  CALL R31 2 1
  SETTABLEKS R31 R30 K64 ["PaddingLeft"]
  GETIMPORT R31 K36 [UDim.new]
  LOADN R32 0
  MOVE R33 R6
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["PaddingRight"]
  CALL R28 2 1
  MOVE R29 R3
  LOADK R30 K79 ["> #DropdownIcon"]
  DUPTABLE R31 K82 [{"Size", "BorderSizePixel", "BackgroundTransparency", "Image"}]
  GETIMPORT R32 K46 [UDim2.new]
  LOADN R33 0
  MOVE R34 R9
  LOADN R35 0
  MOVE R36 R9
  CALL R32 4 1
  SETTABLEKS R32 R31 K43 ["Size"]
  LOADN R32 0
  SETTABLEKS R32 R31 K23 ["BorderSizePixel"]
  LOADN R32 1
  SETTABLEKS R32 R31 K80 ["BackgroundTransparency"]
  LOADK R32 K83 ["$arrowdownicon"]
  SETTABLEKS R32 R31 K81 ["Image"]
  CALL R29 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R3
  LOADK R19 K84 [".ContentHovered"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R3
  LOADK R23 K37 ["::UIStroke"]
  DUPTABLE R24 K39 [{"Color"}]
  JUMPIFNOT R4 [+2]
  LOADK R25 K85 ["$FoundationColorsShift200"]
  JUMP [+1]
  LOADK R25 K86 ["$ActionHover"]
  SETTABLEKS R25 R24 K38 ["Color"]
  CALL R22 2 1
  MOVE R23 R3
  LOADK R24 K87 [">> #DropdownIconContainer"]
  DUPTABLE R25 K88 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R26 0
  SETTABLEKS R26 R25 K80 ["BackgroundTransparency"]
  JUMPIFNOT R4 [+2]
  LOADK R26 K85 ["$FoundationColorsShift200"]
  JUMP [+1]
  LOADK R26 K86 ["$ActionHover"]
  SETTABLEKS R26 R25 K24 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  RETURN R11 -1
